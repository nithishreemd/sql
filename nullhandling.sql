use caseWhen;
select * from CustomerData;
select COUNT(*)as count from CustomerData where phone_number is null;
insert into CustomerData values(6,'raju',null,'null','chennimalai',7000.00)   
select COUNT(*)as count from CustomerData where phone_number ='null';
select COUNT(*)as count from CustomerData where phone_number is not null;
desc CustomerData;
select customer_name,
email,
phone_number,
address,
amount   from CustomerData where customer_name is null or 
email is null or 
phone_number is null or 
address is null or 
amount is null;
 select id,customer_name,address,amount, coalesce (amount,'0.00',null,'none') 
 from  CustomerData
 select id,customer_name,amount, ifnull(amount,'0.00') 
 from CustomerData