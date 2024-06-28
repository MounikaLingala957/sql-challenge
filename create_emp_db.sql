-- Drop table if exists
DROP TABLE IF EXISTS departments;
-- Drop table if exists
DROP TABLE IF EXISTS titles;
-- Drop table if exists
DROP TABLE IF EXISTS employees;
-- Drop table if exists
DROP TABLE IF EXISTS dept_emp;
-- Drop table if exists
DROP TABLE IF EXISTS dept_manager;
-- Drop table if exists
DROP TABLE IF EXISTS salaries;

--creating Tables:

CREATE TABLE departments(
	dept_no varchar (20) PRIMARY KEY,
	dept_name varchar(30) NOT NULL
	
);

CREATE TABLE titles(
	title_id varchar(20) PRIMARY KEY ,
	title varchar (30) NOT NULL
);
	
CREATE TABLE employees(
	emp_no INT PRIMARY KEY ,
	emp_title varchar (30) NOT NULL,
	birth_date Date NULL,
	first_name varchar (50)NOT NULL,
	last_name varchar (50)NOT NULL,
	sex varchar(10) NOT NULL,
	hire_date Date NOT NULL ,
	FOREIGN KEY (emp_title) REFERENCES titles(title_id)
);
CREATE TABLE dept_emp (
    emp_no INT NOT NULL,
    dept_no varchar (30) NOT NULL,
	FOREIGN  KEY (dept_no) REFERENCES departments (dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)

 );

CREATE TABLE dept_manager(
	dept_no varchar(30) NOT NULL,
	emp_no  INT NOT NULL,
	FOREIGN  KEY (dept_no) REFERENCES departments (dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
	
) ;

CREATE TABLE salaries (
	emp_no INT NOT NULL,
	salary INT ,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);
