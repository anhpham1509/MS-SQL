CREATE VIEW AvailableProduct AS
SELECT *
FROM Products
WHERE Quantity > 0

CREATE VIEW CustomerInfo AS
SELECT *
FROM Customers