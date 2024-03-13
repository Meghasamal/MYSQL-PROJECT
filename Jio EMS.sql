show databases;

create database EMS;

use ems;

show tables;

create table employee (
Emp_ID int(10),
First_Name varchar(10),
Last_Name varchar(10),
Dept_Code int(2)
);

insert into employee values
(248132604,'Shivam','Deo',76),
(815242615,'Parijat','Shankar',43),
(416122768,'Rahul','Srivastava',66),
(960808929,'Kumar','Swamy',47),
(440361783,'Shankh','Khurana',23),
(851591490,'Swapnil','Mehta',43),
(668957687,'Arvind','Chatterjee',23),
(585068105,'Jalpesh','Modi',33),
(379882096,'Kavita','Yadav',23),
(718929853,'Syed','Zaheer',66),
(873840890,'Sanjay','Shukla',76),
(941877566,'Ragini','Malhotra',33),
(998809976,'Javed','Khan',23),
(669391133,'Vikram','Singh',43),
(861199021,'Ajay','Kumar',23),
(980140890,'Pankaj','Verma',43),
(750603819,'Roshan','Singh',47),
(558885983,'Sunaina','Yadav',76),
(392214056,'Bhavna','Sharma',66),
(164880802,'Pooja','Kumari',47);

select * from employee;


create table department (
Dept_Code int(2),
Dept_Name varchar(25),
Dept_Budget int(10)
);

insert into department values
(23,'Sales and Marketing',50000000),
(66,'Information Technology',100000000),
(43,'Customer Service',30000000),
(33,'Human Resources',20000000),
(76,'Finance and Accounting',40000000),
(47,'Operations',60000000);
 
select * from department;

#1 What are the unique Last_Names from the Employee Table?
select distinct(Last_Name) from employee;

#2 What is the total number of employees in the company?
select count(Emp_ID) from employee;

#3 What is the total budget for the company?
select sum(Dept_Budget) from department;

#4 What is the department code and budget for the "Operations" department?
select dept_code,dept_budget from department where dept_name = 'Operations';

#5 What is the total budget for the "Information Technology" and "Finance and Accounting" departments?
select sum(dept_budget) as total_budget_IT_FandA from department where dept_name in ('Information Technology','Finance and Accounting');

#6 Who are the employees working in the "Sales and Marketing" department?
select employee.First_Name,employee.Last_Name,department.dept_name from employee inner join department 
on employee.dept_code = department.dept_code where dept_name = "Sales and Marketing";

#7 What is the name of the employee with Emp_ID 718929853?
select first_name,last_name from employee where emp_id = 718929853;

#8 What is the budget for the "Customer Service" department?
select dept_budget from department where dept_name = 'Customer Service';

#9 What is the total budget for all departments except "Operations"?
select sum(dept_budget) from department where not dept_name = "Operations";

#10 What is the Emp_ID, First_Name and department_code of the employee with the last name "Shukla"?
select emp_id,first_name,dept_code from employee where Last_Name = 'Shukla';

#11 What is the Emp_ID, First_Name and department_code of the employee with the last name "Shukla"?
select avg(dept_budget) from department where dept_code in (23,43);

#12 How many employees are there whose first name starts with the letter "S"?
select count(emp_id) from employee where first_name like "s%";

#13 List the name of Employees whose First_name starts with "S".
select First_Name from employee where First_Name like "S%";

#14 List the name of Employees whose First_name starts with "S" and ends with "A".
select First_Name from employee where First_Name like "S%A";

#15 Fetch Top 3 records of all the Departments in descending order based on the budget of the department.
select * from department order by dept_budget desc limit 3;

#16 Fetch data of all employees from the employee table whose dept_code is an odd number
select * from employee where (dept_code%2) = 1;
#OR
select * from employee where mod(dept_code,2) = 1;

#17 Create a clone of the table employee with a name Clone_table and having two columns, one with full name and the other with the department code with an alias D_Code
create table clone_table 
select concat(First_Name," ",Last_Name) as Full_Name,dept_code as D_code from employee;
select * from clone_table;

#18 Delete employee details of "Ajay Kumar" from Clone_Table
delete from clone_table where Full_Name = "Ajay Kumar";

#20 Convert Full_name from clone table into uppercase.
select upper(Full_Name) from clone_table;

#21 Fetch second to fifth record from the department table based on the Highest Budget.
select * from department order by dept_budget desc limit 1,4;

#22 The employee with the name "Jalpesh Modi" has decided to move into another department, delete the D_code value corresponding to "Jalpesh_Modi" from the clone_table
update clone_table set D_code = null where Full_Name = 'Jalpesh Modi'; 

#23 Change the name of the column D_Code to Department_code in clone table.
alter table clone_table rename column d_code to Department_code;

#24 Since no mathematical operation will be performed on emp_id in employee table, convert its data type from int to varchar
alter table employee modify column emp_id varchar(10);

#25 The Company has decided to increase the budget of all the department by 10% , make changes accordingly to fetch old and new budget
select dept_budget as old_budget, Dept_Budget*10/100 as increment,dept_budget*110/100 as new_budget from department;

#26 What is the name of the department with the lowest budget?
select dept_name from department where dept_budget = (select min(Dept_Budget) from department);

#27 Who are the employees working in the departments with budgets greater than 40,000,000?
select employee.First_Name ,employee.Last_Name , department.Dept_Budget from employee inner join department
on employee.Dept_Code = department.Dept_Code where Dept_Budget > 40000000;

#28 What is the name of the department with the second highest budget?
select dept_name from department where Dept_Budget = 
(select max(Dept_Budget) from department where Dept_Budget < (select max(Dept_Budget) from department));

#29 How many employees are there in each department?
select count(emp_id), dept_code from employee group by dept_code;

#30 Create a view of Employees working in Sales and Marketing department only.
create view sandm as select * from department where dept_name = "Sales and Marketing";
select * from sandm;