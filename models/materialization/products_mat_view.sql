{{
    config
    (
        materialized='view',
        alias='vw_products'
    )
}}

select * from {{ref('products')}}