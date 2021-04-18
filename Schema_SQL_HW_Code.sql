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
	emp_no varchar,
	emp_title_no varchar,
	birth_date varchar,
	first_name varchar,
	last_name varchar,
	sex varchar,
	hire_date varchar,
	foreign key (emp_title_no) references title(title_id)
);
select * from employee
------------------------------
create table salary(
	emp_no varchar,
	salary int
);
select * from salary

------------------------------
------------------------------

