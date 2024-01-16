with source as (
    select * from {{ source('public', 'customers') }}
)

select
    *
from source as dim_customers
