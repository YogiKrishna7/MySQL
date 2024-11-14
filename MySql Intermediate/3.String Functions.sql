-- String Functions

select length('skyfall');

select first_name, length(first_name)
from employee_info
order by 2;

select upper('sky');
select lower('SKY');

select first_name, upper(first_name)
from employee_info;

select trim('       yogi          ');
select ltrim('      yogi          ');
select rtrim('      yogi          ');

select first_name, 
left(first_name, 4),
right(first_name, 4),
substring(first_name, 3, 2),
birth_date, substring(birth_date, 6, 2) as birth_month
from employee_info;



select first_name, replace(first_name, 'a', 'Y')
from employee_info;


select locate('x', 'Alexander');

select first_name, locate('An', first_name)
from employee_info;

select first_name, last_name,
concat(first_name, last_name) as full_name
from employee_info;