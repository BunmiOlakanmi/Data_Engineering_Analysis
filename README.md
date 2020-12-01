# sql-challenge

This challenge is divided into two sections : data engineering and data analysis.

### Data Engineering

Six csv files were provided. So, I sketched the ERD of six tables from the csv files provided, using http://www.quickdatabasediagrams.com.
The final ERD is named EmployeeDB_ERD.png

* I created a table schema for each of the six CSV files provided, specifying the data types, primary keys, foreign keys, and other constraints.
The queries used in creating the six tables are saved in EmployeeDB_Tables.sql file.

* I Imported each CSV file into the corresponding SQL table. 

### Data Analysis

I did the following analyses on the data, using PostgreSQL. The queries are stored in the EmployeeDB_Queries.sql file.
* List the following details of each employee: employee number, last name, first name, sex, and salary.


* Listed first name, last name, and hire date for employees who were hired in 1986.


* Listed the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.


* Listed the department of each employee with the following information: employee number, last name, first name, and department name.


* Listed first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."


* Listed all employees in the Sales department, including their employee number, last name, first name, and department name.


* Listed all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.


* In descending order, I listed the frequency count of employee last names, i.e., how many employees share each last name.

In addition to the analyses mentioned above, I did the following:

* Imported the SQL database into Pandas. 

* Created a histogram to visualize the most common salary ranges for employees.

* Created a bar chart of average salary by title.
