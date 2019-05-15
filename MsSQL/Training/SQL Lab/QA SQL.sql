USE tescoDB;

CREATE TABLE customer (
customer_id varchar(100),
customer_name varchar(100) NOT NULL,
address varchar(100) NOT NULL,
primary key(customer_id),
email varchar(100) NOT NULL);

CREATE TABLE customer_order (
order_id int NOT NULL AUTO_INCREMENT,
customer_id varchar(100),
data_placed date,
PRIMARY KEY(order_id),
FOREIGN KEY(customer_id) REFERENCES customer (customer_id)
);

ALTER TABLE customer
ADD password varchar(100);

ALTER TABLE customer
ADD age int;

UPDATE customer
SET email = REPLACE(email, "@Email","@Gmail");

UPDATE customer
SET password = "***"
WHERE customer_id = 1;

INSERT INTO customer
VALUES (0002, "Homer Simpson", "Springfield", "HS@Email.com"),
(0003, "Bart Simpson", "Springfield", "BS@Email.com");

INSERT INTO customer
VALUES (0004, "Homer Simpson", "Springfield", "HS@Email.com","***"),
(0005, "Bart Simpson", "Springfield", "BS@Email.com","*****");

CREATE TABLE product (
product_id varchar(100),
product_name varchar(100),
stock_count varchar(100) NOT NULL,
price decimal(2) NOT NULL,
primary key (product_id));

CREATE TABLE orderline (
order_id int NOT NULL AUTO_INCREMENT,
product_id varchar(100),
FOREIGN KEY(order_id) REFERENCES customer_order (order_id),
FOREIGN KEY(product_id) REFERENCES product (product_id)
);

ALTER TABLE orderline
ADD quantity_ordered date;
