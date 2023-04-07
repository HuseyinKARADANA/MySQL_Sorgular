-- foreign key oluşturma
/*
DROP TABLE IF EXISTS fatura;
CREATE TABLE IF NOT EXISTS fatura
(
fatura_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
cari_id INT NOT NULL,
CONSTRAINT fk_fatura_cari 
	FOREIGN KEY (cari_id) REFERENCES cari(cari_id)
    ON UPDATE RESTRICT
    ON DELETE RESTRICT

);
*/
-- foreign key silme
ALTER TABLE fatura
	DROP FOREIGN KEY fk_fatura_cari,
    ADD CONSTRAINT fk_fatura_cari_1 
	FOREIGN KEY (cari_id) REFERENCES cari(cari_id)
    ON UPDATE RESTRICT
    ON DELETE RESTRICT;
