use ecommerce;

-- hazır tabloyu tekrar oluşturma işlemi( tablo üstünde sağ tık send to sql editör-create statement)
/*CREATE TABLE `_customer` (
  `customer_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `country` varchar(20) NOT NULL,
  `province` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `tc_identity` varchar(20) DEFAULT NULL,
  `registration_date` datetime NOT NULL,
  `birth_date` datetime NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;*/

-- customer tablosundaki bütün kayıtları _customere ekleme
-- INSERT INTO _customer SELECT * FROM customer;

-- _customer tablosundaki bütün verileri silme
-- DELETE FROM _customer where customer_id>0;


INSERT INTO _customer
(first_name,last_name,country,province,email,tc_identity,registration_date,birth_date) 
SELECT 
first_name,last_name,country,province,email,tc_identity,registration_date,birth_date 
FROM customer LIMIT 2;
