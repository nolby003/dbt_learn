with
    customer
    as
    (
        select *
        from {{ ref
    
    ('stg_customers') }}
)

select
    customer_id,
    customer_sal,
    customer_fname,
    customer_lname,
    customer_gender,
    customer_created,
    customer_modified
from customer