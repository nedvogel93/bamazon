CREATE DATABASE bamazon_db;

USE bamazon_db;


CREATE TABLE allTheProducts (
  id INT NOT NULL AUTO_INCREMENT,
  item_name VARCHAR(100) NULL,
  item_department VARCHAR(100) NULL,
  price DECIMAL(10,2) NULL,
  quantity INT NULL,
  PRIMARY KEY (id)
);

INSERT INTO allTheProducts (item_name, item_department, price, quantity)
VALUES ("bread", "food", 2.50, 100);
INSERT INTO allTheProducts (item_name, item_department, price, quantity)
VALUES ("Gibson Les Paul", "Instrument", 999.99, 3);
INSERT INTO allTheProducts (item_name, item_department, price, quantity)
VALUES ("Microwave", "Appliances", 35.68, 31);
INSERT INTO allTheProducts (item_name, item_department, price, quantity)
VALUES ("Monkey", "Pet", 10000.00, 1);
INSERT INTO allTheProducts (item_name, item_department, price, quantity)
VALUES ("Katana", "Weapon", 450.25, 2);
INSERT INTO allTheProducts (item_name, item_department, price, quantity)
VALUES ("Markers", "Art Supplies", 10.00, 100);
INSERT INTO allTheProducts (item_name, item_department, price, quantity)
VALUES ("Motorcycle", "Transportation", 40,000.00, 20);
INSERT INTO allTheProducts (item_name, item_department, price, quantity)
VALUES ("Carrots", "food", 4.99, 26);
INSERT INTO allTheProducts (item_name, item_department, price, quantity)
VALUES ("Mace", "Weapons", 315.00, 25);
INSERT INTO allTheProducts (item_name, item_department, price, quantity)
VALUES ("Vampire Bat", "Pet", 39.99, 60);
INSERT INTO allTheProducts (item_name, item_department, price, quantity)
VALUES ("Oil Paint", "Art Supplies", 50.00, 100);
INSERT INTO allTheProducts (item_name, item_department, price, quantity)
VALUES ("Coffee", "food", 2.50, 100);
INSERT INTO allTheProducts (item_name, item_department, price, quantity)


VALUES ("Phantom Menace VHS", "Home Entertainment", 32,000, 2);
INSERT INTO allTheProducts (item_name, item_department, price, quantity)
VALUES ("Hermit Crab", "Pet", 12.35, 7);
INSERT INTO allTheProducts (item_name, item_department, price, quantity)
VALUES ("Tireswing", "Toy", 75.00, 2);
INSERT INTO allTheProducts (item_name, item_department, price, quantity)
VALUES ("Wrench", "Tool", 9.00, 3);

SELECT id, item_name, price FROM allTheProducts; 
