
--UC 11 : Implemetation of E-R concept

use payroll_services;
select * from employee_payroll;
--Creating table departments
create table departments
(DeptId int not null primary key,
DeptName varchar(100) not null);
--Adding data into departments table
insert into departments values
(100,'Sales'),
(101,'Marketing'),
(102,'HR'),
(103,'Accounts and Finance');
select * from departments;
--Creating companies table
create table companies
(CompanyId int not null primary key,
CompanyName varchar(150) not null);
select * from companies;
--Adding data to table
insert into companies values
(1,'Capgemini'),
(2,'Bridgelabz');

--Creating employees Table
create table employees
(EmpId int not null identity(1,1) primary key,
deptID int not null foreign key references departments(DeptID),
EmpName varchar(150) not null,
Gender char(1) not null,
PhoneNo bigint not null,
Address varchar(500) not null,
StartDate date not null,
CompanyId int not null foreign key references companies(CompanyID),
salary float NOT NULL);

--Adding data to employees table
insert into employees values
(101,'Tony','M',3456787654,'Gujrat','2020-03-28',1,40000),
(100,'Teressa','F',5677893456,'Hyderabad','2019-05-12',1,35000),
(103,'Steve Rogers','M',2345678765,'Orissa','2019-02-13',2,32000),
(102,'Nick Fury','M',3452341234,'Karnataka','2020-06-04',1,72000),
(102,'Steph Curry','M',7898765678,'Haryana','2020-07-04',2,50000);
select * from employees;

--Creating table payrolls
create table payrolls
(EmpId int not null foreign key references employees(EmpID),
BasicPay float not null,
Deductions float not null,
TaxablePay float not null,
Tax float not null,
NetPay float not null);
--Adding data into the payrolls table
insert into payrolls values
(5,90000,5000,85000,5000,80000),
(6,50000,5000,45000,4000,41000),
(7,60000,4000,56000,4000,52000),
(8,90000,5000,85000,5000,80000),
(9,90000,5000,85000,5000,80000);
select * from payrolls;

--Creating new table employee_dept to reduce many to many relation between employee and department
create table employee_depts
(EmpId int not null foreign key references employees(EmpID),
DeptId int not null foreign key references departments(DeptID));
--Adding Teressa details into table
insert into employee_depts values
(5,101),
(6,100),
(7,103),
(8,102),
(9,102),
(6,101);
select * from employee_depts;
