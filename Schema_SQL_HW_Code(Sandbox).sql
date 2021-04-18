drop table if exists dept;
drop table if exists dept_mgr;
drop table if exists dept_employee;
drop table if exists employee;
drop table if exists salary;
drop table if exists title;

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
	dept_no varchar,
	emp_no varchar,
	foreign key (dept_no) references dept(dept_no)
);
select * from dept_mgr
------------------------------
create table dept_employee(
	dept_no varchar,
	emp_no varchar,
	foreign key (dept_no) references dept(dept_no)
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
	hire_date date,
	foreign key (emp_title_no) references title(title_id)
);

-- foreign key (emp_no) references employee(emp_no)
select * from employee
------------------------------
create table salary(
	emp_no varchar,
	salary int,
	foreign key (emp_no) references employee(emp_no)
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
from employee
inner join salary on employee.emp_no = salary.emp_no;
-- order by employee.last_name;
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




--Second part of what is asked: em-_no, Last name, First name
select dept_mgr.emp_no,  employee.last_name,employee.first_name
from employee
inner join dept_mgr on employee.emp_no = dept_mgr.emp_no
-- department.dept_name, dept_mgr.dept_no,


select dept_mgr.emp_no, dept_mgr.dept_no, dept.dept_name
from dept_mgr
inner join dept_name on dept_mgr.dept_no = dept.dept_no

select * from dept_mgr;

