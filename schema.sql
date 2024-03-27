--DROP TABLE IF EXISTS departments;
--DROP TABLE IF EXISTS dept_emp;
--DROP TABLE IF EXISTS dept_manager;
--DROP TABLE IF EXISTS employees;
--DROP TABLE IF EXISTS salaries;
--DROP TABLE IF EXISTS titles;


CREATE TABLE departments(
dept_no VARCHAR(20) PRIMARY KEY,
dept_name VARCHAR(100) NOT NULL);

SELECT * FROM departments



CREATE TABLE dept_emp ( 
emp_no INT NOT NULL,
dept_no VARCHAR(15) NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
PRIMARY KEY (emp_no, dept_no)
);
SELECT * FROM dept_emp


CREATE TABLE dept_manager (
dept_no VARCHAR(10)NOT NULL,
emp_no INT NOT NULL,
PRIMARY KEY (emp_no, dept_no),
FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

SELECT * FROM dept_manager


CREATE TABLE employees(
emp_no INT PRIMARY KEY ,
emp_title_id VARCHAR(10),
birth_date DATE NOT NULL,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
sex VARCHAR(1) NOT NULL,
hire_date DATE NOT NULL,
FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

SELECT * FROM employees


CREATE TABLE salaries(
emp_no INT PRIMARY KEY,
salary INT NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employees(emp_no));

SELECT * FROM salaries

CREATE TABLE titles (
title_id VARCHAR(10) NOT NULL,
title VARCHAR(100) NOT NULL,
PRIMARY KEY (title_id)
);

SELECT * FROM titles 