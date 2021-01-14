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

select emp.emp_no,
	   emp.last_name,
	   emp.first_name,
	   dept.dept_name
from employees as emp
inner join dept_emp as demp
on emp.emp_no = demp.emp_no
inner join departments as dept
on dept.dept_no = demp.dept_no;

-- 5. List first name, last name, and sex for employees whose first name 
--is "Hercules" and last names begin with "B."

select first_name, last_name, sex
from employees
where first_name = 'Hercules' and last_name like 'B%';

-- 6. List all employees in the Sales department, including their employee number, 
--last name, first name, and department name.
select emp.emp_no,
	   emp.last_name,
	   emp.first_name,
	   dept.dept_name
from employees as emp
inner join dept_emp as demp
on emp.emp_no = demp.emp_no
inner join departments as dept
on dept.dept_no = demp.dept_no
where dept.dept_name = 'Sales'
order by emp.emp_no;

-- 7. 