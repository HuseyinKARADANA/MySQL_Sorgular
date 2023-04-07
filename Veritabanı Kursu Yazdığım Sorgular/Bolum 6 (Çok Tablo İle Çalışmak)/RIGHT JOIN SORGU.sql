use ecommerce;
SELECT 
p.product_id,p.product_name,pm.promotion_id,pm.promotion_name ,p.product_price
FROM product p
RIGHT JOIN promotion pm ON p.promotion_id=pm.promotion_id
ORDER BY pm.promotion_name;
-- promosyon tablosundaki bütün değerleri getirdi,3 no lu id ye sahip promotion hiç kullanılmamış ama sağdaki tabloyu getirdiğimiz için o da geldi


