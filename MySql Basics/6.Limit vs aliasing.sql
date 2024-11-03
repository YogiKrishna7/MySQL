-- Limit vs Aliasing --

select *
from employee_info
limit 3;

select *
from employee_info
order by age desc
limit 2, 1;

-- Aliasing --

select gender, avg(age) as avg_age
from employee_info
group by gender
having avg_age > 40;