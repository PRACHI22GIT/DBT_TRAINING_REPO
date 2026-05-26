{% snapshot ts_product_snapshot %}
{{
    config
    (
        target_schema='snapshot',
        unique_key='PRODUCTID',
        strategy='timestamp',
        updated_at='CHANGEDAT'
    )
}}

SELECT * FROM {{ref('products_mat_table')}}

{% endsnapshot %}