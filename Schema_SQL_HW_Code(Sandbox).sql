drop table if exists dept cascade;
drop table if exists dept_mgr cascade;
drop table if exists dept_employee cascade;
drop table if exists employee cascade;
drop table if exists salary cascade;
drop table if exists title cascade;

create table dept(
	dept_no varchar primary key,
	dept_name varchar
);
select * from dept

-- foreign key (dept_no) references dept(dept_no)
------------------------------
create table title(
	title_id varchar primary key,
	title varchar
);
-- foreign key (emp_title_no) references title(title_id)
select * from title
------------------------------
create table dept_mgr(
	dept_no varchar primary key,
	emp_no varchar
-- 	foreign key (dept_no) references dept(dept_no)
);
select * from dept_mgr
------------------------------
create table dept_employee(
	emp_no varchar  primary key,
	dept_no varchar
-- 	foreign key (dept_no) references dept(dept_no)
);
select * from dept_employee
------------------------------
create table employee(
	emp_no varchar primary key,
	emp_title_no varchar,
	birth_date varchar,
	first_name varchar,
	last_name varchar,
	sex varchar,
	hire_date date
-- 	foreign key (emp_title_no) references title(title_id)
);

-- foreign key (emp_no) references employee(emp_no)
select * from employee
------------------------------
create table salary(
	emp_no varchar primary key,
	salary int
-- 	foreign key (emp_no) references employee(emp_no)
);
select * from salary

------------------------------
------------------------------
/*
Table 1 = List details of each employee: 
employee number, 
last name, 
first name, 
sex,
salary.
*/

select employee.emp_no, employee.last_name, employee.first_name, employee.sex, salary.salary
from salary
inner join employee on employee.emp_no = salary.emp_no;
------------------------------
------------------------------
/*
Table 2 = List first name, 
last name, 
and hire date 
for employees who were hired in 1986.
*/
select employee.first_name, employee.last_name,  employee.hire_date
from employee
where employee.hire_date between date '1/1/1986' and date '12/31/1986';

/*
Table 3 = List the manager of each department with the following information: 
department number, 
department name, 
the manager's employee number, 
last name, 
first name.
*/

select dept_mgr.dept_no, dept.dept_name, dept_mgr.emp_no,  employee.last_name,employee.first_name
from ((dept_mgr
inner join dept on dept.dept_no = dept_mgr.dept_no)	   
inner join employee on employee.emp_no = dept_mgr.emp_no);

/*
Table 4 = List the department of each employee with the following information: 
employee number, 
last name, 
first name, and 
department name.
*/

select employee.emp_no, employee.last_name,employee.first_name, dept.dept_name
from ((dept_mgr
inner join dept on dept.dept_no = dept_mgr.dept_no)	   
inner join employee on employee.emp_no = dept_mgr.emp_no);	   


/*
Table #5 = List 
first name, 
last name, and 
sex 
for employees whose first name is "Hercules" 
and 
last names begin with "B."
*/

select employee.first_name, employee.last_name,  employee.sex
from employee
where (employee.first_name = 'Hercules') and (employee.last_name like 'B%');

