select *
from employee_info;

select gender, avg(age)
from employee_info
group by gender
;

select occupation, salary
from employee_salary
group by occupation, salary
;

select gender, 
avg(age), 
max(age), 
min(age), 
count(age)
from employee_info
group by gender;

select *
from employee_info
order by first_name;

select *
from employee_info
order by gender, age
;

-- Not recommended
select *
from employee_info
order by 5, 4
;

