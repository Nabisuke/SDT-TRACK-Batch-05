use dummydb;

-- show the employee/s with the 2nd highest salary.
select *
from employees
where salary = (select distinct salary
				from employees
                order by salary desc
                limit 1,1
				);
-- or,
select * from employees
where salary = (select max(salary)
				from employees
				where salary < (select max(salary)
								from employees
								));
                                
-- show employees who earn more than managers.
select *
from employees as emp
where salary > (select salary from employees as mgr
				where emp.manager_id = mgr.employee_id);
                
-- show employees whose jobs are akin to their managers.
 select *
from employees as emp
where job_id = (select job_id from employees as mgr
				where emp.manager_id = mgr.employee_id);
				