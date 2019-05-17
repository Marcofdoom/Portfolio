describe customer;

-- Limit
select * from customer
order by address
limit 5

select * from customer;

select distinct * from customer;

select distinct * from customer
where city = "Manchester";

select distinct city from customer;

select * from customer where age >25;

ALTER TABLE customer
MODIFY COLUMN customer_id INT auto_increment;

INSERT INTO customer
VALUES (0007, "Moe", "Glasgow", "moe@Email.com","***",51,"Glasgow"),
(0006, "Barney", "liverpool", "barney@Email.com","*****",42,"liverpool");

select * from customer
where city = "Liverpool" OR city = "Birmingham";

select * from customer
where city in ("liverpool", "Birmingham");

select * from customer
where customer_name like '% s%';

select * from customer where not age = 10;

select * from customer where age <> 10;


Aggregate Functions
select customer_id, count(*)

select sum(age) from customer;

select min(age) from customer;

select max(age) from customer;

select avg(age) from customer;

select customer_id, count(*)
from customer
group by customer_id;

Nested Query
select distinct city
from customer
where age >=20;

select * from customer
where city in ("liverpool", "Birmingham");

Nested Query
select * from customer
where city in (
select distinct city
from customer
where age >=20);

insert into customer_order (customer_id, data_placed)
values ("2","2019-11-01"),("2",2019/11/01);

JOIN
select * from customer AS t1
JOIN customer_order AS t2
ON t1.customer_id = t2.customer_id;

select * from customer AS t1
LEFT JOIN customer_order AS t2
ON t1.customer_id = t2.customer_id;

Views
Create View viewname AS
Select customer_id, age
FROM customer
Where age >20;

select * from viewname;

drop view viewname;

INSERT INTO product
VALUES (1, "car", 16, "20"),
(2, "truck", 21, "30"),
(3, "van", 3, "40"),
(4, "train", 4, "50");

ALTER TABLE product MODIFY stock_count int;

create view productview as


NESTED QUERY

select * 


select product_name
from product
where stock_count <5;




View
create view productview (c1, result) as
select product_name, (stock_count * price) as result
from product
where stock_count <5;

create view productview (product_name ,result) as
select product_name, (stock_count * price)
from product
where stock_count < threshold;

MODULE 2
create database nbgardens
use nbgardens;

create table product (
product_id int auto_increment,
stock_count int,
primary key(product_id)
);

create table customer (
customer_id int auto_increment,
first_name varchar (100),
last_name varchar (100),
address varchar (100),
primary key (customer_id)
);

create table orders (
order_id int auto_increment,
status varchar (50),
primary key (order_id)
);

create table supplier (
supplier_id int auto_increment,
primary key (supplier_id)describe
);

create table ordersproductbridge (
order_id int,
product_id int,
foreign key(order_id) REFERENCES orders(order_id),
foreign key(product_id) REFERENCES product(product_id)
);

alter table customer
add column city varchar(100),
add column email varchar(320)
;

alter table supplier
add column supplier_name varchar(100),
add column location varchar(100)
;

alter table product
add column product_name varchar(100),
add column price decimal(5,2)
;

create table staff (
first_name varchar(100),
last_name varchar(100),
role varchar(100),
email varchar(320));

insert into staff (first_name, last_name, role, email)
values ("ray","smithy","salesman","ray.smithy@nbgardens.net"),
("luke","iverson","salesman","luke.iverson@nbgardens.net"),
("steve","foulds","salesman","steven.foulds@nbgardens.net"),
("alana","magnet","salesman","alana.magnet@nbgardens.net"),
("ben","bristols","salesman","benjamin.bristols@nbgardens.net"),
("jasmine","kidd","salesman","jasmine.kiddlawson@nbgardens.net"),
("lucy","oswald","salesman","lucy.oswald@nbgardens.net"),
("umara","lockheed","salesman","umara.lockheed@nbgardens.net"),
("rav","rajesh","salesman","ravi.rajeshpunam@nbgardens.net"),
("chi","nam","salesman","chi.zhunam@nbgardens.net");

insert into supplier (supplier_name, location)
values ("Gnome on the water","Manchester"),
("Go hard or go gnome","Bristol"),
("Country gnomes take me home","Preston"),
("Gnome your own way","Liverpool"),
("Gnomething's gonna stop us now","Blackburn"),
("Gnome diggity","Leeds"),
("Gnome to me","York");

insert into product (product_name,stock_count,price)
values ("Gnomei Malone",24,19.99),
("Post Malgnome",48,29.99),
("Gnome Gallagher",22,31.99),
("Sylvester Stalgnome",14,24.99),
("Gnome Chomsky",31,27.99),
("Gnome Fielding",49,18.99),
("The Ragnomes",49,11.99),
("Nagnomei Campbell",11,18.99),
("Gnomea the Vampire",8,29.99),
("Jacuzzi",12,119.99);

