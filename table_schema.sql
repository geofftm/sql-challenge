-- create departments table

CREATE TABLE departments(
	dept_no VARCHAR(30) NOT NULL, 
	dept_name VARCHAR(30) NOT NUll,
	PRIMARY KEY (dept_no)
);

select * from departments;

-- create employees table (has to go before dept_emp so it can reference the PK)
-- titles had to be created before employees so employees could have FK title_id


CREATE TABLE employees(
	emp_no INT NOT NULL, 
	emp_title_id VARCHAR(30) NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	sex VARCHAR(7) NOT NULL,
	hire_date DATE NOT NULL,
	PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

select * from employees;

-- create dept_emp table 

CREATE TABLE dept_emp(
	emp_no INT NOT NULL,
	dept_no VARCHAR(30) NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

select * from dept_emp;

-- create dept_manager table

CREATE TABLE dept_manager(
	dept_no VARCHAR(30) NOT NULL,
	emp_no INT NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

select * from dept_manager;

-- create salaries table


CREATE TABLE salaries(
	emp_no INT NOT NULL,
	salary INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

select * from salaries;

-- create titles table

CREATE TABLE titles(
	title_id VARCHAR(30) NOT NULL,
	title VARCHAR(30) NOT NULL,
	PRIMARY KEY (title_id)
);

select * from titles;