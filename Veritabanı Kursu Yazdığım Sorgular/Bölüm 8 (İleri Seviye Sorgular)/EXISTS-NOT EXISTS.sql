-- exists vardır , not exists yoktur şeklinde tercüme edilebilir,Sorgularda yazdığımız alt sorguların kayıt döndürüp döndürmediğini kontrol eder
use ecommerce;
-- satılan ürün listesini bulalım
SELECT * FROM product p
WHERE EXISTS 
(
	SELECT product_id FROM order_detail od WHERE od.product_id=p.product_id
    -- alt sorguda performans kaybı olmuyor
);

-- satılmayan ürün listesini bulalım

SELECT * FROM product p
WHERE NOT EXISTS 
(
	SELECT product_id FROM order_detail od WHERE od.product_id=p.product_id
    -- alt sorguda performans kaybı olmuyor
);