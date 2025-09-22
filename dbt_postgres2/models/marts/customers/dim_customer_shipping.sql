with
    customer_shipping
    as
    (
        select *
        from {{ ref
    
    ('stg_customer_shipping') }}
)

select
    address_id,
    customer_id,
    is_primary,
    address_unitnum,
    address_streetnum,
    address_streetname,
    address_streettype,
    address_suburb,
    address_city,
    address_state,
    address_pcode,
    address_country,
    address_created,
    address_modified
from customer_shipping