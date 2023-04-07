use ecommerce;
SELECT * FROM product;
SELECT COUNT(buying_price) AS adet FROM product;-- null satırları saymadığı için 6 değerini veriyor
SELECT COUNT(DISTINCT product_id) AS adet FROM product WHERE buying_price IS NULL; -- boş olan değerleri buluyor DISTINCT ile kaydeden tekrarları saymıyor

SELECT COUNT(*) AS tumu,COUNT(buying_price) As dolu_adet, COUNT(*)-COUNT(buying_price) AS eksik_adet FROM product; 


