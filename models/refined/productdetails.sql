select P.*,
PT.LANGUAGE,
PT.SHORT_DESCR,
PT.MEDIUM_DESCR,
PT.LONG_DESCR,
{{add_audit_cols(['P.PRODUCTID','TYPECODE','PRODCATEGORYID','CHANGEDBY','CHANGEDAT'])}} 
from {{ref('products')}} P 
LEFT JOIN {{ref('producttext')}} PT 
ON P.PRODUCTID = PT.PRODUCTID