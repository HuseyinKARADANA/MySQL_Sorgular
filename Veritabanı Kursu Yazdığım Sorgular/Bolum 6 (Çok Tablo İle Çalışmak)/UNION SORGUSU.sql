-- birden fazla kayıt setini birleştirmemize yarıyor
-- belli kurallar vardır bunlar
-- 1)her select aynı sayıda kolon üretmelidir
-- 2)her kolonun veri tipi aynı olmalıdır 
-- 3)kolonların sıralaması aynı olmalıdır
-- Tekrar eden kayıtları teke indirir eğer hepsini görmek istersek "UNION ALL" yazmalıyız 

SELECT c.province FROM customer c
UNION 
SELECT s.province FROM supplier s;

SELECT c.province FROM customer c
UNION ALL
SELECT s.province FROM supplier s;

