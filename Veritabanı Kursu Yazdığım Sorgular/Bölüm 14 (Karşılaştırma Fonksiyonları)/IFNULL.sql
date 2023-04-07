use ecommerce;
-- IFNULL
SELECT IFNULL(NULL,"Değer Yok");-- eğer NULL olduğu için Değer yok yazdı 
SELECT IFNULL(1,"Değer Yok");-- değer olduğu için değeri yazdı 

SELECT supplier_id,supplier_code,supplier_name,
IFNULL(country,"---") AS country, -- country değeri null olanlara   --- yazdı
IFNULL(province,"---") AS province -- province değeri null olanlara --- yazdı
 FROM supplier;