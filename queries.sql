-- 1. List the following details of each employee: employee number, 
--last name, first name, sex, and salary.

select employees.emp_no, 
	   employees.last_name, 
	   employees.first_name, 
	   employees.sex, 
	   salaries.salary
from employees
join salaries
on employees.emp_no = salaries.emp_no;

select * from employees;

-- 2. List first name, last name, and hire date for employees who were hired in 1986.

select first_name, 
	   last_name, 
	   hire_date
from employees
WHERE hire_date BETWEEN '1986-01-01' and '1986-12-31';  

-- 3. List the manager of each department with the following information: department number, department name, 
--the manager's employee number, last name, first name.

select dept_manager.dept_no,
	   departments.dept_name,
	   dept_manager.emp_no,
	   employees.last_name,
	   employees.first_name
from dept_manager
join departments
on dept_manager.dept_no = departments.dept_no
join employees
on employees.emp_no = dept_manager.emp_no
;

-- 4. List the department of each employee with the following information: 
--employee number, last name, first name, and department name.

select employees.emp_no,
	   employees.last_name,
	   employees.first_name,
	   departments.dept_name
from employees
join dept_emp
on employees.emp_no = dept_emp.emp_no
join departments
on departments.dept_no = dept_emp.dept_no;




