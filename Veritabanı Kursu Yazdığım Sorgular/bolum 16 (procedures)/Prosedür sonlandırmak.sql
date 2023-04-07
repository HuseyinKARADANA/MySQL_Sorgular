DROP PROCEDURE IF EXISTS leave_example;
DELIMITER $$
CREATE PROCEDURE leave_example()
eproc: BEGIN
SELECT "Başlangıç";
LEAVE eproc; -- prosedürü terk etti bu yüzden bitiş yaazmıyor
SELECT "Bitiş";
END $$
DELIMITER ;

CALL leave_example();