CREATE DATABASE bamazon;

USE bamazon;


CREATE TABLE IF NOT EXISTS `products` (
  id INT AUTO_INCREMENT,
  product_name VARCHAR(255),
  department_name VARCHAR(255),
  price INT,
  stock_quantity INT,
  PRIMARY KEY (id)
);  


INSERT INTO `products`(product_name, department_name, price, stock_quantity) VALUES
("tshirt", "clothing", 25, 100);
INSERT INTO `products`(product_name, department_name, price, stock_quantity) VALUES
("hat", "clothing", 30, 50);
INSERT INTO `products`(product_name, department_name, price, stock_quantity) VALUES
("jordans", "shoes", 150, 200);
INSERT INTO `products`(product_name, department_name, price, stock_quantity) VALUES
("iphone", "phones", 900, 50);
INSERT INTO `products`(product_name, department_name, price, stock_quantity) VALUES
("samsung", "phones", 750, 75);
INSERT INTO `products`(product_name, department_name, price, stock_quantity) VALUES
("laptop", "computers", 1500, 50);
INSERT INTO `products`(product_name, department_name, price, stock_quantity) VALUES
("ipad", "computers", 400, 15);
INSERT INTO `products`(product_name, department_name, price, stock_quantity) VALUES
("igfollowers", "computers", 3000, 20);
INSERT INTO `products`(product_name, department_name, price, stock_quantity) VALUES
("basketball", "sports", 60, 100);
INSERT INTO `products`(product_name, department_name, price, stock_quantity) VALUES
("baseball", "sports", 20, 400);

