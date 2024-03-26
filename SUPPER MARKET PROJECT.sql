-- returning the top 10 earners in the business

use sql_hr;

create view ten_earners as
select employee_id, 
first_name, job_title,
 max(salary) as top_ten_earners
from employees 
group by employee_id
limit 10; 

-- derterming distinct states where where offices are located 

use sql_hr;

create view distinct_state as
select distinct state, office_id, 
city
from offices; 

-- client who has paid for thier invoice and thier payment method base on thier point. 
 
 use sql_store;
 
 create view payment_method as
 select customer_id,
 first_name,
 state,
 max(points) as loyal_customers
 from customers 
 group by customer_id 
 order by loyal_customers desc
 limit 5;
 
 -- most product in stock
 
 use sql_store; 
 
 create view most_quantity_in_stock as
 select product_id, name, max(quantity_in_stock) as most_quantity_in_stock
 from products 
 group by product_id
 having max(quantity_in_stock) > 60
 limit 5;
 
 -- count of distinct customers 
 
 use sql_store; 
 
 create view distinct_customers as
 select distinct count(customer_id) as distinct_customers
  from customers 
  
  
 
 
 
 
 


