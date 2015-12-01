CREATE TABLE Products(
	ProductID int PRIMARY KEY IDENTITY(1,1),
	ProductName varchar(800),
	Price int,
	[Description] varchar(800),
	ManufactureDate date,
	Quantity int,
	Brand varchar(800)
	)
GO

CREATE TABLE Customers(
	CustomerID int PRIMARY KEY IDENTITY(1,1),
	CustomerName varchar(800),
	[Address] varchar(800),
	Phone varchar(20),
	[Email] varchar(800),
	Gender bit,
	Age smallint,
	)
GO

CREATE TABLE Orders(
	OrderID int PRIMARY KEY IDENTITY(1,1),
	CustomerID int FOREIGN KEY REFERENCES Customers(CustomerID),
	ProductID int FOREIGN KEY REFERENCES Products(ProductID),
	OrderDate date DEFAULT(GETDATE()),
	)
GO