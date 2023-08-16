create database sqlsession;
use sqlsession;
-- DDL  
-- create,alter,drop,truncate
create database surya;
drop database surya;
use sqlsession;
create table customers (
first_name varchar(20),
last_name varchar(20),
country varchar(20),
contact_num int (10));
drop table customers;
create table customers (
first_name varchar(20),
last_name varchar(20),
country varchar(20),
contact_num int);
insert into customers(first_name,last_name,country,contact_num) values ('surya','ravi','india',9944333573),
('sarathi','ranganathan','USA',8675558646);
drop database sqlsession;
create database sqlsession;
use sqlsession;
create table customers (cus_id int,
first_name varchar(20),
last_name varchar(20),
country varchar(20),
contact_num int);
insert into customers(cus_id,first_name,last_name,country,contact_num) values 
(1,'surya','ravi','india',9944333573),
(2,'sarathi','ranganathan','USA',8675558646);
drop table customers;
create table customers (cus_id int,
first_name varchar(20),
last_name varchar(20),
country varchar(20),
contact_num bigint);

insert into customers(cus_id,first_name,last_name,country,contact_num) values 
(1,'surya','ravi','india',9944333573),
(2,'sarathi','ranganathan','USA',8675558646);

select * from customers;

insert into customers(cus_id,first_name,last_name,country,contact_num) values 
(3,'magizh','surya','canada',9944333543),
(4,'tigazh','surya','USA',8675558647);
select * from customers;
select first_name from customers;

-- creating students table

create table students(sid integer,sname varchar(20),marks integer);
insert into students(sid,sname,marks) values 
(001,'surya',80),(002,'sarathi',98),(003,'magizh',89),
(004,'tigazh',97),(005,'inbayaazh',90);

select * from students;

insert into students values(100,'Ram',71);
insert into students values(101,'Raj',75);
insert into students values(102, 'Rajesh' , 65);
insert into students values(103, 'Deepa' , 79);
insert into students values(104, 'Deepak' , 91);
insert into students values(107, 'Animesh' , 82);
insert into students values(108, 'Harish' , 63);
insert into students values(110, 'Hitesh' , 55);
insert into students values(120, 'Sam' , 50);
insert into students values(130, 'Shreya' , 49);

select * from students;

select * from students
where sid = 104;

select * from students
where marks = 75;

select * from students
where sname = 'shreya';

-- relational operator
-- =,<,>,>=,<=,!=
select * from students
where marks != 75;

select * from students
where marks >= 60;

-- list out the students who got marks between 60 and 75
-- Logical operator
select * from students
where marks between 60 and 75;

use sqlsession;

select * from students
where sid > 105 and marks >60;

-- select names starting with R
-- useage of like and % like is a keyword and % is used for followed letters
select * from students
where sname like 'R%';

-- selecting names starts second letter as a in R names
select * from students
where sname like '_aj%';

-- selecting the names using last letter m
select * from students
where sname like '%m';

-- selecting the names all contains the letter e
select * from students
where sname like '%e%';

-- selecting the names which has length of 5 or so on like that
select * from students
where length(sname)=5; 

-- or operator
select * from students
where sid = 104 or sid = 107 or sid = 102;

-- using 'In' function to filter multiple values like or operator
select * from students
where sid in (104,107,102);

-- using 'not in' function to filter multiple values
select * from students
where sid not in (104,107,102);

select * from students
where sname in  ('surya');

-- dropping the exisiting table customers
drop table customers;

-- creating a new table customers

CREATE TABLE customers (
customer_id integer primary key,
first_name varchar(10) NOT NULL,
last_name varchar(10) NOT NULL,
dob DATE,
phone varchar(12)
);

select * from customers;

Insert into customers (customer_id, first_name,last_name,dob,phone) values(
1,'John','Brown','1965-01-01','800-555-1211');

Insert into customers (customer_id, first_name,last_name,dob,phone) values(
2,'Cynthia','Green','1968-02-05','800-555-1212');

Insert into customers (customer_id, first_name,last_name,dob,phone) values(
3,'Steve','White','1971-03-16','800-555-1213');

Insert into customers (customer_id, first_name,last_name,dob,phone) values(
4,'Gail','Black',NULL,'800-555-1214');

Insert into customers (customer_id, first_name,last_name,dob,phone) values(
5,'Doreen','Blue','1970-05-20',NULL);

select * from customers;

-- selecting the last name starting with bl
select * from customers
where last_name like 'bl%';

-- select the first and last names contains 'ee'
select * from customers 
where first_name like '%ee%' or last_name like '%ee%';

-- phone num ends with 12
select * from customers 
where phone like '%12';

