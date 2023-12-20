-- What is the name of the table that holds the items Northwinds?
SELECT * FROM northwind.Products;
------------------------------------------------------------------
-- Write a query to list the product id, product name, and unit price of every product
SELECT ProductID, ProductName, UnitPrice 
FROM northwind.Products;
------------------------------------------------------------------
-- Write a query to list the product id, product name, and unit price of every product
-- Except this time, order then in ascending order by the price.
SELECT ProductID, ProductName, UnitPrice 
FROM northwind.Products
ORDER BY UnitPrice ASC;
---------------------------------------------------------------------
-- What are the products that we carry where the unit price is $7.50 or less?
SELECT ProductID, ProductName, UnitPrice
FROM northwind.Products
WHERE UnitPrice <= 7.50;
---------------------------------------------------------------------
-- What are the products that we carry where we have at least 100 units on hands? 
-- Order them in descending order by price
SELECT ProductID, ProductName, UnitsInStock, UnitPrice
FROM Products
WHERE UnitsInStock >= 100
ORDER BY UnitPrice DESC;
---------------------------------------------------------------------
--  What are the products that we carry where we have at least 100 units on hands? Order them in descending order by price. 
-- If two or more have the same price, list those in ascending order by product name.
SELECT ProductID, ProductName, UnitsInStock, UnitPrice
FROM Products
WHERE UnitsInStock >= 100
ORDER BY UnitPrice DESC, ProductName ASC;
---------------------------------------------------------------------
-- What are the products that we carry where we have no units on hand, but 1 or more units of them are on backorder? Order them by product name.
SELECT ProductID, ProductName, UnitsInStock, UnitsOnOrder
FROM Products
WHERE UnitsInStock = 0 AND UnitsOnOrder > 0
ORDER BY ProductName;
---------------------------------------------------------------------
-- What is the name of the table that holds the types (Categories) of the items Northwind sells?
SELECT * FROM northwind.Categories;
---------------------------------------------------------------------
-- Write a query that lists all the columns and all of the rows of the categories table? What is the category id of seafood?
SELECT CategoryID
FROM Categories
WHERE CategoryName = 'Seafood';
---------------------------------------------------------------------
-- Examine the Products table. How does it identify the type (category) of each item sold? 
-- Write a query to list all the seafood items we carry.
SELECT ProductName, CategoryName
FROM Products
JOIN Categories ON Products.CategoryID = Categories.CategoryID
WHERE Categories.CategoryName = 'Seafood';
---------------------------------------------------------------------
-- What are the first and last name of all the Northwind employees?
SELECT FirstName, LastName
FROM Employees;
---------------------------------------------------------------------
--  What employees have “manager” in their titles?
SELECT EmployeeID, FirstName, LastName, Title
FROM Employees
WHERE LOWER(Title) LIKE '%manager%';
---------------------------------------------------------------------
-- List the distinct job titles in employees
SELECT DISTINCT Title
FROM Employees;
---------------------------------------------------------------------
-- What employees have a salary that is between $200 and $2500?
SELECT EmployeeID, FirstName, LastName, Salary
FROM Employees
WHERE Salary BETWEEN 200 AND 2500;
---------------------------------------------------------------------
--  List all the information about all of Northwind’s suppliers.
SELECT *
FROM Suppliers;
---------------------------------------------------------------------
-- Examine the products table. How do you know what supplier supplies each product? 
-- Write a query to list all of the items that “Tokyo Traders” supplies to Northwind.
SELECT Products.ProductID, Products.ProductName, Suppliers.SupplierName
FROM Suppliers
JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID
WHERE Suppliers.SupplierName = 'Tokyo Traders';
















