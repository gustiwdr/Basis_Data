SELECT * from customers;

SELECT 
c.customerNumber AS `Customers ID`,
c.customerName AS `Customers Name`,
c.city AS `Customers City`,
c.country AS `Customers Country`
FROM customers c
WHERE c.city = 'Nantes' AND c.country = 'France'

SELECT
	c.customerNumber AS `Customers ID`, 
	c.customerName AS `Customers Name`, 
	c.city AS `Customers City`, 
	c.country AS `Customers Country`, 
CONCAT_WS(' ', e.firstName, e.lastName) AS `Sales Name`
FROM
	customers AS c
	JOIN
	employees AS e
	ON 
		c.salesRepEmployeeNumber = e.employeeNumber
	WHERE c.city = 'Las Vegas' AND c.country = 'USA'
	
	TUGAS
	
- TAMPILKAN ISI TABLE ORDERS
- TAMPILKAN ISI TABLE ORDER DETAILS
- RELASIKAN MEREKA

select * from orders;
select * from orderdetails;

SELECT 
orders.orderNumber,
-- orderdetails.quantityOrdered,
-- orderdetails.priceEach,
orderdetails.quantityOrdered * orderdetails.priceEach AS `Total Harga`
FROM orders
JOIN orderdetails
ON orders.orderNumber = orderdetails.orderNumber
-- HAVING `Total Harga`>= 3000
