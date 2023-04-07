use ecommerce;
--  her bir kategorinin adı ve yanında da o kategoride satılan ürünlerin toplam tutarları olsun

SELECT 
	*,
    (
		SELECT SUM(od.line_total) FROM ecommerce.order_detail od
		JOIN product p USING(product_id) WHERE p.category_id=c.category_id
	) AS product_order_total,
    (
		SELECT SUM(order_total) FROM ecommerce.order
	) AS order_total,
    (
		(SELECT product_order_total )/(SELECT order_total)
	)*100  AS percent
 FROM category c;


