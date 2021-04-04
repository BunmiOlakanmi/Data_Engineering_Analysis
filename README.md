# Employee Database: Data Engineering and Analysis
This project is divided into two sections : data engineering and data analysis of an employee database.

### Tools used in this project
1.  Python Libraries:
    - config
    - matplotlib.pyplot
    - pandas
    - SQLAlchemy
2.  Jupyter Notebook
3.  PostgreSQL
4.  Quick database diagram tool at http://www.quickdatabasediagrams.com

### Data Engineering
The purpose of this section of the project is to draw the entity-relationship diagram (ERD) showing the relationships between the tables in the employee database, and to load the employee data from the csv files to PostgreSQL. The employee data is initially given on six csv files, which were used in sketching the ERD of the six tables from the six csv files using http://www.quickdatabasediagrams.com. The final ERD is named EmployeeDB_ERD.png.

#### Instructions
To try this section of the project, ensure that all csv files and the SQL queries are saved in the same folder on your computer.
1.  ERD diagram 'EmployeeDB_ERD.png' can be created using http://www.quickdatabasediagrams.com.
2.  Create the employee database in postgreSQL.
3.  Run the EmployeeDB_Tables.sql file in postgreSQL to create all the tables and their relationships.
4.  Load each csv file into their corresponding table in postgreSQL.

![EmployeeDB_ERD](https://user-images.githubusercontent.com/71471355/113506818-3c5bf780-9504-11eb-886c-351906c611b6.png)

From http://www.quickdatabasediagrams.com, the table schema for each of the six CSV files is created, specifying the data types, primary keys, foreign keys, and other constraints. The queries used in creating the six tables are saved in EmployeeDB_Tables.sql file. Then, the CSV files are loaded into the corresponding SQL tables in postgreSQL. 

#### File Description
1.  EmployeeDB_ERD.png contains the ERD of the database.
2.  EmployeeDB_Tables.sql contains SQL queries to create all the tables and the relationships between them.
3.  Resources folder contains all the six csv files used to populate the tables in the database.


### Data Analysis
The purpose of this section of the project is to analyse the employee data stored in the postgreSQL in order to get some information, using SQL queries. The queries are stored in the EmployeeDB_Queries.sql file. The information required from the analyses are:

* The following details of each employee: employee number, last name, first name, sex, and salary.

* The first name, last name, and hire date for employees who were hired in 1986.

* The manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

* The department of each employee with the following information: employee number, last name, first name, and department name.

* The first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

* All employees in the Sales department, including their employee number, last name, first name, and department name.

* All employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

* In descending order, the frequency count of employee last names, i.e., how many employees share each last name.


In addition to the analyses mentioned above, the employee database was imported to Pandas using SQLAlchemy. Then, the following charts were created

* A histogram to visualize the most common salary ranges for employees.

* A bar chart of average salary by title.

<img width="570" alt="Screen Shot 2021-04-05 at 5 35 17 AM" src="https://user-images.githubusercontent.com/71471355/113507462-d83b3280-9507-11eb-8870-ebee5c93e8e1.png">
<img width="469" alt="Screen Shot 2021-04-05 at 5 36 05 AM" src="https://user-images.githubusercontent.com/71471355/113507463-d96c5f80-9507-11eb-9704-44e76ba16c5a.png">

#### Instructions
1.  To see the output of the analyses above, run the SQL queries in EmployeeDb_Queries.sql file using the query tool in postgreSQL.
2.  To see the visualization, run the EmployeeSQL.ipynb file in Jupyter Notebook.

#### File Description
1.  EmployeeSQL.ipynb contains the python code to import the employee database from postgreSQL using SQLAlchemy, and visualize some information from the data.
2.  EmployeeDb_Queries.sql contains the SQL queries used to do the data analyses. 


