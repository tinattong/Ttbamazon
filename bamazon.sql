DROP DATABASE IF EXISTS bamazon;
CREATE DATABASE bamazon;
use bamazon;
create table products (
    item_id INT NOT NULL AUTO_INCREMENT,
    product_name VARCHAR(100) NULL,
    department_name VARCHAR(100) NULL,
    price DECIMAL(10,2) NULL,
    stock_quantity INT NULL,
    primary key (item_id)
);
INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("science book", "bookstore", 25.49, 200);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("vitamin C", "pharmarcy", 8.99, 300);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("eye drop", "pharmarcy", 10.98, 20);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("ipad", "electronic", 495.99, 50);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("iphone", "electronic", 599.99, 200);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("tv", "electronic", 288.89, 400);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("DVD", "entertainment" , 15.99, 100);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("staples", "office", 8.49, 150);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("notebook", "office", 2.69, 1000);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("towels", "home", 18.99, 90);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("body wash", "home", 12.99, 300);