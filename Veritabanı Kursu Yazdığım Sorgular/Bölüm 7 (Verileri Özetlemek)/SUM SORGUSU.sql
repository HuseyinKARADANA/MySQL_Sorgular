USE ecommerce;
SELECT  SUM(product_price * stock_qty) AS total_price FROM product p;

