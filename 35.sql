SELECT model ,type from PRODUCT where model not like '%[^0-9]%' or upper(model) not like '%[^A-Z]%'
