CREATE FUNCTION CheckProduct(@InputID int)

RETURNS bit

AS

BEGIN
	DECLARE @Result  bit;
	DECLARE @CurrentQuantity int;

	SET @CurrentQuantity = (SELECT Quantity FROM Products WHERE ProductID = @InputID);

	IF @CurrentQuantity > 0
		SET @Result = 1;
	ELSE
		SET @Result = 0;

	RETURN @Result;
END;
