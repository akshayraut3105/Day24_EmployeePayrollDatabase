--UC 9 : Ability to extend employee_payroll table to have Basic Pay,Deductions,Taxable Pay,Income Tax, Net Pay

use payroll_services;
select * from employee_payroll;
--Adding new columns
alter table employee_payroll add
BasicPay float,
Deductions float,
TaxablePay float,
Income_Tax float,
NetPay float;
