
use ecommerce;
Select b.basket_id ,b.basket_qty,
p.product_id ,p.product_code,p.product_name,
u.unit_code,
c.customer_id,c.first_name,c.last_name,
b.basket_qty*p.product_price As line_total,
cu.currency_name
FROM basket b
INNER JOIN customer c ON b.customer_id=c.customer_id
INNER JOIN product p ON b.product_id=p.product_id
INNER JOIN unit AS u ON p.unit_id=u.unit_id
INNER JOIN currency cu ON p.currency_id=cu.currency_id
WHERE c.customer_id>3 ORDER BY line_total DESC;
