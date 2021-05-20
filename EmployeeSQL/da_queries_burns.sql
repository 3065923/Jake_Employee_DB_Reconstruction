-- Queries for data analyst questions

--List the following details of each employee: employee number, last name, first name, sex, and salary.

create view da_query_1 as
select e.emp_no, e.last_name, e.first_name, e.sex, s.salary 
from employees_table as e
left join salaries_table as s on
e.emp_no=s.emp_no;


--List first name, last name, and hire date for employees who were hired in 1986.

create view da_query_2 as
select first_name, last_name, hire_date
from employees_table
where hire_date like '%1986';

--List the manager of each department with the following information: department number, 
-- department name, the manager's employee number, last name, first name.

create view da_query_3 as
select d.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
from departments_table as d
left join dept_manager_table as dm
	on d.dept_no = dm.dept_no
left join employees_table as e
	on dm.emp_no = e.emp_no;
	
--List the department of each employee with the following 
-- information: employee number, last name, first name, and department name.

create view da_query_4 as
select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees_table as e
left join dept_emp_table as de
	on e.emp_no = de.emp_no
left join departments_table as d
	on d.dept_no = de.dept_no;

--List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

create view da_query_5 as
select first_name, last_name, sex
from employees_table
where first_name = 'Hercules' and last_name like 'B%';

--  List all employees in the Sales department, 
--  including their employee number, last name, first name, and department name.

create view da_query_6 as
select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees_table as e
left join dept_emp_table as de
	on e.emp_no = de.emp_no
left join departments_table as d
	on d.dept_no = de.dept_no
	where d.dept_name = 'Sales';

--List all employees in the Sales and Development departments, including 
-- their employee number, last name, first name, and department name.

create view da_query_7 as
select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees_table as e
left join dept_emp_table as de
	on e.emp_no = de.emp_no
left join departments_table as d
	on d.dept_no = de.dept_no
	where d.dept_name = 'Sales' or d.dept_name = 'Development';
	
-- In descending order, list the frequency count of 
--  employee last names, i.e., how many employees share each last name.

create view da_query_8 as
select last_name, count(last_name)
from employees_table
group by last_name
order by count desc;
