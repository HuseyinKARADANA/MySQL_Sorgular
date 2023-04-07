-- müşterilerin bulunduğu ülke ve ile göre gruplama yaparak siparis toplamini ve siparis adetlerini bulalım

SELECT IF( GROUPING(country),"TUM ULKELER",country) AS Country,IF(GROUPING(province),"TUM SEHIRLER",province) AS sehirGrup,
country,province,sum(order_total) AS siparis_toplami,COUNT(*) AS siparis_adedi 
FROM customer
INNER JOIN ecommerce.order USING(customer_id)
GROUP BY country,province WITH ROLLUP  ;
/*
	GRUP ara toplamı bulmak için GROUPING diye bir fonksiyon var
    sehirGrup ta 1 yazanlar ülkeye ait toplamlar
    sehirGrup ve ulkeGrup ikisi de 1 ise genel toplam
    
    IF(koşul,doğruysa yapılacak işlem,yanlışsa yapılacak işlem)
    
	2.satır ABD ye ait toplam
    6.satır Türkiye ye ait toplam
    7.satır ülkelerin hepsindeki toplam 
*/