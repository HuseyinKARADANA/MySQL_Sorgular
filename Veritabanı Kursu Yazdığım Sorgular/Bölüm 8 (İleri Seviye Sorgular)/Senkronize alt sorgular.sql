use ecommerce;
-- Soru
/*
	bir kategoride o kategoride olan ürünlerin ortalamalarından daha fazla satış fiyatı olan ürün listesini getir
*/
SELECT * FROM product AS p
WHERE p.product_price>(
	SELECT AVG(ip.product_price) FROM product AS ip WHERE category_id=p.category_id
    -- icerideki sorgu herbir kayıt için calıştırılacaktır bu yüzden binlerce kayıt olduğunda performans kaybı olabilir
);
