with customers as ( 
    select *
    from dim_customers
)

select
    customer_id as id,
    customer_sal as sal,
    customer_fname as fname,
    customer_lname as lname,
    customer_gender as gender,
    customer_created,
    customer_modified
from customers