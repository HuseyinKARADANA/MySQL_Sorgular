DROP PROCEDURE IF EXISTS case_test2;
DELIMITER $$
CREATE PROCEDURE case_test2
(
val INT
)
BEGIN
DECLARE result VARCHAR (50) DEFAULT '' ;
CASE
WHEN val = 1 THEN SET result= 'Çarpma';
WHEN val = 2 THEN SET result = 'Toplama';
WHEN val = 3 THEN SET result = 'Bölme';
WHEN val = 4 THEN SET result = 'Çıkarma';
ELSE SET result = 'Bilinmeyen İşlem';
END CASE;
SELECT result;
END$$
DELIMITER ;

CALL case_test2(2);