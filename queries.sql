-- Total sales for each product
SELECT ProductID, SUM(Amount) AS TotalSales FROM Sales GROUP BY ProductID;

-- Total sales for each month
SELECT DATE_FORMAT(SaleDate, '%Y-%m') AS SaleMonth, SUM(Amount) AS TotalSales FROM Sales GROUP BY DATE_FORMAT(SaleDate, '%Y-%m');

-- Customers who made more than 5 purchases
SELECT CustomerID, COUNT(SaleID) AS TotalPurchases FROM Sales GROUP BY CustomerID HAVING COUNT(SaleID) > 5;
