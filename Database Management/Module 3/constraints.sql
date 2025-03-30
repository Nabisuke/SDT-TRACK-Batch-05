USE practice;

CREATE TABLE student
(
	roll CHAR(4) PRIMARY KEY,
    name varchar(50) NOT NULL,
    email varchar(60) UNIQUE,
    address varchar(255),
    age INT CHECK(age>18)
);

insert into student (roll,name,email,address,age) values (1234,'ishowspeed','skibidiohiokaicenat@gmail.com', 'Ohio', 21);

CREATE TABLE library
(
	book_name varchar(30) PRIMARY KEY,
    buyer_id char(4) ,
    foreign key (buyer_id) references student (roll)
);

create table course
(
	course_name varchar(10),
    university varchar(10),
    credit int,
    primary key(course_name,university)
);

create table marks 
(
	roll char(4) primary key,
    cse int,
    micro int,
    foreign key (roll) references student (roll)
);

INSERT INTO marks (roll, cse, micro) VALUES ('1234', 98, 95);

select cse + micro
from marks
where roll = '1234';

