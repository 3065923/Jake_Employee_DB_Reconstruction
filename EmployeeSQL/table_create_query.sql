-- create tables and columns for all six csv files 

-- once created, import csv files into corresponding table

drop table if exists title_table;

create table title_table (
	title_id varchar,
	title varchar);
	

drop table if exists salaries_table;

create table salaries_table (
	emp_no integer,
	salary integer);


drop table if exists employees_table;

create table employees_table (
	emp_no varchar,
	emp_title_id varchar,
	birth_date varchar,
	first_name varchar,
	last_name varchar,
	sex character,
	hire_date varchar);
	
drop table if exists dept_emp_table;

create table dept_emp_table (
	emp_no integer,
	dept_no varchar);



drop table if exists departments_table;

create table departments_table (
	dept_no varchar,
	dept_name varchar);


drop table if exists dept_manager_table;

create table dept_manager_table (
	dept_no varchar,
	emp_no integer);
