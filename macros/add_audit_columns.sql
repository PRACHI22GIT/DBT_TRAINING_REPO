{% macro add_audit_cols(hash_cols) %}
CURRENT_TIMESTAMP as LOAD_TIME,
MD5(
    CONCAT(
        {% for col in hash_cols %}
            COALESCE(CAST({{col}} as varchar),'')
            {% if not loop.last %}
                ,'|',
            {% endif%}
        {% endfor %}
    )) as MD5_HASHKEY
{% endmacro %}