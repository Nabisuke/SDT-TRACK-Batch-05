use dummydb;

-- show the employee names and corresponding job titles wihtout using join query.
select employees.first_name, jobs.job_title
from employees, jobs where employees.job_id = jobs.job_id;

-- show the employee names and corresponding job titles using join query.
select employees.first_name, jobs.job_title
from employees join jobs on employees.job_id = jobs.job_id;

-- show the employee names and corresponding job title who receives maximum salary
select employees.first_name, jobs.job_title, max(max_salary)
from employees join jobs on employees.job_id = jobs.job_id
having max(max_salary);

-- show the employee names and corresponding manager names.
select e.first_name, m.first_name
from employees as e left join employees as m
on e.manager_id = m.employee_id;
