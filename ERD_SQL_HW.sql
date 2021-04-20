dept
-
dept_no varchar PK
dept_name varchar

title
-
title_id varchar PK
title varchar

dept_mgr
-
dept_no varchar FK >- dept.dept_no
emp_no int FK >- employee.emp_no

dept_employee
-
emp_no int FK >- employee.emp_no
dept_no varchar FK >- dept.dept_no

employee
-
emp_no int PK
emp_title_no varchar FK >- title.title_id
birth_date date
first_name varchar
last_name varchar
sex varchar
hire_date date

salary
-
emp_no int FK >- employee.emp_no
salary int PK