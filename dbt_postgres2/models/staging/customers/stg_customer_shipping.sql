{{ config(
    materialized = 'incremental',
    schema = 'staging'
) }}

with source as (select * from mart_customer_shipping)

select * from source