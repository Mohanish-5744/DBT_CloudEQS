{{ 
        config(
        materialized='view'
    ) 
}}

SELECT
    CUST_ID as customer_id,
    NAME AS customer_name,
    ADDRESS as customer_address,
    PHONE as customer_phone,
    AGE as customer_age,
FROM {{ source('practice', 'customers') }}