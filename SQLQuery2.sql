create Database OrganizationDBtest

use OrganizationDBtest

create table Employee(
EmpId int,EmpName varchar(30),EmpAge int,EmpGender varchar(30),
EmpSalary int,EmpExperience int,EmpLocation varchar(30),
DeptName varchar(30),DeptHead varchar(30),DeptPhone varchar(30))


insert into Employee(EmpId,EmpName,EmpAge,EmpGender,EmpSalary,EmpExperience,
EmpLocation,DeptName,DeptHead,DeptPhone) values
(1,'Ashok',20,'Male',23000,2,'Chennai','Finance', 'Sam',9865737111),
(2,'Shilpa',25,'Female',27000,3,'Bangalore','Marketing', 'Peter',9865737222),
(3,'Kumar',21,'Male',25000,2,'Delhi','Human Resources', 'John',9865737333),
(4,'Siva',30,'Male',50000,5,'Delhi','Finance', 'Sam',9865737444),
(5,'Radha',22,'Female',27000,2,'Bangalore','Human Resources', 'John',9865737555),
(6,'Tony',18,'Male',22000,1,'Chennai','Finance', 'Sam',9865737666),
(7,'Priya',30,'Female',45000,4,'Pune','Marketing', 'Peter',9865737777),
(8,'Kamal',45,'Male',65000,6,'Chennai','Human Resources', 'John',9865737888),
(9,'Rajini',50,'Male',70000,7,'Delhi','Marketing', 'Peter',9865737999),
(10,'Sita',30,'Female',36000,3,'Pune','Human Resources', 'John',9865737110)

select * from Employee
select EmpName,EmpSalary,EmpLocation from Employee
select* from Employee where EmpLocation ='bangalore' 
select EmpName,EmpLocation from Employee where EmpLocation ='Delhi' 
select EmpName,EmpLocation from Employee where EmpGender='female'
select EmpName,EmpSalary from Employee where EmpSalary>=45000
select * from Employee where DeptPhone like '%777%'
select * from Employee where EmpName in ('Ashok','Kumar','tony')
select * from Employee where EmpName not in ('Ashok','Kumar','tony')
select * from Employee where EmpAge between 22 and 30
select * from Employee where EmpAge= 30 and EmpGender='male'
select * from Employee where EmpAge> 30 and EmpGender='male'
select * from Employee where EmpAge> 30 or EmpGender='male'
select EmpName as 'employee Names' from Employee where EmpAge> 30 or EmpGender='male'
select sum(Empsalary) from Employee
select Max(Empsalary) from Employee
select Min(Empsalary) from Employee
select Avg(Empsalary) from Employee
select Count(Empsalary) from Employee
select count(EmpId) from Employee  
select count(EmpId) from Employee group by EmpLocation
select EmpLocation , count(EmpId) from Employee group by EmpLocation
select EmpLocation , count(EmpId)   as total from Employee group by EmpLocation  having count(EmpId)>2 
select Emplocation, sum(EmpSalary) from Employee group by EmpLocation
select DeptName,Sum(EmpSalary)as salary from employee group by DeptName  having Sum(EmpSalary) between 80000 and 100000
select EmpLocation ,Sum(EmpSalary)as salary  from Employee group by EmpLocation  having Sum(EmpSalary) between 80000 and 100000
select EmpLocation ,Sum(EmpSalary)as salary  from Employee group by EmpLocation  having Sum(EmpSalary)<100000

create table DepartmentTable (DeptId int primary key, DeptName varchar(30),DeptHead varchar(30),DeptPhone varchar(30))

insert into DepartmentTable(DeptId,DeptName,DeptHead,DeptPhone) values
(1,'Finance', 'Sam',9865737111),
(2,'Marketing', 'Peter',9865737222),
(3,'Human Resources', 'John',9865737333)
insert into DepartmentTable(DeptId,DeptName,DeptHead,DeptPhone) values
(4,'IT', 'Sam',9865737444)

create table EmployeeTable(
EmpId int primary key,EmpName varchar(30),EmpAge int,EmpGender varchar(30),
EmpSalary int,EmpExperience int,EmpLocation varchar(30),
Did int foreign key references DepartmentTable(DeptId)
)



insert into EmployeeTable(EmpId,EmpName,EmpAge,EmpGender,EmpSalary,EmpExperience,
EmpLocation,Did) values
(1,'Ashok',20,'Male',23000,2,'Chennai',1),
(2,'Shilpa',25,'Female',27000,3,'Bangalore',2),
(3,'Kumar',21,'Male',25000,2,'Delhi',3),
(4,'Siva',30,'Male',50000,5,'Delhi',1),
(5,'Radha',22,'Female',27000,2,'Bangalore',2),
(6,'Tony',18,'Male',22000,1,'Chennai',1),
(7,'Priya',30,'Female',45000,4,'Pune',3),
(8,'Kamal',45,'Male',65000,6,'Chennai',2),
(9,'Rajini',50,'Male',70000,7,'Delhi',3),
(10,'Sita',30,'Female',36000,3,'Pune',2)
insert into EmployeeTable(EmpId,EmpName,EmpAge,EmpGender,EmpSalary,EmpExperience,
EmpLocation) values
(11,'Ashok',20,'Male',23000,2,'Chennai')

select EmpName , DeptName from EmployeeTable inner join DepartmentTable
on DeptId = Did


select * from EmployeeTable join DepartmentTable on EmployeeTable.Did = DepartmentTable.DeptId

select* from EmployeeTable left join DepartmentTable on EmployeeTable.Did = DepartmentTable.DeptId

select *from EmployeeTable right join DepartmentTable on EmployeeTable.Did = DepartmentTable.DeptId

select *from EmployeeTable full join DepartmentTable on EmployeeTable.Did = DepartmentTable.DeptId
select * from EmpployeeTable inner join DepartmentTable on EmployeeTable.Did = Department.DeptId

