{{
    config
    (
        materialized='table',
        alias='products_ephemeral'
    )
}}

select * from {{ref('products_mat_ephemeral_1')}}