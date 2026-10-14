-- Q1: Total Revenue by City
SELECT c.City, SUM(p.Price * o.Quantity) as Total_Revenue
FROM Orders o
JOIN Customers c ON o.Customer_ID = c.Customer_ID
JOIN Products p ON o.Product_ID = p.Product_ID
GROUP BY c.City
ORDER BY Total_Revenue DESC;

-- Q2: Best Selling Category
SELECT p.Category, SUM(o.Quantity) as Total_Sold
FROM Orders o
JOIN Products p ON o.Product_ID = p.Product_ID
GROUP BY p.Category
ORDER BY Total_Sold DESC;

-- Q3: Top Customer by Spending
SELECT c.Customer_Name, SUM(p.Price * o.Quantity) as Total_Spent
FROM Orders o
JOIN Customers c ON o.Customer_ID = c.Customer_ID
JOIN Products p ON o.Product_ID = p.Product_ID
GROUP BY c.Customer_Name
ORDER BY Total_Spent DESC LIMIT 1;

-- Q4: Monthly Sales Trend
SELECT MONTH(Order_Date) as Month, SUM(p.Price * o.Quantity) as Monthly_Sales
FROM Orders o
JOIN Products p ON o.Product_ID = p.Product_ID
GROUP BY MONTH(Order_Date);

-- Q5: Customers who never ordered Electronics
SELECT Customer_Name FROM Customers
WHERE Customer_ID NOT IN (
  SELECT DISTINCT Customer_ID FROM Orders 
  JOIN Products ON Orders.Product_ID = Products.Product_ID 
  WHERE Category = 'Electronics'
);