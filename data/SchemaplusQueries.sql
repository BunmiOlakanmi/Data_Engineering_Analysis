-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/6OYd88
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "titles" (
    "title_id" Varchar   NOT NULL,
    "title" Varchar   NOT NULL,
    CONSTRAINT "pk_titles" PRIMARY KEY (
        "title_id"
     )
);

--CREATE TABLE "dept_manager" (
--    "emp_no" INT   NOT NULL,
--    "dept_no" Varchar   NOT NULL,
--    CONSTRAINT "pk_dept_manager" PRIMARY KEY (
--        "emp_no","dept_no"
--     )
--);

CREATE TABLE dept_manager (
    dept_no VARCHAR   NOT NULL,
    emp_no INT   NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
    PRIMARY KEY (dept_no, emp_no)
);

CREATE TABLE "employees" (
    "emp_no" INT   NOT NULL,
    "emp_title" Varchar   NOT NULL,
    "birth_date" Varchar   NOT NULL,
    "first_name" Varchar   NOT NULL,
    "last_name" Varchar   NOT NULL,
    "sex" Varchar   NOT NULL,
    "hire_date" Varchar   NOT NULL,
    CONSTRAINT "pk_employees" PRIMARY KEY (
        "emp_no"
     )
);

CREATE TABLE "dept_emp" (
    "emp_no" INT   NOT NULL,
    "dept_no" Varchar   NOT NULL,
    CONSTRAINT "pk_dept_emp" PRIMARY KEY (
        "emp_no","dept_no"
     )
);

CREATE TABLE "salaries" (
    "emp_no" INT   NOT NULL,
    "salary" INT   NOT NULL,
    CONSTRAINT "pk_salaries" PRIMARY KEY (
        "emp_no"
     )
);

CREATE TABLE "departments" (
    "dept_no" Varchar   NOT NULL,
    "dept_name" Varchar   NOT NULL,
    CONSTRAINT "pk_departments" PRIMARY KEY (
        "dept_no"
     )
);

--ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_emp_no" FOREIGN KEY("emp_no")
--REFERENCES "employees" ("emp_no");

--ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_dept_no" FOREIGN KEY("dept_no")
--REFERENCES "departments" ("dept_no");


ALTER TABLE "employees" ADD CONSTRAINT "fk_employees_emp_title" FOREIGN KEY("emp_title")
REFERENCES "titles" ("title_id");

ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_dept_no" FOREIGN KEY("dept_no")
REFERENCES "departments" ("dept_no");

ALTER TABLE "salaries" ADD CONSTRAINT "fk_salaries_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

--Homework Queries--

--List the following details of each employee: 
--employee number, last name, first name, sex, and salary

select employees.emp_no, last_name, first_name, sex, salary
from employees, salaries
where employees.emp_no = salaries.emp_no

--List first name, last name, and hire date for employees who were hired in 1986.
select first_name, last_name, hire_date
from employees
where hire_date like  '%1986'

--List the manager of each department with the following information: 
--department number, department name, the manager's employee number, last name, first name.

Select dept_manager.dept_no as "Department Number", departments.dept_name as "Department Name", dept_manager.emp_no as "Employee Number of Managers", employees.last_name as "Lastname", employees.first_name as "Firstname"
from dept_manager, departments, employees
where dept_manager.dept_no = departments.dept_no
and dept_manager.emp_no = employees.emp_no

--List the department of each employee with the following information: 
--employee number, last name, first name, and department name.

Select employees.emp_no as "Employee Number", last_name as "Last name", first_name as "First Name", dept_name  as "Department Name"
from employees, departments, dept_emp
where employees.emp_no = dept_emp.emp_no
and departments.dept_no = dept_emp.dept_no

--List first name, last name, and sex for employees whose first name is 
--"Hercules" and last names begin with "B."

Select first_name as "Last name", last_name as "Last name", sex as "Sex"
from employees 
where first_name = 'Hercules'
and last_name like 'B%'

--List all employees in the Sales department, including their employee number, 
--last name, first name, and department name.

select emp_no as "Employee Number", last_name as "Last name", first_name as "First name", dept_name as "Department"
from employees, departments
where departments.dept_name = 'Sales'

--List all employees in the Sales and Development departments, including their 
--employee number, last name, first name, and department name.

select emp_no as "Employee Number", last_name as "Last name", first_name as "First name", dept_name as "Department"
from employees, departments
where departments.dept_name IN('Sales', 'Development')

--In descending order, list the frequency count of employee last names, 
--i.e., how many employees share each last name.
select last_name as "Last Name", count(last_name) as "Frequency Count of Employee Last Names"
from employees
GROUP BY last_name
ORDER BY last_name DESC
