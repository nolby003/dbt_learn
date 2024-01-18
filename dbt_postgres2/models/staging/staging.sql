{{
config(
    materialized='table',
    schema='staging'
)
}}

select * from {{ ref('stg_customers') }}
select * from {{ ref('stg_customer_address') }}
select * from {{ ref('stg_customer_orders') }}
select * from {{ ref('stg_products') }}
