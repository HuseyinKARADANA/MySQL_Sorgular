DROP PROCEDURE IF EXISTS sum_orders;
DELIMITER $$
CREATE PROCEDURE sum_orders()
BEGIN
DECLARE finished BOOL DEFAULT FALSE;
	DECLARE crTotal DECIMAL(15,2) DEFAULT 0;
    DECLARE crOrderDate DATETIME;
    DECLARE result DECIMAL(15,2) DEFAULT 0;
    
    -- Cursor ile satırları tek tek gezecek bir  işaretçi oluşturuyoruz
	DECLARE curOrder CURSOR FOR
	SELECT order_total, order_date FROM `order`;

	DECLARE CONTINUE HANDLER FOR NOT FOUND SET 	finished=TRUE;
	OPEN curOrder;
	getOrder:LOOP
		FETCH curOrder INTO crTotal,crOrderDate;
		IF finished=TRUE THEN
		LEAVE getOrder;
		END IF;
		
    SET result=result+crTotal;
    
    
    END LOOP getOrder;


	CLOSE curOrder;
SELECT result;
END $$
DELIMITER ;

CALL sum_orders();