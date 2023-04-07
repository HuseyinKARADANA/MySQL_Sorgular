SELECT * FROM product;
INSERT INTO `order`(order_date,order_total,customer_id,payment_method_id)
VALUES ('2023-03-07',180,1,1);

INSERT INTO order_detail(order_id,order_qty,product_price,vat,line_total,product_id)
VALUES (last_insert_id(),3,60,18,180,3);