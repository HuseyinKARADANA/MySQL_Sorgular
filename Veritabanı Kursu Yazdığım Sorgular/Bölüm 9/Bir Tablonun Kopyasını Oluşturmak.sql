-- kalıcı tablo oluşturma (tabloya kopyalama)
-- CREATE TABLE _product AS SELECT * FROM product;

-- tabloyu silme
-- DROP TABLE _category;

-- geçici tablo oluşturma
-- CREATE TEMPORARY TABLE _category AS SELECT * FROM category;
-- select * from _category;

-- geçici tabloyu silme
-- DROP TEMPORARY TABLE _category;

-- bir tablonun belirli değerlerini yeni tablo yapıp ekleme
-- CREATE TABLE _category AS SELECT category_code,category_name FROM category WHERE category_id between 1 And 3;

