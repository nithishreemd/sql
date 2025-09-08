use caseWhen;
select * from CustomerData;
select  
lpad(address,15,'*') as left_padding,
rpad(Customer_name,15,'*') as right_padding,
replace(Customer_name,'','-') as replace_data
from CustomerData;
 select  length(Customer_name)as name_length,
upper(address) as upper_address, 
lower(email) as lower_email,
concat(Customer_name,'-',address,' -TN') as city ,
SUBSTRING(customer_name,1,3) as namess,Customer_name ,
trim('    y girl ') as trimeg
 from CustomerData;
 select 
 email,
 left(email,7) as first_5_char,
 right(email,5) as last_5_char,
 instr(email,'@') as position_of_spl,
 upper(concat(Customer_name,'-',email)) as Innerfuntion,
 Substring_index(email,'@',1) as firstName,
  Substring_index(email,'@',-1) as lastName
  from CustomerData;
   select amount,
   format(amount,2) as Amount,
   address, lower(reverse(address)) as reverse_address
from CustomerData;
