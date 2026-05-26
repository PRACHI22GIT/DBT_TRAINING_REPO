{{
    config
    (
        materialized='view',
        alias='vw_productdetails'
    )
}}

select * from {{ref('productdetails')}}