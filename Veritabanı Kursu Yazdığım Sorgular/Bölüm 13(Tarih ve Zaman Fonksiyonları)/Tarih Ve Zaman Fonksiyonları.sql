-- CURDATE anlık tarihi alma yıl-ay-gün
SELECT CURDATE();

-- CURTIME anlık zaman saat-dakika-saniye
SELECT CURTIME();

-- mevcut tarih ve zamanı getirir (CURRENT_TIMESTAMP,NOW,LOCALTIME,LOCALTIMESTAMP,SYSDATE)
SELECT CURRENT_TIMESTAMP(),NOW(),LOCALTIME(),LOCALTIMESTAMP(),SYSDATE();-- hepsi aynı sonucu verir (SYSDATE diğerlerinden farklı)
SELECT CURRENT_TIMESTAMP(2),NOW(2),SYSDATE(2),SLEEP(2),CURRENT_TIMESTAMP(2),NOW(2),SYSDATE(2);-- sysdate fonksiyonun o anki işlendiği zamandir

-- YEAR,MONYH,DAY,DAYOFMONTH Fonksiyonları
SELECT YEAR("2021-08-15 09:34:21.11243");-- yılı yazar
SELECT MONTH("2021-08-15 09:34:21.11243");-- ayı yazar
SELECT DAY("2021-08-15 09:34:21.11243");-- günü yazar
SELECT DAYOFMONTH("2021-08-15 09:34:21.11243");	
SELECT DAYOFMONTH(LOCALTIME());
SELECT * FROM ecommerce.order WHERE YEAR(order_date)=2021 AND MONTH(order_date)=6 AND DAY(order_date)=30;	

-- HOUR,MINUTE,SECOND,MICROSECOND Fonksiyonları
SELECT HOUR("2021-08-15 09:34:21.11243");-- saati yazar
SELECT MINUTE("2021-08-15 09:34:21.11243");-- dakikayı yazar
SELECT SECOND("2021-08-15 09:34:21.11243");-- saniyeyi yazar
SELECT MICROSECOND("2021-08-15 09:34:21.11243");-- mikrosaniyeyi yazar

-- kullanılan dili değiştirme
SELECT @@lc_time_names;-- kullandığımız dili verir em_US ingilizce
SET @@lc_time_names='tr_TR';-- dili değiştirme sadece bağlantı süresince tr olur

-- MONTHNAME,DAYNAME ay ve gün isimi verir
SELECT MONTHNAME("2021-08-15 09:34:21.11243");
SELECT DAYNAME("2021-08-15 09:34:21.11243");

-- EXTRACT verilen tarihin istediğimiz yerini bize verir
-- YEAR,MONTH,DAY,HOUR,MINUTE,SECOND,MICROSECOND,QUARTER(yılın kaçıncı çeğreği bilgi verir),WEEK(kaçıncı hafta)
SELECT EXTRACT(QUARTER FROM "2021-08-15 09:34:21.11243");

-- DATE_FORMAT(tarih,biçim) tarihi biçimlendirmek
SELECT DATE_FORMAT("2021-08-15","%d-%m-%Y");
SELECT DATE_FORMAT("2021-08-15","%e %M %Y %W");-- W haftanın gününün adı


-- TIME_FORMAT(zaman,biçim)
SELECT TIME_FORMAT("2021-08-15 09:34:21.11243","%H.%i.%s");
SELECT TIME_FORMAT(CURTIME(),"%H.%i.%s %p"); --  'AM-PM' olduğunu yazıyor
SELECT TIME_FORMAT("2021-08-15 09:34:21.11243","%T");

-- ADDDATE,DATE_ADD tarihe ekleme
SELECT ADDDATE('2021-09-10',3);-- 9.yın 10 una 3 gün ekliyor
SELECT ADDDATE('2021-09-10',INTERVAL 3 MONTH);-- 9.aya 3 gün ekliyor MONTH yazan yere DAY,YEAR,WEEK,HOUR,MINUTE,SECOND,QUARTER ile neyi değiştireceğini yazıyorsun
SELECT ADDDATE('2021-09-10',INTERVAL -3 MONTH);-- 3 ay geri gidiyor	

-- SUBDATE/DATE_SUB tarihten çıkarma
SELECT SUBDATE('2021-09-10',INTERVAL 3 DAY);-- 9.ayın 10. gününden 3 gün çıkarıyor

-- TIME_TO_SEC(zamanı saniyeye çevirir),SEC_TO_TIME(saniyeyi zamana çevirir)
SELECT TIME_TO_SEC("15:20:22");
SELECT SEC_TO_TIME(55222); 


