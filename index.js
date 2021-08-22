var express = require("express");
var connection = require("express-myconnection");
const http = require("http");
var app = express();
var mysql = require("mysql");
var bodyParser = require("body-parser");
var cors = require("cors");

app.use(cors());
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));

app.use(
  connection(
    mysql,
    {
      host: "localhost",
      user: "root",
      password: "root",
      port: 3306, //port mysql
      database: "bookstoresystem",
    },
    "request"
  ) //or single
);

app.get("/getbookdata", (req, res) => {
  req.getConnection((err, connection) => {
    connection.query("select * from bookdata", (err, raws) => {
      if (err) {
        console.log(err);
      } else if (raws.length >= 0) {
        res.status(200).send(raws);
      }
    });
  });
});

app.get("/getcategorydata", (req, res) => {
  req.getConnection((err, connection) => {
    connection.query("select * from category", (err, raws) => {
      if (err) {
        console.log(err);
      } else if (raws.length >= 0) {
        res.status(200).send(raws);
      }
    });
  });
});

app.post("/login", (req, res) => {
  var username = req.body.username;
  var password = req.body.password;
  req.getConnection((err, connection) => {
    connection.query(
      "select * from userdata where username = ?",
      [username],
      (err, raws) => {
        if (err) {
          console.log(err);
          res.status(200).send({
            IsValid: false,
            Message: "There is some error with server at the moment",
          });
        } else if (raws.length > 0) {
          if (password === raws[0].Password) {
            res.status(200).send({
              IsValid: true,
              Message: "User exists in database",
              UserID: raws[0].UserID,
              IsAdmin: raws[0].Manager.lastIndexOf(1) != -1,
              Type: raws[0].Type,
              FullName: raws[0].FullName,
            });
          } else {
            res.status(200).send({
              IsValid: false,
              Message: "Wrong password",
            });
          }
        } else {
          res.status(200).send({
            IsValid: false,
            Message: "User does not exists",
          });
        }
      }
    );
  });
});

app.post("/placeorder", (req, res) => {
  var userid = req.body.userid;
  var total = req.body.total;
  req.getConnection((err, connection) => {
    connection.query(
      "insert into orders (UserID) values (?)",
      [userid],
      (err, raws) => {
        if (err) {
          console.log(err);
        } else if (raws.affectedRows > 0) {
          var id = raws.insertId;
          for (var i = 1; i <= total; i++) {
            var ISBN = req.body["item" + i];
            var quantity = req.body["item" + i + "quantity"];
            connection.query(
              "insert into orderitem (OrderID,ISBN,Quantity) values(?,?,?)",
              [id, ISBN, quantity],
              (err, raws) => {
                if (err) {
                  console.log(err);
                  res.status(200).send({ IsUpdated: "no" });
                } else if (raws.affectedRows == 0) {
                  console.log("Insertion error in order item table");
                  res.status(200).send({ IsUpdated: "no" });
                }
              }
            );
          }
          res.status(200).send({ IsUpdated: "yes", OrderID: id });
        } else {
          res.status(200).send({ IsUpdated: "no" });
        }
      }
    );
  });
});

app.get("/sample", (req, res) => {
  res.status(200).send({ valid: true });
});
var con = app.listen(3000, "localhost", () => {
  console.log(con.address().port + " , ");
  console.log(con.address().address);
  console.log("Server listening now on port : " + con.address().port);
});
