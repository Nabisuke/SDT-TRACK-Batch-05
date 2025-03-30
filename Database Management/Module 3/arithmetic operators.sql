USE practice;

create table employee
(
	EmpId int primary key,
    EmpName varchar(50) not null,
    Joining_year year not null,
    Birthday year check(Birthday<2000),
    Designation varchar(30) not null,
    Salary int not null
);

drop table employee;

