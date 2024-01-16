with source as(
    select * from {{ source('dbo', 'dim_customers') }}
)

select
    source.customer_id
from source
left join dim.orders as orders on orders.order_id = source.order_id