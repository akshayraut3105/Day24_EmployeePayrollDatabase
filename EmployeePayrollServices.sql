-- UC 2 : Ability to create a employee payroll table in the payroll service database to manage employee payrolls
--Using the payroll_service DB 
use payroll_services;
--Creating a table 
create table employee_payroll
(EmpID int not null identity(1,1) primary key,
EmpName varchar(150) not null,
Salary float not null,
StartDate date not null
);
