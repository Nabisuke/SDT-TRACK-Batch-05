use dummydb;

-- without using join query
select employees.first_name, departments.department_name
from employees, departments
where employees.department_id = departments.department_id;

-- using join query
select employees.first_name, departments.department_name
from employees join departments on employees.department_id = departments.department_id;

-- show employee name and their manager name side by side
select e.first_name, m.first_name
from employees as e join employees as m on e.manager_id = m.employee_id;

-- show department names where no employee works.
select departments.department_name
from departments left join employees on departments.department_id = employees.department_id
where employees.department_id is null;

-- show the employee first_name, his salary and how much less he earns compared to the average salary of his department
select employees.first_name, employees.salary,
((select avg(salary) from employees where department_id = employees.department_id) - employees.salary) as salary_difference_from_avg
from employees join departments where employees.department_id = departments.department_id;

-- show the names of the departments where the minimum salary is greater than 5000
select department_name
from employees join departments on employees.department_id = departments.department_id
group by department_name
having min(salary) > 5000;


