{{ 
        config(
        materialized='incremental',
        incremental_strategy="delete+insert",
        unique_key='product_id'
    ) 
}}

select * from {{ ref("stg_products") }} WHERE product_price > 0