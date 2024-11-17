drop database if exists parks_and_recreation;
create database parks_and_recreation;
use parks_and_recreation;

create table employee_info (
  employee_id int not null,
  first_name varchar(50),
  last_name varchar(50),
  age int,
  gender varchar(10),
  birth_date date,
  primary key (employee_id)
);

create table employee_salary (
  employee_id int not null,
  first_name varchar(50) not null,
  last_name varchar(50) not null,
  occupation varchar(50),
  salary int,
  dept_id int
);

create table parks_departments (
  department_id int not null auto_increment,
  department_name varchar(50) not null,
  primary key (department_id)
);

insert into employee_info (employee_id, first_name, last_name, age, gender, birth_date)
values
(1,'leslie', 'knope', 44, 'female','1979-09-25'),
(3,'tom', 'haverford', 36, 'male', '1987-03-04'),
(4, 'april', 'ludgate', 29, 'female', '1994-03-27'),
(5, 'jerry', 'gergich', 61, 'male', '1962-08-28'),
(6, 'donna', 'meagle', 46, 'female', '1977-07-30'),
(7, 'ann', 'perkins', 35, 'female', '1988-12-01'),
(8, 'chris', 'traeger', 43, 'male', '1980-11-11'),
(9, 'ben', 'wyatt', 38, 'male', '1985-07-26'),
(10, 'andy', 'dwyer', 34, 'male', '1989-03-25'),
(11, 'mark', 'brendanawicz', 40, 'male', '1983-06-14'),
(12, 'craig', 'middlebrooks', 37, 'male', '1986-07-27');

insert into employee_salary (employee_id, first_name, last_name, occupation, salary, dept_id)
values
(1, 'leslie', 'knope', 'deputy director of parks and recreation', 75000, 1),
(2, 'ron', 'swanson', 'director of parks and recreation', 70000, 1),
(3, 'tom', 'haverford', 'entrepreneur', 50000, 1),
(4, 'april', 'ludgate', 'assistant to the director of parks and recreation', 25000, 1),
(5, 'jerry', 'gergich', 'office manager', 50000, 1),
(6, 'donna', 'meagle', 'office manager', 60000, 1),
(7, 'ann', 'perkins', 'nurse', 55000, 4),
(8, 'chris', 'traeger', 'city manager', 90000, 3),
(9, 'ben', 'wyatt', 'state auditor', 70000, 6),
(10, 'andy', 'dwyer', 'shoe shiner and musician', 20000, NULL),
(11, 'mark', 'brendanawicz', 'city planner', 57000, 3),
(12, 'craig', 'middlebrooks', 'parks director', 65000, 1);

insert into parks_departments (department_name)
values
('parks and recreation'),
('animal control'),
('public works'),
('healthcare'),
('library'),
('finance');
