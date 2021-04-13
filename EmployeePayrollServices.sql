--UC 8 : Ability to extend employee_payroll data to store employee information like employee phone, address and department

use payroll_services;
select * from employee_payroll;
--Adding new columns
alter table employee_payroll add 
PhoneNo bigint,
Address varchar(600) not null default 'ADDRESS NOT AVAILABLE',
Department varchar(500) not null default 'DEPARTMENT NOT AVAILABLE';