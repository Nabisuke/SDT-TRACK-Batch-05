use dummydb;

-- show the list of the salary of employees less than the salary of employee_id 144.
select *
from employees
where salary < ( select salary
				 from employees
                 where employee_id = 144);

-- show the list of employees who have the highest salary.
select *
from employees
where salary = ( select max(salary)
				 from employees);
                 
-- show the average salary of the employees working in marketing dept.
select avg(salary)
from employees
where department_id = (select department_id
					   from departments
                       where department_name = 'Marketing'
						);

-- show how many employee work in the IT dept.
select count(*)
from employees
where department_id = (select department_id
					   from departments
                       where department_name = 'IT'
						);
-- how much money is being spent on the employees working as progammer.
select sum(salary)
from employees
where job_id = (select job_id
				from jobs
				where job_title = 'Programmer');
