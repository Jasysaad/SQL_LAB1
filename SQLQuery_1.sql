
/*  Select all the records from the "Customers" table.*/
--  SELECT * 
--  from Customers 

/* Get distinct countries from the Customers table.*/
-- SELECT
-- Country 
-- FROM Customers

/*Get all the records from the table Customers where the Customer’s ID starts with
“AN”. */
--SELECT * 
--FROM Customers 
--WHERE CustomerID LIKE 'AN%'

/*Get the first 100 records of the orders table.*/
-- SELECT TOP 100 * 
-- FROM Orders

/*Get all customers that live in the postal codes 1010, 3012, 12209, and 05023.*/
-- SELECT *
-- FROM Customers
-- WHERE PostalCode ='1010' OR PostalCode = '3012' OR PostalCode = '12209' OR PostalCode = '05023'

/*Get all orders where the ShipRegion is not equal to NULL.*/
-- SELECT * 
-- FROM Orders
-- WHERE NOT ShipRegion = 'NULL' 

/*Get all customers ordered by the country, then by the city.*/
-- SELECT * 
-- FROM Customers
-- ORDER BY Country ASC, City

/*Add a new customer to the customers table. You can use whatever values.*/
-- INSERT
-- INTO Customers
-- (CustomerID, CompanyName, ContactName, Address, City, PostalCode, Country, Phone)
-- Values ('ABCD1', 'JYS LLC', 'Jasmine Saad', '18 LongBeach Dr','Leamington','N9Y4EJ', 'Canada','2487953952')

/*Update all ShipRegion to the value ‘EuroZone’ in the Orders table, where the
ShipCountry is equal to France.*/

-- UPDATE Orders 
-- SET ShipRegion = 'Eurozone' 
-- WHERE ShipCountry='France'
/*Double Check*/
-- SELECT *
-- FROM Orders
-- WHERE ShipCountry='France'

/* Delete all orders from OrderDetails that have quantity of 1.*/
-- DELETE FROM [Order Details]
-- WHERE Quantity=1
/*Double Check*/
-- SELECT *
-- FROM [Order Details]

/*Calculate the average, max, and min of the quantity at the orderdetails table.*/
-- SELECT 
-- AVG(Quantity) AS Average_Order#,
-- MAX(Quantity) AS Max_Order#,
-- MIN(Quantity) AS MIN_Order#
--  FROM [Order Details]

-- /*Find the CustomerID that placed order 10290 (orderstable)*/
-- SELECT CustomerID 
-- FROM Orders
-- WHERE OrderID = '10290'

/*Do an inner join, left join, right join on orders and customers tables.*/
-- SELECT C.CustomerID, O.OrderDate
-- FROM Orders AS O
-- INNER JOIN Customers AS C
-- ON C.CustomerID = O.CustomerID

-- SELECT C.CompanyName, O.OrderID
-- FROM Customers AS C 
-- LEFT OUTER JOIN Orders AS O
--   ON C.CustomerID = O.CustomerID

--   SELECT C.CompanyName, O.OrderID
-- FROM Customers AS C 
-- RIGHT OUTER JOIN Orders AS O
--   ON C.CustomerID = O.CustomerID

/*Get employees’ firstname for all employees who report to no one*/

-- SELECT FirstName
-- FROM Employees
-- WHERE ReportsTo IS NULL;

/* Get employees’ firstname for all employees who report to Andrew.*/
-- SELECT *
-- FROM Employees

SELECT FirstName
FROM Employees
WHERE ReportsTo=2;