-- CAST ile aynı işlevde,Farkı bir metnin kullandığı karakter setini farklı bir karakter setine çevirebilir
SELECT CONVERT("2020-09-15",DATE); 
SELECT CONVERT(150,CHAR);
SELECT CONVERT("ÖÇŞİIĞÜöçşığü" USING latin1);-- latin 1 e çevirince ? olan yerler latin 1 de karşılığı yoktur (karakter seti dönüşümü)