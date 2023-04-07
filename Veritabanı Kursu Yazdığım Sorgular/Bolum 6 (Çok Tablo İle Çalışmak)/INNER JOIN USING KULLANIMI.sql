SELECT 
p.product_id,p.product_name,p.category_id,c.category_name 
FROM product p 
INNER JOIN category c 
USING (category_id);
-- on yerine USING kullandık kullanmak için category ve product tablolarında kolon isimleri aynı olmalı,USING(tablo kolon1,kolon2) şeklinde de kullanılabilir