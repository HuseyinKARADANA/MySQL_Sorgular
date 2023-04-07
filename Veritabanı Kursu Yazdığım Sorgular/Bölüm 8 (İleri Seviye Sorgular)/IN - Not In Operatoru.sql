use ecommerce;
-- SELECT * FROM product WHERE product_name LIKE '%Nevresim%'; 9-10-11

SELECT od.order_qty,od.line_total,od.product_id,p.product_name 
FROM ecommerce.order_detail od
INNER JOIN product p USING(product_id)
 WHERE od.product_id IN(SELECT product_id FROM product WHERE product_name LIKE '%Nevresim%');


-- Hiç satılmamış ürünlerin listesi
SELECT DISTINCT product_id FROM ecommerce.order_detail;
SELECT * FROM product;

SELECT * FROM product
WHERE product_id NOT IN(SELECT DISTINCT product_id FROM ecommerce.order_detail);
