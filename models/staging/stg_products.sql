{{ 
        config(
        materialized='table'
    ) 
}}

SELECT
    m_pid as main_product_id,
    prod_id AS product_id,
    prod_name as product_name,
    price as product_price,
    purchase_dt as product_purchase_date,
    last_modified_dt as product_last_modified_date,
    active_flag as product_active_flag
FROM {{ source('practice', 'products') }}