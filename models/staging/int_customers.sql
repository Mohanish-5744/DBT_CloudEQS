{{ 
        config(
        materialized='incremental',
        incremental_strategy="merge",
        unique_key='customer_id'
    ) 
}}

select * from {{ ref("stg_customers") }}