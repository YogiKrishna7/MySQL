-- Unions
-- Allows you to combine rows together from separate or same table

select first_name, last_name
from employee_info
union -- by default, the union distincts the values
select first_name, last_name
from employee_salary;

select first_name, last_name
from employee_info
union all -- to select all the rows with duplicate rows too
select first_name, last_name
from employee_salary;

select first_name, last_name, 'Old male' as label
from employee_info
where age > 40 and gender = 'Male'
union
select first_name, last_name, 'Old male' as label
from employee_info
where age > 40 and gender = 'Female'
union
select first_name, last_name, 'Highly Paid Employee' as label
from employee_salary
where salary > 70000
order by first_name, last_name
;