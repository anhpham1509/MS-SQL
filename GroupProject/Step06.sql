CREATE PROCEDURE CustomerInformation @InputID int
AS
BEGIN
SET NOCOUNT ON;

SELECT *
FROM Customers
WHERE CustomerID = @InputID

END
GO

CREATE PROCEDURE ModifyProductInformation @InputID int
AS
BEGIN
SET NOCOUNT ON;

UPDATE Products
	SET
		ProductName = 'iPhoneX',
		Price = 4567897,
		[Description] = 'New generation iPhone',
		ManufactureDate = '01-01-2088',
		Quantity = 9999,
		Brand = 'Apple'
WHERE ProductID = @InputID

END
GO

CREATE PROCEDURE RemoveOrder @InputDate date
AS
BEGIN
SET NOCOUNT ON;

DELETE FROM Orders
WHERE OrderDate < @InputDate

END
GO