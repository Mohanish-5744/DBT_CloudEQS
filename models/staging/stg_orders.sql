{{ 
        config(
        materialized='table'
    ) 
}}

SELECT
    order_id as order_id,
    quantity AS order_quantity,
    order_date as order_date,
    cust_id as customer_id,
    prod_id as product_id,
FROM {{ source('practice', 'orders') }}