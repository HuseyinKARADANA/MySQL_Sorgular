DROP PROCEDURE IF EXISTS loop_example;
DELIMITER $$
CREATE PROCEDURE loop_example
(
val INT 
)
BEGIN
DECLARE counter INT DEFAULT 0;
DECLARE result INT DEFAULT 0;

sayi_topla: LOOP
	SET counter=counter+1;
    
    IF counter>val THEN
		LEAVE sayi_topla;
    END IF;
    IF counter mod 2 = 1 THEN
		ITERATE sayi_topla;
        END IF;
    SET result=result+counter;
    
END LOOP sayi_topla;

SELECT result;

END $$
DELIMITER ;

CALL loop_example(6);