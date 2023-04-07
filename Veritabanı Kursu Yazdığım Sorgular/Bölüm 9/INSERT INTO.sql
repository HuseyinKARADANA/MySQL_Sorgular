use ecommerce;
-- INSERT INTO category VALUES(default,'Mause',"Mause"); -- kategory tablosuna sırasıyla id ve gerekli değerleri sutun sırasına göre doldurduk "Default" ile sıradaki id değerini otomatik olarak doldurdu
 INSERT INTO category SET
 category_code="Saat1",
 category_name="Saat1"; -- bu da kayıt eklemeye sağlıyor
 
 INSERT INTO category(category_code,category_name) VALUES 
 ("TLF","Telefon"),
 ("HDD","Harddisk"),
 ("BLG","Bilgisayar");-- birden fazla kayıt ekliyor
 
 INSERT INTO product (category_id,product_code,product_name,product_price,buying_price,vat,
 stock_qty,unit_id,currency_id,promotion_id,supplier_id)
 VALUES
 (4,"RLX","ROLEX",2500,2250,18,20,2,1,default,default);
 select last_insert_id();
 

 
 