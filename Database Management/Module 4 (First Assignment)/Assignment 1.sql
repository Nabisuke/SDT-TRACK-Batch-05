create database assignment_01;
use assignment_01;

-- question 1 --

create table student
(
	roll char(4) primary key,
    name varchar(50),
    email varchar(60),
    address varchar(40),
    age int 
);


create table library
(
	book_name varchar(30),
    buyer_id char(4),
    foreign key (buyer_id) references student (roll)
	
);

create table fees
(
	fee int,
    buyer_id char(4),
    foreign key (buyer_id) references student (roll)
);

drop table student;
drop table library;
drop table fees;

-- question 2 --

create table student
(
	roll char(4) primary key,
    name varchar(50) not null,
    email varchar(60) unique,
    address varchar(40) not null,
    age int check (age>18)
);

create table library
(
	book_name varchar(30) not null,
    buyer_id char(4),
    primary key (book_name, buyer_id),
    foreign key (buyer_id) references student (roll)
	
);


create table fees
(
	fee int check (fee > 0),
    payment_time time,
    buyer_id char(4),
    primary key (buyer_id, payment_time),    
    foreign key (buyer_id) references student (roll)
);

-- question 3 --
-- data can be organized but information is always organzied--
-- data can be hard to work with and Information is easy to work with -- 
-- data lacks context but information is contextful --
-- data can be meaningless but information is meaningful -- 

-- question 4 -- 
-- If we want to execute update and delete query in mysql then we have to turn on safe update mode first.--
-- The code to enable the safe update mode is - SET SQL_SAFE_UPDATES = 0; -- 

create table Employee
(
	EmployeeID int auto_increment primary key,
    FirstName varchar(40) not null,
    LastName varchar(40) not null,
    Age int check (age > 18),
    Department varchar(30) not null
    
);
drop table employee;
INSERT INTO employee (EmployeeID, FirstName, LastName, Age, Department) VALUES
(1, 'John', 'Doe', 28, 'Sales'),
(2, 'Jane', 'Smith', 32, 'Marketing'),
(3, 'Michael', 'Johnson', 35, 'Finance'),
(4, 'Sarah', 'Brown', 30, 'HR'),
(5, 'William', 'Davis', 25, 'Engineering'),
(6, 'Emily', 'Wilson', 28, 'Sales'),
(7, 'Robert', 'Lee', 33, 'Marketing'),
(8, 'Laura', 'Hall', 29, 'Finance'),
(9, 'Thomas', 'White', 31, 'HR'),
(10, 'Olivia', 'Clark', 27, 'Engineering');

-- question 5 --
select distinct Department
from Employee;

-- question 6 --
select LastName
from Employee
order by Age desc;

-- question 7 --
select LastName
from Employee
where Age > 30 and Department = 'Marketing';

-- question 8 --
select FirstName, LastName
from Employee
where Age >= 25;

-- question 9 --
select FirstName, LastName
from Employee
where LastName like '%son';

-- question 10 --
select FirstName, LastName
from Employee
where Department = 'Engineering';





