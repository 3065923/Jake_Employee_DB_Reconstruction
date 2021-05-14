drop table title_table;

create table title_table (
	title_id varchar,
	title varchar);
	
select * 
from title_table;



create table salaries_table (
	emp_no int,
	salary int);
	
select *
from salaries_table;



--emp_no,emp_title_id,birth_date,first_name,last_name,sex,hire_date
--473302,s0001,7/25/1953,Hideyuki,Zallocco,M,4/28/1990

create table employees_table (
	emp_no int,
	emp_title_id varchar,
	birth_date varchar,
	first_name varchar,
	last_name varchar,
	sex character,
	hire_date varchar);
	

create table debt_manager_table (
	dept_no varchar,
	emp_no int);
	

--emp_no,dept_no
--10001,d005
create table dept_emp_table (
	emp_no int,
	dept_no varchar);


create table departments_table (
	dept_no varchar,
	dept_name varchar);


	
	