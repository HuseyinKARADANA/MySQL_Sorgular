DROP PROCEDURE IF EXISTS repeat_loop;
DELIMITER $$
CREATE PROCEDURE repeat_loop
(
val INT
)
BEGIN

DECLARE result INT DEFAULT 0;
DECLARE counter INT DEFAULT 0;
REPEAT
SET counter = counter + 1;
SET result = result + counter;
UNTIL counter >= val
END REPEAT;
SELECT result;

END $$
DELIMITER ;

CALL repeat_loop(5);