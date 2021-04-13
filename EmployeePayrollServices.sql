--UC 6 : Ability to add gender to employee payroll table and update rows to display correct emp gender

use payroll_services;
select * from employee_payroll;
-- Alter the table to add new colulmn
alter table employee_payroll add Gender char(1);
--Update the newly created column
update employee_payroll set Gender='M' where EmpName ='Tony' or EmpName ='Steve Rogers' or EmpName ='Nick Fury';
update employee_payroll set Gender='F' where EmpName ='Teressa';