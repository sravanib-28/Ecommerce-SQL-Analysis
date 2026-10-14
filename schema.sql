CREATE TABLE Customers (
    Customer_ID INT PRIMARY KEY,
    Customer_Name VARCHAR(100),
    City VARCHAR(50),
    Join_Date DATE
);
CREATE TABLE Products (
    Product_ID INT PRIMARY KEY,
    Product_Name VARCHAR(100),
    Category VARCHAR(50),
    Price INT
);
CREATE TABLE Orders (
    Order_ID INT PRIMARY KEY,
    Customer_ID INT,
    Product_ID INT,
    Order_Date DATE,
    Quantity INT,
    FOREIGN KEY (Customer_ID) REFERENCES Customers(Customer_ID),
    FOREIGN KEY (Product_ID) REFERENCES Products(Product_ID)
);
INSERT INTO Customers VALUES 
(1, 'Sravani', 'Hyderabad', '2023-01-15'),
(2, 'Akhil', 'Bangalore', '2023-02-20'),
(3, 'Priya', 'Hyderabad', '2023-03-10');
INSERT INTO Products VALUES
(101, 'Laptop', 'Electronics', 55000),
(102, 'Mouse', 'Electronics', 800),
(103, 'Office Chair', 'Furniture', 7000);
INSERT INTO Orders VALUES
(1001, 1, 101, '2024-01-10', 1),
(1002, 2, 102, '2024-01-12', 2),
(1003, 1, 105, '2024-02-05', 1);