-- select phone num not null 
select * from customers
where phone is null;

-- select dob null
select * from customers
where dob is null;

-- merging first and last name and store it into new column as cus_name
-- concat operation
select first_name,last_name,concat(first_name,' ',last_name) as cus_name from customers;

select *,concat(first_name,' ',last_name) as cus_name from customers;

-- use of Alter and add 
select * from students;

alter table students add city varchar(20);

select * from students;

-- update
set sql_safe_updates = 0;
update students set city='Chennai';
select * from students;

-- rollback (undo)
insert into students values(6,'ravi',93,'salem');
select * from students;
rollback;
select * from students;

-- commit(save) once we give commit means we can not roll back it
insert into students values(6,'ravi',93,'salem');
commit;
select * from students;

-- deleting a row
delete from students where sid=6;
select * from students;

-- drop
alter table students drop city;
select * from students;

-- rename the table
rename table customers to customer;

-- adding multiple columns in table
alter table students add (city varchar(20),state varchar(20),country varchar(20));
select * from students; 

use sqlsession;

-- converting upper to lower and lower to upper case in first name

select first_name,lcase(first_name) from customer; -- lower ()

select first_name,ucase(first_name) from customer; -- upper ()
-- concating first and last name and converting into lower case and upper case
select first_name,last_name,lower(concat(first_name,' ',last_name))
as full_name from customer;
-- same as lower for upper case also.

-- trim (removing unwanted space)
-- trim is a deafult function, dual is a defualt dummy table in sql
-- trim,ltrim,rtrim
-- trim
select trim('  guvi') from dual; 

-- ltrim
select ltrim('  guvi  ') from dual; 

-- rtrim
select rtrim('  guvi  ') from dual; 

-- creating a product table
create table products(
product_id integer primary key,
product_type_id integer references product_types(product_type_id),
name varchar(30) not null,
description varchar(50),
price decimal(5,2)
);

INSERT INTO products (  product_id, product_type_id, name, description, price) VALUES (1, 1, 'Modern Science', 'A description of modern science', 19.95);
INSERT INTO products (  product_id, product_type_id, name, description, price) VALUES (2, 1, 'Chemistry', 'Introduction to Chemistry', 30.00);
INSERT INTO products (  product_id, product_type_id, name, description, price) VALUES (3, 2, 'Supernova', 'A star explodes', 25.99);
INSERT INTO products (  product_id, product_type_id, name, description, price) VALUES (4, 2, 'Tank War', 'Action movie about a future war', 13.95);
INSERT INTO products (  product_id, product_type_id, name, description, price) VALUES (5, 2, 'Z Files', 'Series on mysterious activities', 49.99);
INSERT INTO products (  product_id, product_type_id, name, description, price) VALUES (6, 2, '2412: The Return', 'Aliens return', 14.95);
INSERT INTO products (  product_id, product_type_id, name, description, price) VALUES (7, 3, 'Space Force 9', 'Adventures of heroes', 13.49);
INSERT INTO products (  product_id, product_type_id, name, description, price) VALUES (8, 3, 'From Another Planet', 'Alien from another planet lands on Earth', 12.99);
INSERT INTO products (  product_id, product_type_id, name, description, price) VALUES (9, 4, 'Classical Music', 'The best classical music', 10.99);
INSERT INTO products (  product_id, product_type_id, name, description, price) VALUES (10, 4, 'Pop 3', 'The best popular music', 15.99);
INSERT INTO products (  product_id, product_type_id, name, description, price) VALUES (11, 4, 'Creative Yell', 'Debut album', 14.99);
INSERT INTO products (  product_id, product_type_id, name, description, price) VALUES (12, NULL, 'My Front Line', 'Their greatest hits', 13.49);

-- substring (getting a part of string) it has three properties
-- syntax substr(column name,start,total num of character to fetch)
 
select name,substr(name,1,2)from products;

select name,substr(name,4,3)from products;

use sqlsession;
select name,substr(name,-11,3)from products;
-- length(column name,1) can be used to get the last character of a string if we dont know the length of the strings 
select name,substr(name,length(name),1) from products;

-- Replacing the first letter of the name from upper to lower using relpace and substring
select name,replace(name,substr(name,1,1),lower(substr(name,1,1))) as replaced_name from products;
-- upper
select name,replace(name,substr(name,1,2),upper(substr(name,1,2))) as replaced_name from products;

-- instring by using instring fuction we can find the first occurance of a charachter
select name,instr(name,'r') from products;

