SET @order_total = (SELECT SUM(order_total) FROM ecommerce.order);
SET @tax = 1.18;
SELECT @order_total * @tax;
-- SET @num1 = 1;
-- SET @num2 = 2;
-- SET @total = @num1 + @num2;
-- SELECT @total;

DROP PROCEDURE IF EXISTS sum_numbers;
DELIMITER $$
CREATE PROCEDURE sum_numbers
(
IN prm_num1 INT,
IN prm_num2 INT, -- dışarıdan veri alacak
OUT prm_total INT -- dışarıya veri verecek
)
BEGIN
DECLARE total INT;
SET total = prm_num1 + prm_num2;
#SELECT total;
SET prm_total = total;
END $$
DELIMITER ;

SET @total=0;
CALL sum_numbers(34,54,@total);
SELECT @total;