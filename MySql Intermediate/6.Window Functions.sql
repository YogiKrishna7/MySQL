-- Window Functions

-- Group by, rolls everything up into one row
select gender, avg(salary) as avg_salary
from employee_info as info
	join employee_salary as sal
    on info.employee_id = sal.employee_id
group by gender;

select info.first_name, info.last_name, avg(salary) as avg_salary
from employee_info as info
	join employee_salary as sal
    on info.employee_id = sal.employee_id
group by info.first_name, info.last_name, gender;

select info.first_name, info.last_name, avg(salary) OVER(partition by gender)
from employee_info as info
	join employee_salary as sal
    on info.employee_id = sal.employee_id
;

select info.first_name, info.last_name, gender, salary,
sum(salary) OVER(partition by gender order by info.employee_id) as rolling_total
from employee_info as info
	join employee_salary as sal
    on info.employee_id = sal.employee_id
;

select info.employee_id, info.first_name, info.last_name, gender, salary,
row_number() over(partition by gender order by salary desc) as row_num,
rank() over(partition by gender order by salary desc) as rank_num,
dense_rank() over(partition by gender order by salary desc) as rank_num
from employee_info as info
	join employee_salary as sal
    on info.employee_id = sal.employee_id
;