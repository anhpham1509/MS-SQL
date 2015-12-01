INSERT INTO Products
VALUES
	('iPhone11', 10000, 'Monkey', '10-03-1995', 1, 'Nokia'),
	('iPhone10', 10000, 'Handsome', '10-09-1997', 1, 'Samsung'),
	('iPhone9', 10000, 'Shitty', '11-08-1998', 1, 'Apple'),
	('iPhone8', 10000, 'Fine', '12-05-1999', 1, 'LG'),
	('iPhone7', 10000, 'Awesome', '12-08-1990', 1, 'Microsoft'),
	('iPhone6', 10000, 'Rikki', '11-04-1991', 1, 'BenQ'),
	('iPhone5', 10000, 'Out of order', '10-07-1992', 1, 'Blackberry'),
	('iPhone4', 10000, 'Sold out', '12-06-1993', 1, 'HP'),
	('iPhone3', 10000, 'Available', '04-07-1994', 1, 'Dell'),
	('iPhone2', 10000, 'Boring', '10-04-1995', 1, 'Lenovo')

GO

INSERT INTO Customers
VALUES
	('Tri Nguyen', 'Vanha mantie 6', '0134567895', 'tri.nguyen@metropolia.fi',0,20),
	('Anh Pham', 'Lintukorventie 2', '0468091997', 'anh.pham@metropolia.fi',1,22),
	('HyeSoo', 'Vieraskuja 5', '0411081998', 'hye.soo@metropolia.fi',0,23),
	('Hai Phan', 'Kilonrinne 10', '0412051999', 'hai.phan@metropolia.fi',1,25),
	('Hieu Nguyen', 'Kilonkallio 10', '0412081990', 'hieu.nguyen@metropolia.fi',0,30),
	('Timo Salin', 'Siltakuja 2', '0411041991', 'timo.salin@metropolia.fi',1,40),
	('Kimmo Sauren', 'Asemakuja 23', '0510071992', 'kimmo.sauren@metropolia.fi',1,60),
	('Juho Hotchkiss', 'Kirkkokatu 10', '0412061993', 'juho.hotchkiss@metropolia.fi',1,50),
	('Taru Patola', 'Kaivomestarinkatu 22', '0407881994', 'taru.patola@metropolia.fi',0,44),
	('Minh Cao', 'Linnuntie 2', '0410041995', 'minh.cao@metropolia.fi',1,80)
GO

INSERT INTO Orders
	(CustomerID, ProductID)
VALUES
	(1,10),
	(2,9),
	(3,8),
	(4,7),
	(5,6),
	(6,5),
	(7,4),
	(8,3),
	(9,2),
	(10,1)
