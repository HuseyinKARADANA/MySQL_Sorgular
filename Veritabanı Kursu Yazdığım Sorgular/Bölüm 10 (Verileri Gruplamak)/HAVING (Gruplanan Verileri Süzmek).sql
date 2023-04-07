
SELECT customer_id,first_name,last_name,COUNT(*) AS siparis_adedi,SUM(order_total) AS siparis_toplami
FROM ecommerce.order
INNER JOIN customer USING(customer_id)
GROUP BY customer_id,first_name,last_name
HAVING siparis_toplami>500 -- filtreleme işlemi için siparis_toplami 500 den büyük olanları yazıyor
-- HAVING kullanabilmek için GROUP BY yapmak gerekiyor
;
