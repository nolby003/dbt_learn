{{ config(
    materialized = 'incremental',
    schema = 'staging'
) }}

with source as (select * from mart_customers)

select * from source