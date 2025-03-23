{{ 
        config(
        materialized='incremental',
        incremental_strategy="append",
        unique_key='order_id'
    ) 
}}

select * from {{ ref("stg_orders") }}