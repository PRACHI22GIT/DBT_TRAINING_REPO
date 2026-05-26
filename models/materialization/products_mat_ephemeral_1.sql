{{
    config
    (
        materialized='ephemeral',
        alias='products_eph'
    )
}}

select * from {{ref('products')}} where prodcategoryid = 'RO'