insert into customer (first_name, last_name, address, city, email)
values
("Steve","Bills","123 Fake Street","Manchester","stevebills12@gmail.com"),
("Bill","Steves","32 New Road","Manchester","billsteves145@gmail.com"),
("Beve","Stills","4 Another Avenue","Birmingham","bevestills946@gmail.com"),
("Amy","Young","55 Lookman Place","Preston","amy.young94@hotmail.co.uk"),
("Rachel","Punter","9 Other Road","Burnley","rpunterpersonal@outlook.com"),
("Alex","Kaini","125 Fireplace Avenue","Accrington","alexkaini@alexkaini.com"),
("Guy","Powell","89 Station Avenue","Oswaldtwistle","guypowel455@gmail.com"),
("Felix","Wadilon","46 Grasslook Street","Preston","wadilonlix@hotmail.com"),
("Jacob","Chainock","21 Bar Way","Bolton","chainocky@gmail.com"),
("Michael","Crook","100 Cent Avenue","Blackburn","mcrook91124@bt.com");

insert into orders (status)
values ("pending"),
("pending"),
("pending"),
("pending"),
("pending"),
("pending"),
("pending");

insert into ordersproductbridge (order_id, product_id)
values (1,1),
(1,3),
(1,5),
(2,3),
(2,5),
(3,10),
(4,9),
(4,8),
(4,7),
(4,6),
(5,4),
(6,3),
(7,1),
(7,2);

alter table orders
add column customer_id int;
foreign key(customer_id) references customer (customer_id);

ALTER TABLE Orders
ADD FOREIGN KEY (customer_id) REFERENCES customer(customer_id);

update orders
set customer_id = 2
where order_id = 1;

update orders
set customer_id = 1
where order_id = 2;

update orders
set customer_id = 4
where order_id = 3;

update orders
set customer_id = 6
where order_id = 4;

update orders
set customer_id = 5
where order_id = 5;

update orders
set customer_id = 4
where order_id = 6;

update orders
set customer_id = 7
where order_id = 7;

MODULE 5 User Stories;

alter table product
add column threshold int;

update product
set threshold = 10
where threshold is null;

USER 1
select product_name
from product
where stock_count > 0;

USER 2
insert into staff (first_name, last_name, role, email)
values ("Stevo","Steverson","salesman","S.Steverson@nbgardens.net");

USER 3
insert into orders (status)
values ("pending");

insert into ordersproductbridge (order_id, product_id)
values (8,1);

USER 4
update orders
set status = "Delivered"
where order_id = 1;

USER 5
select product_name
from product
where stock_count < threshold;

update product
set stock_count = stock_count + 10
where stock_count < threshold;

USER 6

create table supplierproductbridge (
supplier_id int,
product_id int,
foreign key(supplier_id) REFERENCES supplier(supplier_id),
foreign key(product_id) REFERENCES product(product_id)
);

insert into supplierproductbridge(supplier_id,product_id)
values
(1,3),
(1,5),
(2,10),
(2,1),
(2,2),
(3,3),
(3,4),
(4,5),
(5,6),
(6,7),
(6,8),
(7,9),
(7,10);

SELECT t1.supplier_name, t2.product_name from supplier as t1
JOIN supplierproductbridge as bridge
ON t1.supplier_id = bridge.supplier_id
JOIN product as t2
ON bridge.product_id = t2.product_id;

USER 7
select * from customer as t1
JOIN orders as t2
ON t1.customer_id = t2.customer_id
order by t1.customer_id;

select t1.customer_id, t1.first_name, t1.last_name, count(*) as order_total from customer as t1
JOIN orders as t2
ON t1.customer_id = t2.customer_id
group by t1.customer_id;

insert into orders (status,customer_id)
values ("pending",4),
("pending",1),
("pending",7),
("pending",3),
("pending",1),
("pending",2),
("pending",1);

My own user story - 1
How much is each order worth?

select * from orders as t1
join ordersproductbridge as bridge
on t1.order_id = bridge.order_id
join product as t2
on bridge.product_id = t2.product_id
order by t1.customer_id;

create view order_total as

select t1.order_id, sum(price) from orders as t1
join ordersproductbridge as bridge
on t1.order_id = bridge.order_id
join product as t2
on bridge.product_id = t2.product_id
group by order_id;

My own user story - 2
how much has each customer spent

select t1.customer_id, sum(price) from orders as t1
join ordersproductbridge as t2
on t1.order_id = t2.order_id
join product as t3
on t2.product_id = t3.product_id
group by customer_id;
