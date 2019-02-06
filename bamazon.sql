CREATE DATABASE bamazon_db;

USE bamazon_db;

CREATE TABLE products (
	id INT NOT NULL AUTO_INCREMENT,
	name VARCHAR(45) NULL,
	department VARCHAR(45) NULL,
	price DECIMAL(10,2) NULL,
	quantity INT NULL,
    primary key (id)
    
);


INSERT INTO products (name, department, price, quantity)
VALUES ("jump rope", "fitness", 17.50, 20);

INSERT INTO products (name, department, price, quantity)
VALUES ("dip belt", "fitness", 49.99, 10);

INSERT INTO products (name, department, price, quantity)
VALUES ("Hydro Flask", "fitness", 44.95, 100);

INSERT INTO products (name, department, price, quantity)
VALUES ("yoga mat", "fitness", 29.95, 30);

INSERT INTO products (name, department, price, quantity)
VALUES ("shaker bottle", "fitness", 15.75, 200);

INSERT INTO products (name, department, price, quantity)
VALUES ("Yamaha HS8", "audio", 999.99, 100);

INSERT INTO products (name, department, price, quantity)
VALUES ("Ableton Push Pad", "Electronics", 750.00, 20);

INSERT INTO products (name, department, price, quantity)
VALUES ("Macbook", "Electronics", 1699.99, 1);

INSERT INTO products (name, department, price, quantity)
VALUES ("Pioneer CDJ ", "Electronics", 999.99, 100);

INSERT INTO products (name, department, price, quantity)
VALUES ("USB Mic", "Electronics", 129.99, 10);

SELECT * FROM products; 

DESCRIBE products;

show tables;