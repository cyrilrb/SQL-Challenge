drop table if exists dept cascade;
drop table if exists dept_mgr cascade;
drop table if exists dept_employee cascade;
drop table if exists employee cascade;
drop table if exists salary cascade;
drop table if exists title cascade;
------------------------------
create table dept(
	dept_no varchar primary key,
	dept_name varchar
);
select * from dept

------------------------------
create table title(
	title_id varchar primary key,
	title varchar
);
select * from title
------------------------------
create table dept_mgr(
	dept_no varchar,
	emp_no int
);
select * from dept_mgr
------------------------------
create table dept_employee(
	emp_no int,
	dept_no varchar
);
select * from dept_employee
------------------------------
create table employee(
	emp_no int primary key,
	emp_title_no varchar,
	birth_date date,
	first_name varchar,
	last_name varchar,
	sex varchar,
	hire_date date
);

select * from employee
------------------------------
create table salary(
	emp_no int primary key,
	salary int
);
select * from salary

------------------------------

