-- ABS(sayı) fonksiyonu verilen sayının mutlak değerini bize verir
SELECT ABS(-101423) AS Mutlak;
SELECT *,ABS(product_price) AS Mutlak FROM product;

-- ROUND(sayı,virgül sonrasi sayı sayısı) fonksiyonu ondalıklı sayıyı yuvarlar 
-- 5 ve üzerini yukarıya,altını aşağıya yuvarlıyor
SELECT ROUND(20.50,0),ROUND(20.49,0),ROUND(20.51,0);
SELECT *,ROUND(product_price/9,2) AS yuvarlama FROM product;

-- TRUNCATE(25.599999,2) verilen sayının ondalık basamaklarını keserek
-- istediğimiz adetteki ondalık haneye getirir
 SELECT TRUNCATE(25.5999999,2) AS Kırpma;
 SELECT *,TRUNCATE(product_price/9,2)AS new_price FROM product;
 
 -- CEIL / CEILING sayı yuvarlamak için kullanılır 
 -- sayıyı kendinden küçük veya büyük tam sayıya yuvarlar
 SELECT CEIL(25.75);
 SELECT CEILING(25.75);
 SELECT CEIL(-25.75);
 SELECT CEIL(product_price/9) FROM product;
 
 -- FLOOR kendisine verilen sayının kendisine yakın en küçük tam sayıyı verir
 SELECT FLOOR(26.76);
 SELECT *,(product_price/9) AS number,FLOOR(product_price/9) AS floor  FROM product;
 
 -- RAND 0-1 arasında rastgele bir sayı üretir,0 dahil 1 hariçtir
SELECT (RAND()*5)+5;-- 5 ile 10 arasında rastgele sayı üretir
 