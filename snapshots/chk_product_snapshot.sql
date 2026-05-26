{% snapshot product_snapshot %}
{{
    config
    (
        target_schema='snapshot',
        unique_key='PRODUCTID',
        strategy='check',
        check_cols=['TYPECODE','CREATEDBY']
    )
}}

select * from {{ref('products')}}

{% endsnapshot %}