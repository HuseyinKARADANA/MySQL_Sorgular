use ecommerce;
SELECT * FROM category;
DELETE  FROM category WHERE category_id=5; -- 5 numaralı kategori silindi

-- içinde  ürün bulunmayan kategorileri silme kodu
SELECT * FROM category c
 WHERE NOT EXISTS(SELECT * FROM product p WHERE p.category_id=c.category_id);
 DELETE FROM category c
 WHERE NOT EXISTS(SELECT * FROM product p WHERE p.category_id=c.category_id);