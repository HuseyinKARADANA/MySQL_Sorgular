-- !!!! ANY mantıksal ifadelerde yada(OR) gibi çalışır, ALL değeri ve(AND) ile bağlanmış şekilde
SELECT * FROM ecommerce.product 
WHERE product_price>ALL (SELECT product_price FROM product WHERE product_name like '%shirt%'); 
-- 50-25 iki değer döndürüyor

-- sipariş verilen ürün listesi

SELECT * FROM product;
SELECT * FROM ecommerce.order_detail;

SELECT * FROM product
WHERE product_id = ANY(
SELECT DISTINCT product_id FROM order_detail
);