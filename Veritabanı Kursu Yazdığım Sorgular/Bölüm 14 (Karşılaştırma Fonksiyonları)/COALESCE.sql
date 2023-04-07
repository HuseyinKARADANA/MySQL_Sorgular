-- verilen değerler arasında soldan sağa doru null olmayan ilk değeri verir (IFNULL'un bir alternatifi)	 
SELECT COALESCE(NULL,NULL,"google.com",NULL,"udemy.com");
SELECT COALESCE(NULL,1,2,"google.com",NULL,"udemy.com");

SELECT supplier_id,supplier_code,supplier_name,
COALESCE(country,"---") AS country, -- country değeri null olanlara   --- yazdı
COALESCE(province,"---") AS province -- province değeri null olanlara --- yazdı
 FROM supplier;