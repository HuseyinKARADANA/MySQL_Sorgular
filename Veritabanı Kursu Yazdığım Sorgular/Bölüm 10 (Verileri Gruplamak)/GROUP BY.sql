-- hangi ilde kaç müşteri var 
-- SELECT province,COUNT(*) AS customer_total FROM customer GROUP  BY province;

-- hangi tarihte kaç adet sipariş almışız ve toplam tutarı bulalım
SELECT order_date,COUNT(order_total) AS siparis_adedi,SUM(order_total) AS siparis_toplamı FROM ecommerce.order GROUP BY order_date ORDER BY order_date DESC;

-- hangi üründen kaç adet ve ne kadar satıldı

SELECT product_id,product_name,COUNT(product_id) AS adet,SUM(line_total) AS siparis_toplami FROM order_detail 
JOIN product  USING(product_id)
GROUP BY product_id,product_name
ORDER BY adet ASC;


-- kategorilere göre satilan ürün adedini ve toplamini bulalım

SELECT category_id,category_name,COUNT(*) AS siparis_adet,SUM(line_total) AS siparis_toplami FROM order_detail
JOIN product USING(product_id)
JOIN category USING(category_id)
GROUP BY category_id,category_name
ORDER BY siparis_adet DESC;

