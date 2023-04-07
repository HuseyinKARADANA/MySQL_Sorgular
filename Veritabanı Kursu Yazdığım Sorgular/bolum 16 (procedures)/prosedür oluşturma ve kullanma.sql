CALL get_categories();-- procedures çalıştırma
-- procedures create
use ecommerce;
DELIMITER $$
CREATE PROCEDURE get_categories ()
BEGIN
SELECT * FROM category;
END $$
DELIMITER ;
-- ---------------------------------------