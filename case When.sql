create database caseWhen
use caseWhen;
CREATE TABLE CustomerData (
    id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    email VARCHAR(100),
    phone_number VARCHAR(15),
    address VARCHAR(200),
    amount DECIMAL(10, 2)
);
INSERT INTO CustomerData VALUES
(1, 'Ravi', 'ravi@example.com', '98765', 'Chennai', 5000.00),
(2, 'Priya', NULL, '98765', 'Bangalore', NULL),
(3, 'Arjun', 'arjun@example.com', NULL, 'Hyderabad', 1500.00),
(4, 'Meena', NULL, NULL, 'Mumbai', 2500.00),
(5, 'Karthik', 'karthik@example.com', '98765', NULL, 3000.00);
select * from CustomerData;
select customer_name ,
  amount ,
 Case
     when  amount>4000 then 'Heigh spender'
     when amount<25000 then 'low spender'
     when amount between 20000 and 40000 then 'Mediuam spender' 
     else 'simplywaste'
     end as type_spender from CustomerData where amount not in('null') order by 1;
     select customer_name ,
  amount ,
 Case
     when  amount>4000 then 'Heigh spender'
     when amount<25000 then 'low spender'
     when amount between 20000 and 40000 then 'Mediuam spender' 
     else 'simplywaste'
     end as type_spender from CustomerData  order by 1;
     select  customer_name, 
     case 
     when phone_number is null and email is null then 'no contacts'
     when  phone_number is null then email
     else phone_number end as Contacts from CustomerData;