SELECT LPAD("MYSQL", 20, "*"); -- 20 karakter olacak şekilde MYSQL yazısının solunu * ile tamamlıyor
SELECT RPAD("MYSQL",20,"*");-- 20 karakter olacak şekilde MYSQL yazısının sağını * ile tamamlıyor 

SELECT BIN(8);-- sayıyı binary hale çeviriyor
SELECT HEX(10); -- sayıyı hexadecimal hale çeviriyor

-- Bit operatörleri
SELECT LPAD(BIN(113),8,0),113>>3,LPAD(BIN(14),8,0);-- sayi >> sağa kayma adedi(her bir kaydirma 2 ye bölme)
SELECT ((113/2)/2)/2; -- üstteki işlemin çıktısıyla aynı sonuç

SELECT LPAD(BIN(113),12,0),113<<3,LPAD(BIN(904),12,0);-- sayi << sola kayma adedi(her bir kaydirma 2 ye çarpma)
SELECT ((113*2)*2)*2; -- üstteki işlemin çıktısıyla aynı sonuç
-- ~ işareti bitlerin tersini alır 1 olan 0 / 0 olan 1 olur.


SELECT LPAD(BIN(113),8,0);
SELECT LPAD(BIN(5),8,0);
SELECT 113 & 5; -- işleminin sonucu 1 veriyor aşağıda açıklaması var. (& bit tipinde and yap demek)
SELECT LPAD(BIN(1),8,0);
 /*
	113=	01110001
      5=	00000101
  AND    	--------  AND de ikisi de 1 ise 1  verir
      1=	00000001
 */
 
SELECT 113,LPAD(BIN(113),8,0)
UNION
SELECT 5,LPAD(BIN(5),8,0)
UNION
SELECT 117,LPAD(BIN(117),8,0);
SELECT 113 | 5;-- or işleminde sadece bir tanesi 1 ise sonucta o değerin olduğu sıra 1 olur 

-- XOR her iki bit de aynıysa 0/farklıysa 1 değerini verir
SELECT 113^5;
SELECT 113,LPAD(BIN(113),8,0)
UNION
SELECT 5,LPAD(BIN(5),8,0)
UNION
SELECT 116,LPAD(BIN(116),8,0);
