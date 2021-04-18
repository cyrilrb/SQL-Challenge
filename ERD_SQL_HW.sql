department
-
department_no varchar PK
department_name varchar

dept_employee
- 
department_no varchar FK >- department.department_no
emp_no varchar FK >- employee.emp_no

dept_mgr
- 
department_no varchar FK >- department.department_no
emp_no varchar FK >- employee.emp_no

employee
-
emp_no int PK 
title_no varchar FK >- title.title_no
emp_bday varchar
first_name varchar
last_name varchar
emp_sex varchar
hire_date varchar

salary
-
emp_no int FK >- employee.emp_no
salary int

title
-
title_no varchar PK
title varchar