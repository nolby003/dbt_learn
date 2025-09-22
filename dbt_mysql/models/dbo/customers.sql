with
    source
    as

    (
        select *
        from {{ source
    
    ('dbo', 'dim_customers') }}
)

select
    source.customer_id
from source
    left join dim.customer_shipping as customer_shipping on customer_shipping.customer_id = source.customer_id