use ecommerce;
-- verilen ürün kodu GMK2 Olsun
select * from product;

SELECT product_price FROM product WHERE product_code="GMK2";

-- Fiyatı ürün kodu GMK2 olan ürünün fiyatından fazla olan ürünleri listeledik
SELECT * FROM product WHERE product_price>(SELECT product_price FROM product WHERE product_code="GMK2");

-- ortalama sipariş tutarından daha fazla olan siparişlerin tutarları ve müşterilerin isimlerini getirsin
SELECT * FROM ecommerce.order;
SELECT AVG(order_total) FROM ecommerce.order;
SELECT * FROM customer;
-- Yanıt 
SELECT  c.first_name,c.last_name,o.order_total FROM ecommerce.order o
INNER JOIN customer c ON o.customer_id=c.customer_id 
WHERE o.order_total>(SELECT AVG(order_total) FROM ecommerce.order)
;