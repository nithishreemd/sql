create database keyss;
use keyss;
create table dim_customer( customer_id int auto_increment primary key,
aadhar int unique, effecctive_date date,
end_date date, is_current Boolean
);