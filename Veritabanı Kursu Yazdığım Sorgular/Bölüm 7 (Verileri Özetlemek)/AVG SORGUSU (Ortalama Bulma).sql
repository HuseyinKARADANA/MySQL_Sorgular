USE ecommerce;
SELECT * FROM product;
SELECT AVG(product_price) AS avarage From product where product_id>5; -- product id si 5 den büyük olanların ürün fiyat ortlamasını buluyor
