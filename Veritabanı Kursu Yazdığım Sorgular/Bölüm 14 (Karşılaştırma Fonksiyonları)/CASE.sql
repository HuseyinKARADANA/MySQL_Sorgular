-- siparislerde verilen ürünlerin adedini kontrol edelim 
-- eğer ürün adedi 25 den büyükse çok fazla, 5 den büyükse fazla,aksi takdirde normal yazdıralım 
SELECT order_id,order_qty,
CASE
	WHEN order_qty>1 THEN "Çok Fazla"
    WHEN order_qty>5 THEN "Fazla"
    ELSE "Normal"
END  AS durum
FROM order_detail;

-- order by ile case kullanımı
SELECT supplier_id,supplier_code,supplier_name,province,country FROM supplier ORDER BY (
CASE
	WHEN province IS NULL THEN country -- eğer province null ise country ye göre sıraladık
    ELSE province
END
);