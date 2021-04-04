# Employee Database: Data Engineering and Analysis
This project is divided into two sections : data engineering and data analysis of an employee database.

### Tools used in this project
1.  Python Libraries:
    - csv
    - os
    - pandas
2.  Jupyter Notebook
3.  PostgreSQL
4.  Quick database diagram tool at http://www.quickdatabasediagrams.com

### Data Engineering
The purpose of this section of the project is to draw the entity-relationship diagram (ERD) showing the relationships between the tables in the employee database, and to load the employee data from the csv files to PostgreSQL. The employee data is initially given on six csv files, which were used in sketching the ERD of the six tables from the six csv files using http://www.quickdatabasediagrams.com. The final ERD is named EmployeeDB_ERD.png.



![EmployeeDB_ERD](https://user-images.githubusercontent.com/71471355/113506818-3c5bf780-9504-11eb-886c-351906c611b6.png)

From http://www.quickdatabasediagrams.com, the table schema for each of the six CSV files is created, specifying the data types, primary keys, foreign keys, and other constraints. The queries used in creating the six tables are saved in EmployeeDB_Tables.sql file. Then, the CSV files are loaded into the corresponding SQL tables in postgreSQL. 


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
