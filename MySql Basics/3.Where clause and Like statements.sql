-- Where clause

select * from employee_salary;

select *
from employee_salary
where first_name = 'Ron'; 

select *
from employee_salary
where salary >= 50000;

select *
from employee_info
where gender != 'Female';

select *
from employee_info
where birth_date > '1985-01-01';

-- AND OR NOT -- Logical Operators

select *
from employee_info
where birth_date > '1985-01-01'
and gender = 'Male';

select *
from employee_info
where birth_date > '1985-01-01'
or not gender = 'Male';

select *
from employee_info
where (first_name = 'Leslie' and age = 44) or age > 55;


-- Like statement
select *
from employee_info
where first_name like 'a___%';

select *
from employee_info
where birth_date like '1989%';