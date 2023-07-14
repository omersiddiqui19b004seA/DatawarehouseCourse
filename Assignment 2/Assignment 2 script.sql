create database assignment; 
use assignment;

-- Dimension Tables
CREATE TABLE dbo.DateDimension (
    Date DATE PRIMARY KEY,
    Day INT,
    Month INT,
    Year INT
);

CREATE TABLE dbo.OrderDimension (
    OrderID INT PRIMARY KEY,
    Status VARCHAR(50),
    Fulfillment VARCHAR(50),
    SalesChannel VARCHAR(50),
    ShipServiceLevel VARCHAR(50),
    CourierStatus VARCHAR(50),
    PromotionIDs VARCHAR(100),
    B2B VARCHAR(10),
    FulfilledBy VARCHAR(50)
);

CREATE TABLE dbo.ProductDimension (
    SKU VARCHAR(50) PRIMARY KEY,
    Style VARCHAR(50),
    Category VARCHAR(50),
    Size VARCHAR(50),
    ASIN VARCHAR(50)
);

CREATE TABLE dbo.LocationDimension (
    ShipCity VARCHAR(50),
    ShipState VARCHAR(50),
    ShipPostalCode VARCHAR(50),
    ShipCountry VARCHAR(50)
);

CREATE TABLE dbo.CurrencyDimension (
    Currency VARCHAR(50) PRIMARY KEY
);

-- Fact Table
CREATE TABLE dbo.SalesFact (
    OrderID INT,
    Date DATE,
    Qty INT,
    Amount DECIMAL(10, 2),
    Currency VARCHAR(50),
    FOREIGN KEY (OrderID) REFERENCES OrderDimension(OrderID),
    FOREIGN KEY (Date) REFERENCES DateDimension(Date),
    FOREIGN KEY (Currency) REFERENCES CurrencyDimension(Currency)
);

create database Datafromcsv;
use Datafromcsv;

drop table Datafromcsv;
CREATE TABLE Datafromcsv (
  [Additional Order items] VARCHAR(100),
  [Category Name] VARCHAR(100),
  [Customer City] VARCHAR(100),
  [Customer Country] VARCHAR(100),
  [Customer Fname] VARCHAR(100),
  [Customer Id] INT,
  [Customer Segment] VARCHAR(100),
  [Customer State] VARCHAR(100),
  [Customer Zipcode] VARCHAR(20),
  [Market] VARCHAR(100),
  [Order Customer Id] INT,
  [Order Date] DATE,
  [Order Id] INT,
  [Order Region] VARCHAR(100),
  [Order Item Total] DECIMAL(10, 2),
  [Order Quantity] INT,
  [Product Price] DECIMAL(10, 2),
  [Profit Margin] VARCHAR(10),
  [Profit Per Order] DECIMAL(10, 8),
  [Sales] DECIMAL(10, 2)
);



-- 1. Retrieve the total number of orders.
SELECT COUNT(*) AS TotalOrders
FROM Sales.SalesOrderHeader;

-- Explanation: This query provides the total number of orders in the database, which can be useful for understanding the overall order volume.

-- 2. Calculate the total revenue generated from sales.
SELECT SUM(TotalDue) AS TotalRevenue
FROM Sales.SalesOrderHeader;

-- Explanation: This query calculates the total revenue generated from sales by summing up the "TotalDue" column in the SalesOrderHeader table. It provides an overview of the overall revenue.

-- 3. Get the top 5 customers with the highest order count.
SELECT TOP 5 c.CustomerID, c.FirstName, c.LastName, COUNT(*) AS OrderCount
FROM Sales.SalesOrderHeader o
JOIN Sales.Customer c ON o.CustomerID = c.CustomerID
GROUP BY c.CustomerID, c.FirstName, c.LastName
ORDER BY OrderCount DESC;

-- Explanation: This query identifies the top 5 customers who have placed the highest number of orders. It helps identify the most active customers and their order count.

