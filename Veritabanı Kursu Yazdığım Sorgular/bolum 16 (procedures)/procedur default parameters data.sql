/*DROP PROCEDURE IF EXISTS get_products;
DELIMITER $$
CREATE PROCEDURE get_products
(
prm_page INT,
prm_count INT
)
BEGIN
DECLARE start_from INT;
IF prm_page IS NULL THEN
SET prm_page = 1;
END IF;
IF prm_count IS NULL THEN
SET prm_count = 2;
END IF;
SET start_from = (prm_page - 1) * prm_count;
SELECT * FROM product
ORDER BY product_id ASC
LIMIT prm_count OFFSET start_from;
END $$
DELIMITER ;*/

CALL get_products(3,4); -- üstteki prosedürü çalıştırdık