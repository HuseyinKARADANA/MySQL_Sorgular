-- veri tipi dönüşümü
SELECT "1" + 1;-- cast string değeri int tipine çevirdi
SELECT CAST("2020-08-15" AS DATE);-- string ifadeyi date tipine dönüştürüyor
SELECT CAST("14:06:10" AS TIME);
SELECT CAST(5-10 AS SIGNED);-- işaretli sonuc