-- division,modulous , floor division
-- division
 select 10/3 from dual;
 
 -- modolous
 select 19 mod 8 from dual;
 
 -- floor division
 select 19 div 8 from dual;
 
 -- absolute values
 select abs(-27) from dual;
 select abs(27) from dual;
 
 -- power
 select power(2,4) from dual; 
 
 -- ceil (upper) and floor (lower)
 select ceil(49.95) from dual;
 select floor(49.95) from dual;
 
 -- date funtion
 select curdate() from dual;
 select curtime() from dual;
 -- getting year month date separatly
 select year(curdate()),month(curdate()),date(curdate()) from dual;
 select year(curdate()),date(curdate()),month(curdate()) from dual;
 
 -- need to learn date add,datediff,dayofweek,dayname,utc,timestamp
 
 -- aggregate function min, max,avg,count,sum
 select min(price),max(price),avg(price),sum(price),count(price) from products;
 
 -- group by function this will help to group the elements in table
 select product_type_id,avg(price) from products
 group by product_type_id;
 
 -- removing the null value column
 select product_type_id,avg(price) from products
 where product_type_id is not null 
 group by product_type_id;
 
 -- avg price above 20
 select product_type_id,avg(price) from products
 where product_type_id is not null 
 group by product_type_id
 having avg(price)>20;
 
 -- order by (descending order)
  select product_type_id,avg(price) from products
 where product_type_id is not null 
 group by product_type_id
 having avg(price)>20
 order by avg(price) desc;
 
   select product_type_id,avg(price) from products
 where product_type_id is not null 
 group by product_type_id
 having avg(price)>20
 order by avg(price) desc limit 1; -- here limit helps to limit the values if we need
									-- to limit 2 values means give limit 2
-- creating new table for JOIN fuctions

create table product_types(
product_type_id integer primary key,
name varchar(10) not null
);
insert into product_types(product_type_id,name) values(1,'Book');
insert into product_types(product_type_id,name) values(2,'Video');
insert into product_types(product_type_id,name) values(3,'DVD');
insert into product_types(product_type_id,name) values(4,'CD');
insert into product_types(product_type_id,name) values(5,'Magazine');
 
 select * from product_types;
 select * from products;
 -- merging products and product_types by using joins
 -- inner join
 -- by using product_type_id inner joining the two tables
 select pt.product_type_id,pt.name,p.name
 from products p,product_types pt
 where pt.product_type_id=p.product_type_id;
 
 -- creating purchase table
 CREATE TABLE purchases (
product_id INTEGER
    REFERENCES products(product_id),
customer_id INTEGER
    REFERENCES customers(customer_id),
quantity INTEGER NOT NULL,
  CONSTRAINT purchases_pk PRIMARY KEY (product_id, customer_id)
);

INSERT INTO purchases ( product_id, customer_id, quantity) VALUES ( 1, 1, 1);
INSERT INTO purchases ( product_id, customer_id, quantity) VALUES ( 2, 1, 3);
INSERT INTO purchases ( product_id, customer_id, quantity) VALUES ( 1, 4, 1);
INSERT INTO purchases ( product_id, customer_id, quantity) VALUES ( 2, 2, 1);
INSERT INTO purchases ( product_id, customer_id, quantity) VALUES ( 1, 3, 1);
INSERT INTO purchases ( product_id, customer_id, quantity) VALUES ( 1, 2, 2);
INSERT INTO purchases ( product_id, customer_id, quantity) VALUES ( 2, 3, 1);
INSERT INTO purchases ( product_id, customer_id, quantity) VALUES ( 2, 4, 1);
INSERT INTO purchases ( product_id, customer_id, quantity) VALUES ( 3, 3, 1);
INSERT INTO purchases ( product_id, customer_id, quantity) VALUES ( 4, 4, 6);
INSERT INTO purchases ( product_id, customer_id, quantity) VALUES ( 6, 2, 3);

select * from customer;
select * from products;
select * from purchases;

select p.product_id,p.name,pc.customer_id
from products p inner join purchases pc
where p.product_id=pc.product_id;

select pc.customer_id,pc.product_id,concat(c.first_name,' ',c.last_name) as customer_name
from purchases pc inner join customer c
on pc.customer_id=c.customer_id;

select product_id,sum(quantity)
from purchases
group by product_id;

-- inner outer join
select pu.product_id,p.name,sum(quantity)
from purchases pu inner join products p
on pu.product_id= p.product_id
group by pu.product_id;

-- left outer join
select p.product_id,p.name,pt.product_type_id
from products p left outer join product_types pt
on p.product_type_id = pt.product_type_id; 

-- right outer join
select p.product_id,p.name,pt.product_type_id
from products p right outer join product_types pt
on p.product_type_id = pt.product_type_id; 

