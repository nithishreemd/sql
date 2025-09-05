create database Ecommence;
use Ecommence;
CREATE TABLE CustomerTransactions (
    id INT PRIMARY KEY,
    login_device VARCHAR(50),
    customer_name VARCHAR(100),
    ip_address VARCHAR(20),
    product VARCHAR(100),
    amount DECIMAL(10, 2),
    is_placed BOOLEAN,
    is_viewed BOOLEAN,
    transaction_status VARCHAR(20)
);
INSERT INTO CustomerTransactions VALUES
(1, 'Mobile', 'Ravi', '192.168.1.1', 'Laptop', 50000.00, TRUE, FALSE, 'Completed'),
(2, 'Desktop', 'Priya', '192.168.1.2', 'Smartphone', 20000.00, TRUE, TRUE, 'Completed'),
(3, 'Tablet', 'Arjun', '192.168.1.3', 'Headphones', 1500.00, FALSE, TRUE, 'Failed'),
(4, 'Mobile', 'Meena', '192.168.1.4', 'Shoes', 2500.00, TRUE, FALSE, 'Completed'),
(5, 'Desktop', 'Karthik', '192.168.1.5', 'Watch', 5000.00, TRUE, TRUE, 'Completed'),
(6, 'Mobile', 'Sowmya', '192.168.1.6', 'Tablet', 15000.00, TRUE, TRUE, 'Completed'),
(7, 'Tablet', 'Ramesh', '192.168.1.7', 'Smartphone', 25000.00, FALSE, TRUE, 'Failed'),
(8, 'Desktop', 'Divya', '192.168.1.8', 'Laptop', 60000.00, TRUE, FALSE, 'Completed'),
(9, 'Mobile', 'Arun', '192.168.1.9', 'Smartwatch', 12000.00, TRUE, TRUE, 'Completed'),
(10, 'Tablet', 'Deepa', '192.168.1.10', 'Laptop', 55000.00, FALSE, FALSE, 'Pending');
select count(*)as TotalCount from CustomerTransactions where transaction_status ='Failed'
select count(*)as TotalCount from CustomerTransactions where transaction_status ='Failed' and login_device ='Mobile'
select count(*)as TotalCount from CustomerTransactions where transaction_status ='Failed'or transaction_status ='Pending'
select count(*)as TotalCount from CustomerTransactions where transaction_status in('Failed','Pending')
select count(*)as TotalCount from CustomerTransactions where transaction_status  not in('Failed','Pending')


