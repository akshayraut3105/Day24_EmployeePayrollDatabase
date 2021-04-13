--UC 10 : Ability to make Terissa as part of Sales and Marketing Department

use payroll_services;
select * from employee_payroll;
--update data into the table
update employee_payroll set 
PhoneNo=9988778877,
Address='Lucknow',
Department='Sales',
BasicPay=20000,
Deductions=2000,
TaxablePay=1000,
Income_Tax=200,
NetPay=18000
where EmpName='Teressa';
--Adding Teressa as a part of Marketing team also
insert into employee_payroll values('Teressa',40000,'2019-05-12','F',9988778877,'Lucknow','Marketing',20000,2000,1000,200,18000);
--Two rows for Teressa is created with different emp id which means they are two different employee
--If any column is to be updated all rows for the same need to be updated creating unnecessary redundancy
select * from employee_payroll where EmpName='Teressa';
