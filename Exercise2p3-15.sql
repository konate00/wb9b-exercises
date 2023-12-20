-- 	exercices2 P 3-15

-- 1. How many suppliers are there?
SELECT COUNT(*) AS TotalSuppliers
FROM Suppliers;
---------------------------------------------------------------------
-- 2. What is the sum of all the employee's salaries?
SELECT SUM(Salary) AS TotalSalaries
FROM Employees;
---------------------------------------------------------------------
-- 3. What is the price of the cheapest item that Northwind sells?
SELECT Min(UnitPrice) AS CheapestItemPrice
FROM Products;
---------------------------------------------------------------------
-- 4. What is the average price of items that Nortwind sells?
SELECT AVG(UnitPrice) AS AveragePrice
FROM Products;
---------------------------------------------------------------------
-- 5. What is the price of the most expensive item that Northwind sells?
SELECT MAX(UnitPrice) AS MostExpensiveItemPrice
FROM Products;
---------------------------------------------------------------------
-- 6. What is the supplier ID of each supplier and the number of items they supply? 
-- You can only answer this query by only looking at the products table.
SELECT SupplierID, COUNT(ProductID) AS NumbereOfItemsSupplied
FROM Products
GROUP BY SupplierID;
---------------------------------------------------------------------
-- 7. What is the category ID of each category and the average price of each item in the category? 
-- You can answer this query by only looking at the products table.
SELECT CategoryID, AVG(UnitPrice) AS AveragePrice
FROM Products
GROUP BY CategoryID;
---------------------------------------------------------------------
-- 8. For suppliers that provide at least 5 items to northwind, 
-- what is the supplier ID of each supplier and the number of items they supply? 
-- You can answer this query by only looking at the product table.
SELECT SupplierID, COUNT(ProductID) AS NumberOfItemsSupplied
FROM Products
GROUP BY SupplierID
HAVING COUNT(ProductID) >= 5
ORDER BY SupplierID;
---------------------------------------------------------------------
-- 9. List the productid, product name, and inventory value 
-- (calculated by multiplying unit price by the number of units on hand). 
-- Sort the results in descending order by the value. 
-- If two or more have the same value, order by product name.
SELECT ProductID, ProductName, UnitPrice * UnitsInStock AS InventoryValue
FROM Products
order by InventoryValue DESC, ProductName;


SELECT SupplierID, COUNT(ProductID) AS NumberOfItemsSupplied FROM Products HAVING COUNT(ProductID) >= 5 ORDER BY SupplierID LIMIT 0, 1000	Error Code: 1140. In aggregated query without GROUP BY, expression #1 of SELECT list contains nonaggregated column 'northwind.Products.SupplierID'; this is incompatible with sql_mode=only_full_group_by	0.0015 sec




