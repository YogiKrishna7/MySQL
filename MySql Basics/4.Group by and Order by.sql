-- Group by--

select *
from employee_info;

select gender, avg(age)
from employee_info
group by gender;

select occupation, salary
from employee_salary
group by occupation, salary
;

select gender, avg(age), max(age), min(age), count(age)
from employee_info
group by gender;

-- Order by --

select *
from employee_info
order by first_name asc;

select *
from employee_info
order by first_name desc;

select *
from employee_info
order by gender, age
;

select *
from employee_info
order by gender, age desc
;

select *
from employee_info
order by 5, 4
;