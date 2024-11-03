-- Having Vs Where --

select gender, avg(age)
from employee_info
group by gender
having avg(age) > 40;

select occupation, avg(salary)
from employee_salary
where occupation like '%manager%' -- filterd row level --
group by occupation
having avg(salary) > 75000;  -- filterd at aggregate function level --