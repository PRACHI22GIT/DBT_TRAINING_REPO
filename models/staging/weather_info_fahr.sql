SELECT
CITY,
TEMP_CELSIUS,
{{cel_to_fahrenheit('TEMP_CELSIUS')}} AS TEMP_FAHR
from {{source('raw','WEATHER_INFO')}}