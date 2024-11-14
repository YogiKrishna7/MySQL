-- Subqueries
-- query with in another query
-- we can use where clause, select and from clause also

select *
from employee_info
where employee_id in (
	select employee_id
    from employee_salary
    where dept_id = 1
);

select first_name, salary, 
(select avg(salary)
from employee_salary)
from employee_salary;

select gender, avg(age), max(age), min(age), count(age)
from employee_info
group by gender;

select avg(max_age)
from
(select gender, 
avg(age) as avg_age, 
max(age) as max_age, 
min(age) as min_age, 
count(age)
from employee_info
group by gender) as Aggreigated_table
group by gender;