-- 4. Calculate the average order amount.
SELECT AVG(TotalDue) AS AverageOrderAmount
FROM Sales.SalesOrderHeader;

-- Explanation: This query calculates the average order amount by computing the average of the "TotalDue" column. It provides insight into the typical order value.

-- 5. Determine the total sales by product category.
SELECT p.ProductCategoryID, pc.Name AS CategoryName, SUM(od.LineTotal) AS TotalSales
FROM Sales.SalesOrderDetail od
JOIN Production.Product p ON od.ProductID = p.ProductID
JOIN Production.ProductCategory pc ON p.ProductCategoryID = pc.ProductCategoryID
GROUP BY p.ProductCategoryID, pc.Name
ORDER BY TotalSales DESC;

-- Explanation: This query calculates the total sales for each product category by summing up the line totals from the SalesOrderDetail table. It helps identify the highest-selling product categories.

-- 6. Identify the top-selling products by quantity.
SELECT TOP 10 p.ProductID, p.Name, SUM(od.OrderQty) AS TotalQuantitySold
FROM Sales.SalesOrderDetail od
JOIN Production.Product p ON od.ProductID = p.ProductID
GROUP BY p.ProductID, p.Name
ORDER BY TotalQuantitySold DESC;

-- Explanation: This query retrieves the top 10 best-selling products based on the total quantity sold. It helps identify the most popular products in terms of sales volume.

-- 7. Calculate the average profit margin by product.
SELECT p.ProductID, p.Name, AVG(ProfitMargin) AS AverageProfitMargin
FROM Production.ProductCostHistory pc
JOIN Production.Product p ON pc.ProductID = p.ProductID
GROUP BY p.ProductID, p.Name;

-- Explanation: This query calculates the average profit margin for each product based on historical cost data. It helps analyze the profitability of different products.

-- 8. Determine the number of orders per year.
SELECT YEAR(OrderDate) AS OrderYear, COUNT(*) AS OrderCount
FROM Sales.SalesOrderHeader
GROUP BY YEAR(OrderDate)
ORDER BY OrderYear;

-- Explanation: This query provides the number of orders per year, allowing for analysis of order trends and patterns over time.

-- 9. Identify the top 5 markets with the highest revenue.
SELECT TOP 5 s.StoreID, s.Name AS Market, SUM(soh.TotalDue) AS TotalRevenue
FROM Sales.Store s
JOIN Sales.SalesOrderHeader soh ON s.BusinessEntityID = soh.SalesPersonID
GROUP BY s.StoreID, s.Name
ORDER BY TotalRevenue DESC;

-- Explanation: This query identifies the top 5 markets (stores) with the highest revenue by summing up the total revenue from sales orders. It helps identify the most profitable markets.

-- 10. Calculate the average order processing time.
SELECT AVG(DATEDIFF(DAY, OrderDate, ShipDate)) AS AverageProcessingTime
FROM Sales.SalesOrderHeader;

-- Explanation: This query calculates the average order processing time by computing the average number of days between the order date and the ship date. It helps evaluate order fulfillment efficiency.

-- 11. Determine the distribution of orders by status.
SELECT Status, COUNT(*) AS OrderCount
FROM Sales.SalesOrderHeader
GROUP BY Status;

-- Explanation: This query provides the distribution of orders based on their status (e.g., pending, shipped, cancelled). It helps monitor order statuses and identify any potential issues.

-- 12. Get the top 10 customers with the highest total order amount.
SELECT TOP 10 c.CustomerID, c.FirstName, c.LastName, SUM(soh.TotalDue) AS TotalOrderAmount
FROM Sales.SalesOrderHeader soh
JOIN Sales.Customer c ON soh.CustomerID = c.CustomerID
GROUP BY c.CustomerID, c.FirstName, c.LastName
ORDER BY TotalOrderAmount DESC;

-- Explanation: This query identifies the top 10 customers with the highest total order amount. It helps recognize the most valuable customers in terms of order value.

