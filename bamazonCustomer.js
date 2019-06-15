var mysql = require("mysql");
var inquirer = require("inquirer");

var connection = mysql.createConnection({
  host: "localhost",

  port: 3306,

  // Your username
  user: "root",

  // Your password
  password: "sakog123",
  database: "bamazon",
});

connection.connect(function(err) {
  if (err) throw err;
  runSearch();
});

function runSearch() {
  inquirer
    .prompt({
      name: "id",
      type: "input",
      message: "What is the ID of the product you want?",
    })
    .then(function(answer) {
      var query = "SELECT product_name FROM products WHERE ?";
      connection.query(query, { id: answer.id }, function(err, res) {
        {
          console.log("Product Chosen: " + res[0].product_name);
        }
      });
      amount();
    });
}
function amount() {
  inquirer
    .prompt({
      name: "units",
      type: "input",
      message: "How many of this product would you like?",
    })
    .then(function(answer) {
      console.log("Units Chosen: " + answer.units);
    });
}
