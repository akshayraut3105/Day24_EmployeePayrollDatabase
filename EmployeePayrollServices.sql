--UC 7 : Ability to find sum, average, min salary, max salary and number of male and female employees

use payroll_services;
select * from employee_payroll;
--Ability to find sum, average, min salary, max salary and number of male and female employees
select Gender,
count(salary) as EmpCount,
min(salary) as MinSalary,
max(salary) as MaxSalary,
sum(salary) as SalarySum,
avg(salary) as AvgSalary
from employee_payroll where Gender='M' or Gender='F' group by Gender;