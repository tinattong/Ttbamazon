var inquirer = require('inquirer');
var mysql = require("mysql");
const cTable = require('console.table');

var connection = mysql.createConnection({
  host: "localhost",
  port: 3306,
  user: "root",
  password: "",
  database: "bamazon"
});

connection.connect(function(err) {
  if (err) throw err;
  runSearch();
});

function runSearch() {
    connection.query("SELECT * FROM products", function(err, res) {
    if (err) throw err;
    console.table(res);
    promptUserPurchase();
    //connection.end();
  });
}

function promptUserPurchase() {
    inquirer.prompt([
    {
      type: 'input',
      name: 'id',
      message: 'Please enter the Item ID which you would like to purchase.'

    },
    {
      type: 'input',
      name: 'quantity',
      message: 'How many units of the product you would like to buy?'
    }
  ])
  .then(function(answer) {
    console.log("The Item ID you selected is " , answer.id);
    console.log("Your selected quantity:  " , answer.quantity);
    connection.query("SELECT item_id, product_name, department_name, price FROM products",[answer.item_id], function(error, result, fields) {
                    if (error) {
                      console.log(error);
                    } 
                    if (answer.item_id >11) {
                      console.log("Item not for sale, please select item number from table");
                      askQuestions();
                    }else {
                      console.table(result);
                    }
    })
  })
};


