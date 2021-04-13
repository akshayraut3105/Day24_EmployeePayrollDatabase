/*UC 12 : Ensuring all retrieve queries are working fine with new table structure*/

use payroll_services;
select * from companies;
select * from employees;
select * from payrolls;
select * from departments;
select * from employee_depts;

--UC 4 working
select e.EmpId,e.EmpName,e.Gender,e.PhoneNo,e.Address,e.StartDate,p.NetPay,d.DeptName
from employees e,payrolls p,departments d,employee_depts ed
where e.EmpId=p.EmpId and ed.EmpId=e.EmpId and ed.DeptId=d.DeptId;

--UC 5 working
select e.EmpId,e.EmpName,p.BasicPay,p.Deductions,p.TaxablePay,p.Tax,p.NetPay
from employees e,payrolls p
where e.EmpName='Teressa' and e.EmpId=p.EmpId;

--UC 7
select e.Gender,
count(e.EmpId) as EmpCount,
min(p.NetPay) as MinSalary,
max(p.NetPay) as MaxSalary,
sum(p.NetPay) as SalarySum,
avg(p.NetPay) as AvgSalary
from employees e,payrolls p
 where e.EmpId=p.EmpId group by Gender;
 select * from payrolls
