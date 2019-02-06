var mysql = require("mysql");
var inquirer = require("inquirer");
var connection = mysql.createConnection({
    host: "localhost",
    port: 3306, 
    user: "root",
    password: null,
    database: "bamazon_db"

});

connection.connect(function(err){
    if(err) throw err;
})

function getAll() {
    connection.query("SELECT * FROM products", function(err, res) {
        if(err) throw err;
        for (var i = 0; i < res.length; i++) {
            console.log(res[i].id + " | " + res[i].name + " | " + "$" + res[i].price + " | ")
        }
        console.log("--------------------------------");
        prompt();

    });
}

getAll();

function prompt() {
    inquirer.prompt ([
        {
        type: "input",
        name: "id",
        message: "What is the id of the product you would like to buy?",
    }, {
        type: "input",
        name: "quantity",
        message: "How many would you like to purchase?",
    }
    
    ]).then(function(purchase) {
        connection.query("SELECT * FROM products WHERE id=?", purchase.id, function(err, res) {
            for (var i=0; i < res.length; i++) {
                if (purchase.quantity > res[i].quantity) {
                    console.log("Sorry not enough in stock");
                }
                else {
                    console.log("Total: $" + res[i].price * purchase.quantity);
                     var update = (res[i].quantity - purchase.quantity);
                     console.log("Remaining Stock: " + update);
                }

            }
        })
    })
}
