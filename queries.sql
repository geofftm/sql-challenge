-- 1. List the following details of each employee: employee number, 
--last name, first name, sex, and salary.

select employees.emp_no, 
	   employees.last_name, 
	   employees.first_name, 
	   employees.sex, 
	   salaries.salary
from employees
left join salaries
on employees.emp_no = salaries.emp_no;

select * from employees;

-- 2. List first name, last name, and hire date for employees who were hired in 1986.

select first_name, 
	   last_name, 
	   hire_date
from employees
WHERE hire_date BETWEEN '1986-01-01' and '1986-12-31'
order by (hire_date)
ASC;  

-- 3. List the manager of each department with the following information: department number, department name, 
--the manager's employee number, last name, first name.

select dept_manager.dept_no,
	   departments.dept_name,
	   dept_manager.emp_no,
	   employees.last_name,
	   employees.first_name
from dept_manager
inner join departments
on dept_manager.dept_no = departments.dept_no
inner join employees
on employees.emp_no = dept_manager.emp_no
;

-- 4. List the department of each employee with the following information: 
--employee number, last name, first name, and department name.

select employees.emp_no,
	   employees.last_name,
	   employees.first_name,
	   departments.dept_name
from employees 
inner join dept_emp 
on employees.emp_no = dept_emp.emp_no
inner join departments
on departments.dept_no = dept_emp.dept_no;

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

--7. List all employees in the Sales and Development departments, 
--including their employee number, last name, first name, and department name.

select emp.emp_no,
	   emp.last_name,
	   emp.first_name,
	   dept.dept_name
from employees as emp
inner join dept_emp as demp
on emp.emp_no = demp.emp_no
inner join departments as dept
on dept.dept_no = demp.dept_no
where dept.dept_name = 'Sales' or dept.dept_name = 'Development'
order by emp.emp_no;

--8. In descending order, list the frequency count of employee last names, 
--i.e., how many employees share each last name.

select last_Name, count(last_name ) as last_name_frequency
from employees
group by last_name
order by
count(last_name) desc;