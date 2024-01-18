{{
config(
    materialized='table',
    schema='staging'
)
}}

with source as (
    select * from {{ source('source', 'dim_customers') }}
)

select
*
from source