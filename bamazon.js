//require modules
var mysql = require("mysql");
var inquirer = require("inquirer");

// create the connection information for the sql database
var connection = mysql.createConnection({
  host: "localhost",

  // Your port; if not 3306
  port: 8889,

  // Your username
  user: "root",

  // Your password
  password: "root",
  database: "bamazon_DB"
});
var rezzults=[]
connection.connect(function(err) {
    if (err) throw err;
    console.log("connected as id " + connection.threadId + "\n");
   
  });
  
  function startBamazon() {
    // query the database for all items being auctioned
    connection.query("SELECT id, item_name, price FROM allTheProducts;", function(err, results) {
   //console.log(JSON.stringify(results));
    rezzults.push(JSON.stringify(results));
   console.log(rezzults)
   
  
  })};
  
  function getInput(){
    inquirer
      .prompt([
          {
              name: "item",
              type: "input",
              message: "What is the id of the product you would like? "

          },
          {
              name: "quantity",
              type: "input",

          }
      ]).then(function(input){
        var item = input.item;
        var quantity = input.quantity;
        var getInfo = "SELECT * FROM allTheProducts WHERE ?"; 
      
        connection.query(getInfo, {id: item}, function(err, results) {
          if (err) throw err;
    
          // If the user has selected an invalid item ID, data attay will be empty
          // console.log('data = ' + JSON.stringify(data));
    
          if (results.length === 0) {
            console.log('ERROR: Invalid Item ID. Please select a valid Item ID.');
            startBamazon();
    
          } else {
            var productData = results[0];
    
            // console.log('productData = ' + JSON.stringify(productData));
            // console.log('productData.stock_quantity = ' + productData.stock_quantity);
    
            // If the quantity requested by the user is in stock
            if (quantity <= productData.quantity) {
              console.log(' Placing order!');
              console.log('Your oder has been placed! Your total is $' + productData.price * quantity);
              // Construct the updating query string
              var updateInventory = 'UPDATE products SET quantity = ' + (productData.quantity - quantity) + ' WHERE id = ' + item;
              // console.log('updateQueryStr = ' + updateQueryStr);
    
           
    
             
             // End the database connection
                connection.end();
            
            } else {
              console.log('Sorry, there is not enough product in stock, your order can not be placed as is.');
              console.log('Please modify your order.');
              console.log("\n---------------------------------------------------------------------\n");
    
              runBamazon();
            }
          }
        })
      })
    }
    function runBamazon() {
      // console.log('___ENTER runBamazon___');
    
      // Display the available inventory
      startBamazon();
      getInput();
    }
    
    // Run the application logic
    runBamazon();  
    
