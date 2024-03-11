
CREATE TABLE departments(
dept_no VARCHAR PRIMARY KEY,
dept_name VARCHAR);

SELECT * FROM departments



CREATE TABLE dept_em (
id SERIAL PRIMARY KEY, 
emp_no INT,
dept_no VARCHAR 
);
SELECT * FROM dept_em
--ALTER TABLE dept_em
--ALTER COLUMN emp_no TYPE INT
--USING emp_no::integer

CREATE TABLE dept_manager (
dept_no VARCHAR,
emp_no INT PRIMARY KEY);

SELECT * FROM dept_manager


CREATE TABLE employees(
emp_no INT PRIMARY KEY ,
emp_title_id VARCHAR,
birth_date DATE,
first_name VARCHAR,
last_name VARCHAR,
sex VARCHAR,
hire_date DATE);

SELECT * FROM employees


CREATE TABLE salaries(
emp_no INT PRIMARY KEY,
salary INT);

SELECT * FROM salaries

CREATE TABLE titles (
id SERIAL PRIMARY KEY,
title_id VARCHAR,
title VARCHAR);

SELECT * FROM titles 