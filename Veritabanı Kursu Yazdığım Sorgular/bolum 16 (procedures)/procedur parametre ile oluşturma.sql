

DROP PROCEDURE IF EXISTS get_customer_by_province;
DELIMITER $$
CREATE PROCEDURE get_customer_by_province
(
	province VARCHAR(20) -- değişken adı - değişken tipi
)
BEGIN
	SELECT c.* FROM customer c WHERE c.province=province; -- parametreyi dışarıdan alıp çağırmamızı sağlayan metot
END $$
DELIMITER ;

CALL get_customer_by_province("İstanbul");