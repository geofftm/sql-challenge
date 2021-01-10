-- create departments table

DROP TABLE departments; 

CREATE TABLE departments(
	dept_no VARCHAR(30) NOT NULL, 
	dept_name VARCHAR(30) NOT NUll,
	PRIMARY KEY (dept_no)
);

select * from departments;

-- create employees table (has to go before dept_emp so it can reference the PK)

DROP TABLE employees;

CREATE TABLE employees(
	emp_no INT NOT NULL, 
	emp_title_id VARCHAR(30) NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	sex VARCHAR(7) NOT NULL,
	hire_date DATE NOT NULL,
	PRIMARY KEY (emp_no)
	--would like to make (title_id a foreign key but can't figure it out as of yet)
);

select * from employees;

-- create dept_emp table 

DROP TABLE dept_emp;

CREATE TABLE dept_emp(
	emp_no INT NOT NULL,
	dept_no VARCHAR(30) NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

select * from dept_emp;

-- create dept_manager table

DROP TABLE dept_manager;

CREATE TABLE dept_manager(
	dept_no VARCHAR(30) NOT NULL,
	emp_no INT NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

select * from dept_manager;

-- create salaries table

DROP TABLE salaries;

CREATE TABLE salaries(
	emp_no INT NOT NULL,
	salary INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

select * from salaries;

-- create titles table

DROP TABLE titles;

CREATE TABLE titles(
	title_id VARCHAR(30) NOT NULL,
	title VARCHAR(30) NOT NULL,
	PRIMARY KEY (title_id)
);

select * from titles;