use ecommerce;

-- karakter sayısını öğrenmek
SELECT char_length("MySQL");
SELECT product_name,char_length(product_name) FROM product;

-- Metini Küçük Harfe Çevirme
SELECT LCASE("MYSQL");
SELECT LOWER("HUSEYİN");
SELECT product_name,LOWER(product_name) FROM product;

-- Metini Büyük Harfe Çevirme
SELECT UCASE("mysql");
SELECT UPPER("huseyin");
SELECT product_name,UPPER(product_name) FROM product;

-- trim,ltrim,rtrim boşlukları ve karakterleri temizleme
SELECT LTRIM("          huseyin      "); -- solundaki boşlukları siliyor
SELECT RTRIM("      huseyin      ");-- sağındaki boşlukları siliyor
SELECT TRIM("      huseyin       "); -- sağ sol boşlukları siliyor

SELECT TRIM(LEADING'x' FROM"xxxTESTxxx");-- öndeki x leri siler
SELECT TRIM(TRAILING'x' FROM"xxxTESTxxx");-- sondaki x leri siler
SELECT TRIM('x' FROM"xxxTESTxxx");-- sağ ve soldaki x leri siliyor (BOTH da yazabilirsin)


-- left right ile metnin başından veya sonundan istenilen sayı kadar karakteri bize verir
SELECT LEFT("MySQL'i Öğreniyorum",5);-- soldan 5 karakter alıyor
SELECT RIGHT("MySQL'i Öğreniyorum",11);-- sağdan 11 karakter alıyor
SELECT product_name,LEFT(product_name,7) FROM product;
SELECT * FROM product WHERE LEFT(product_code,3)="GMK";

-- MID ,SUBSTR metnin istenilen yerinden başlatılarak istenilen sayı kadar karakter alır
SELECT MID("herkese merhaba arkadaşlar bugün sizlerle birlikte",8,8); -- 8.karakterden  başlayıp 8 karakter aldık
SELECT SUBSTR("herkese merhaba arkadaşlar bugün sizlerle birlikte",8,8);-- 8.karakterden  başlayıp 8 karakter aldık
SELECT SUBSTR("herkese merhaba arkadaşlar bugün sizlerle birlikte",-10,8);-- sağdan 10 karakterden başlıyor sağa doğru 8 karakter aldı
SELECT SUBSTR("herkese merhaba arkadaşlar bugün sizlerle birlikte" FROM 8 FOR 8); -- bu şekilde de çalışabilir

-- verilen metini başka bir metin içinde arar
SELECT LOCATE("sql","ben bugün sql öğreniyorum");-- sql kelimesi hangi indexde başlıyor bulunca indexi döndürüyor
SELECT LOCATE("sql","ben bugün sql öğreniyorum",12);-- sql kelimesini 12.indexden sonra arıyor bulamazsa 0 dönüyor
SELECT * /*product_name,LOCATE("Gömlek",product_name)*/  FROM product WHERE LOCATE("Gömlek",product_name)>0;

-- replace verilen metinde aranan metinin yazısını değiştirir
SELECT REPLACE("python öğreniyorum","python","SQL");-- python yazan yere SQL yazmaya yarıyor
SELECT REPLACE(product_name,"Gömlek","T-Shirt") FROM product; -- gömlek yazan yerler t-shirt yazdı

-- CONCAT iki veya daha fazla metini birleştirir metin null ise heryer null olur birleşmez
SELECT CONCAT("Huseyin"," ","Karadana");-- metini birleştirdi
SELECT CONCAT(first_name," ",last_name) AS ad_soyad FROM customer;-- customer tablosunda ad soyad birleştirdi

-- CONCAT_WS birleşrilecek yazıların arasına belirli bir ayıraç koyarak birleştiriyor
SELECT CONCAT_WS("-","herkese","merhaba","sql","öğreniyoruz" ) AS metin; -- birleştirirken araya - işaretini koydu
SELECT product_code,product_name, CONCAT_WS(",",product_code,product_name)AS birlestirme FROM product;



