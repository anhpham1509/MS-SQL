SELECT *
FROM Customers

SELECT *
FROM Products
WHERE Quantity>0

SELECT *
FROM Customers
LEFT JOIN Orders
ON Customers.CustomerID = Orders.CustomerID
WHERE (YEAR(OrderDate) = 2015) AND (Age > 24) AND (Gender = 0)

SELECT COUNT(*) AS 'Total Sold Product'
FROM Orders

INSERT INTO Products
VALUES
	('iPhone1', 99000, 'Oldest one', '10-16-1977', 1, 'Sonera')

INSERT INTO Customers
VALUES
	('Yasamin Salami', 'Turuntie 1', '0456456895', 'yasamin.salami@metropolia.fi',0,2)

UPDATE Customers
	SET
		CustomerName = 'Changed Customer',
		[Address] = 'Uusikatu 3',
		Phone = '0465789123',
		Email = 'changed.customer@metropolia.fi',
		Gender = 0,
		Age = 26
WHERE CustomerID = 6


UPDATE Products
	SET
		Quantity = 35
WHERE ProductID BETWEEN 3 AND 8

DELETE FROM Products
WHERE Quantity < 1

DELETE FROM Customers
WHERE [Address] = NULL