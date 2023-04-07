-- siparis tablosuna kayıt ekleyelim ve sipraris detayını kaydedelim
-- bütün işlemler yapılmazsa yapılanlanları iptal eder
-- iki farklı bağlantı ile yapılıyor videoları tekrar izle sınav öncesi

START TRANSACTION;-- transection başlatma

INSERT INTO `order`
(order_date,order_total,customer_id,payment_method_id)
VALUES ('2028-02-19',600,1,1);

INSERT INTO `orde_detail`(order_id,order_qty,product_price,vat,line_total,product_id)
VALUES (last_insert_id(),2,300,18,600,5);

COMMIT;-- işlemleri sisteme işle
ROLLBACK;-- yapılan işlemleri geri alır o yüzden genellikle commıt kullanılır