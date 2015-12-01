ALTER TABLE Products
ADD OrderNumber int

ALTER TABLE Customers
ADD OrderNumber int

CREATE TRIGGER Incresement
ON Orders
FOR INSERT
AS
BEGIN
	DECLARE @NewProductID int;
	DECLARE @NewCustomerID int;

	SET @NewProductID = (SELECT ProductID FROM inserted);
	SET @NewCustomerID = (SELECT CustomerID FROM inserted);

	UPDATE Products
		SET
			OrderNumber = OrderNumber + 1
	WHERE (ProductID = @NewProductID)

	UPDATE Customers
		SET
			OrderNumber = OrderNumber + 1
	WHERE (CustomerID = @NewCustomerID)
END;


CREATE TRIGGER DeleteOrders
ON Customers
FOR DELETE
AS
BEGIN
	DECLARE @DeleteID int;
	SET @DeleteID = (SELECT CustomerID FROM deleted);

	DELETE FROM Orders
	WHERE (CustomerID = @DeleteID)
END;
