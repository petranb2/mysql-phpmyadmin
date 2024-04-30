CREATE DATABASE  IF NOT EXISTS `sampleDB`;
USE `sampleDB`;

-- Create sample tables
CREATE TABLE IF NOT EXISTS Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Department VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Category VARCHAR(50),
    Price DECIMAL(10,2)
);

CREATE TABLE IF NOT EXISTS Orders (
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    OrderDate DATE,
    TotalAmount DECIMAL(10,2),
    EmployeeID INT,
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);

-- Insert sample data into Employees table
INSERT INTO Employees (EmployeeID, FirstName, LastName, Department)
VALUES
    (1, 'John', 'Doe', 'Sales'),
    (2, 'Jane', 'Smith', 'Marketing'),
    (3, 'Alice', 'Johnson', 'Finance');

-- Insert sample data into Products table
INSERT INTO Products (ProductID, ProductName, Category, Price)
VALUES
    (101, 'Laptop', 'Electronics', 1200.00),
    (102, 'Smartphone', 'Electronics', 800.00),
    (103, 'Desk', 'Furniture', 250.00);

-- Insert sample data into Orders table
INSERT INTO Orders (OrderID, CustomerName, OrderDate, TotalAmount, EmployeeID)
VALUES
    (1001, 'John Smith', '2024-04-01', 2000.00, 1),
    (1002, 'Alice Johnson', '2024-04-05', 1500.00, 3),
    (1003, 'Jane Doe', '2024-04-10', 1800.00, 2);
