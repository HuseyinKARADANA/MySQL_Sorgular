use ecommerce;
select * from category;

-- 5 nolu kayıdı günecllemek için
update category set category_code='SND',category_name='Sandalye' Where category_id=5;

-- product tablosundaki ürün fiyatlarına %20 arttırmak
Select * from product;
Update product
set product_price=product_price*1.2;