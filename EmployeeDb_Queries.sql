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

Select first_name as "First name", last_name as "Last name", sex as "Sex"
from employees 
where first_name = 'Hercules'
and last_name like 'B%'

--List all employees in the Sales department, including their employee number, 
--last name, first name, and department name.

select employees.emp_no as "Employee Number", last_name as "Last name", first_name as "First name", dept_name as "Department"
from employees, departments, dept_emp
where dept_emp.emp_no = employees.emp_no
and departments.dept_no = dept_emp.dept_no
and departments.dept_name = 'Sales'

--List all employees in the Sales and Development departments, including their 
--employee number, last name, first name, and department name.

select employees.emp_no as "Employee Number", last_name as "Last name", first_name as "First name", dept_name as "Department"
from employees, departments, dept_emp
where dept_emp.emp_no = employees.emp_no
and dept_emp.dept_no = departments.dept_no
and departments.dept_name IN('Sales', 'Development')

--In descending order, list the frequency count of employee last names, 
--i.e., how many employees share each last name.

-- Order by last_name in descending order
select last_name as "Last Name", count(last_name) as "Frequency Count of Employee Last Names"
from employees
GROUP BY last_name
ORDER BY last_name DESC

-- Order by descending order of count of last_name
select last_name as "Last Name", count(last_name) as "Frequency Count of Employee Last Names"
from employees
GROUP BY last_name
ORDER BY "Frequency Count of Employee Last Names" DESC