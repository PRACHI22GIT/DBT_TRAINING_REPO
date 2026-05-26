{{
    config
    (
        materialized='incremental',
        unique_key='CITY',
        alias='WEATHER_INFO_INCR',

        post_hook="delete from {{this}} where CITY NOT IN (SELECT CITY FROM {{source('raw','WEATHER_INFO')}})"
    )
}}

select * from {{source('raw','WEATHER_INFO')}}