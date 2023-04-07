SHOW VARIABLES LIKE "event%";
 
-- event oluşturma
DELIMITER $$
CREATE EVENT delete_old_orders	ON SCHEDULE
EVERY 1 DAY -- day yazan yere sıklık yazılıyor her gün-saat-ay-dakika şeklinde
STARTS '2023-03-08' ENDS '2023-03-20'
DO BEGIN
	 DELETE FROM `order`
     WHERE order_date<NOW()- INTERVAL 1 YEAR;
END $$

DELIMITER ;

-- eventi görme
SHOW EVENTS;
SHOW CREATE EVENT delete_old_orders;

-- event değiştirme
DELIMITER $$
ALTER EVENT delete_old_orders	ON SCHEDULE
EVERY 1 DAY -- day yazan yere sıklık yazılıyor her gün-saat-ay-dakika şeklinde
STARTS '2023-03-08' ENDS '2023-03-20'
DO BEGIN
	 DELETE FROM `order`
     WHERE order_date<NOW()- INTERVAL 1 YEAR;
END $$

DELIMITER ;

-- event silme
DROP EVENT IF EXISTS delete_old_orders;
