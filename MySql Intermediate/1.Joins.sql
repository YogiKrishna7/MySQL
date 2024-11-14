-- Joins
-- inner joins returns the rows that are the same in both columns from both tables.

select *
from employee_info;

select *
from employee_salary;

select info.employee_id, age, occupation
from employee_info as info
inner join employee_salary as sal
	on info.employee_id = sal.employee_id
;

select *
from employee_info as info
left join employee_salary as sal
	on info.employee_id = sal.employee_id
;

select *
from employee_info as info
right join employee_salary as sal
	on info.employee_id = sal.employee_id
;

-- Self Join

select emp1.employee_id as emp_santa,
emp1.first_name as first_name_santa,
emp1.last_name as last_name_santa,

emp2.employee_id as emp_name,
emp2.first_name as first_name_emp,
emp2.last_name as last_name_emp
from employee_salary as emp1
join employee_salary as emp2
	on emp1.employee_id + 1= emp2.employee_id
;

-- Joining Multiple table together

select *
from employee_info as info
inner join employee_salary as sal
	on info.employee_id = sal.employee_id
inner join parks_departments as pd
	on sal.dept_id = pd.department_id
;

select *
from parks_departments;