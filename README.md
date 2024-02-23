# sql-challenge

Module 9 Challenge - SQL

Files and folders in repository:
1. The "data" folder contains the following CSV files provided to complete challenge:
    - departments.csv
    - dept_emp.csv
    - dept_manager.csv
    - employees.csv
    - salaries.csv
    - titles.csv
2. The "EmployeeSQL" folder contains the following files:
    - employeeERD.png (screenshot of ERD sketch)
    - pewlett_hackard.sql (my table schemata)
    - ph_queries.sql (my schema for queries used to answer the questions in assignment)
    - schema.txt (text to re-create ERD at quickdatabasediagrams.com)
    

Data Modeling
1. Used quickdatabasediagrams.com to sketch an Entity Relationship Diagram of the tables.
2. Captured the result in a screenshot ("employeeERD.PNG") and text file ("schema.txt").

Data Engineering
1. Used pgAmdin to create a table schema for the CSV files provided.
2. Imported the CSV files into the appropriate tables (in the same order as the tables are listed in the table schema "pewlett_hackard.sql") using pgAdmin's import feature.

Data Analysis - answers found in "ph_queries.sql"
1. List the employee number, last name, first name, sex, and salary of each employee.
2. List the first name, last name, and hire date for the employees who were hired in 1986.
3. List the manager of each department along with their department number, department name, employee number, last name, and first name.
4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
6. List each employee in the Sales department, including their employee number, last name, and first name.
7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).