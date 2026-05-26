{{
    config
    (
        materialized='table',
        alias='products_tbl'
    )
}}

select * from {{ref('products')}}