{% macro cel_to_fahrenheit(temp_in_cel) %}
round((cast({{temp_in_cel}} as float) * 1.8) + 32, 2)
{% endmacro %}