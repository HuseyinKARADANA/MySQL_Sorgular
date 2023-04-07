DROP PROCEDURE IF EXISTS one_err1;
DELIMITER $$
CREATE PROCEDURE one_err1()
BEGIN
 -- continue ile hata oluşmasına rağmen işlem devam edecek devam etmesini istemezsek continue yerine  EXIT yazarız 
DECLARE CONTINUE HANDLER FOR SQLEXCEPTION
BEGIN
SELECT 'HATA OLUŞTU';
END;
SIGNAL SQLSTATE '22003' SET MESSAGE_TEXT = 'Geçersiz Tutar';
SELECT 'SQL ÇALIŞTI';
END $$
DELIMITER ;

CALL one_err1();