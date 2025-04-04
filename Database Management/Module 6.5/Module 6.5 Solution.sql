use dummydb;
-- Determine the third highest salary and which employee receives it?
select * from employees
where salary = (select max(salary)
				from employees
				where salary < (select max(salary)
								from employees
								where salary < (select max(salary)
												from employees)));

-- Determine the third lowest salary and which employee receives it?

select * from employees
where salary = (select min(salary)
				from employees
				where salary > (select min(salary)
								from employees
								where salary > (select min(salary)
												from employees)));

-- Which employee has been hired after Steven?
select *
from employees
where hire_date = (select min(hire_date)
					from employees
                    where hire_date > (select hire_date
									   from employees
									   where first_name = 'Steven' and last_name = 'King'));

-- With common table expression solve the question 1 and 2
with max_1 as
(select max(salary) as max_salary
from employees),
max_2 as
(select max(salary) as max_salary
from employees
where salary < (select max_salary from max_1)),
max_3 as
(select max(salary) as max_salary
from employees
where salary < (select max_salary from max_2))
select * from employees
where salary = (select max_salary from max_3);

with min_1 as
(select min(salary) as min_salary
from employees),
min_2 as
(select min(salary) as min_salary
from employees
where salary > (select min_salary from min_1)),
min_3 as
(select min(salary) as min_salary
from employees
where salary > (select min_salary from min_2))
select * from employees
where salary = (select min_salary from min_3);



