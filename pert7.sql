SELECT * FROM orders;

SELECT DISTINCT orders.status FROM orders ORDER BY `status` ASC;

SELECT orders.status from orders GROUP BY orders.status;

SELECT orders.status, COUNT(*) from orders GROUP BY orders.status;

SELECT o.status, SUM(od.priceEach * od.quantityOrdered) AS `Total`
FROM orders o
INNER JOIN orderdetails od USING (orderNumber) 
GROUP BY o.status;

SELECT COUNT(*) FROM customers;

SELECT YEAR(orders.orderDate) as `Years`,
SUM(orderdetails.priceEach * orderdetails.quantityOrdered) as `Total`
FROM orders 
INNER JOIN orderdetails USING (orderNumber)
WHERE orders.status = 'Shipped'
GROUP BY `Years`
-- HAVING `Years` >= 2004
;

SELECT orderNumber, 
SUM(orderdetails.quantityOrdered) as `Total Item`,
SUM(orderdetails.priceEach * orderdetails.quantityOrdered) as `Total Bayar`
from orderdetails
GROUP BY orderNumber
-- HAVING `Total Bayar` > 50000;
-- HAVING `Total Bayar` > 50000 AND `Total Item` > 600
;




