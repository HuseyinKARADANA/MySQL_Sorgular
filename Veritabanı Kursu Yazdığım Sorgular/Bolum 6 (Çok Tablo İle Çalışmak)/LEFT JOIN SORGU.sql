use ecommerce;
Select p.product_id,p.product_name,p.promotion_id,pm.promotion_name FROM product p
LEFT  JOIN promotion pm ON p.promotion_id=pm.promotion_id
WHERE p.product_price>50
ORDER BY pm.promotion_name;