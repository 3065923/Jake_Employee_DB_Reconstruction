-- create tables and columns for all six csv files 

-- once created, import csv files into corresponding table

drop table if exists title_table;

create table title_table (
	title_id varchar,
	title varchar,
	primary key(title_id));
	

drop table if exists salaries_table;

create table salaries_table (
	emp_no varchar,
	salary integer,
	primary key(emp_no),
	foreign key(emp_no) references employees_table(emp_no));


drop table if exists employees_table;

create table employees_table (
	emp_no varchar,
	emp_title_id varchar,
	birth_date varchar,
	first_name varchar,
	last_name varchar,
	sex character,
	hire_date varchar,
	primary key(emp_no),
	foreign key(emp_title_id) references title_table(title_id));
	
drop table if exists dept_emp_table;

create table dept_emp_table (
	emp_no varchar,
	dept_no varchar,
	primary key(emp_no),
	foreign key(emp_no) references employees_table(emp_no),
	foreign key(dept_no) references departments_table(dept_no));



drop table if exists departments_table;

create table departments_table (
	dept_no varchar,
	dept_name varchar,
	primary key(dept_no));


drop table if exists dept_manager_table;

create table dept_manager_table (
	dept_no varchar,
	emp_no varchar,
	primary key (dept_no , emp_no),
	foreign key(dept_no) references departments_table(dept_no),
	foreign key(emp_no) references employees_table(emp_no));
