-- Step 1: Create database and use it
CREATE DATABASE IF NOT EXISTS pride;
USE pride;

-- Step 2: Create Products table
CREATE TABLE mkt_Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(50),
    Category VARCHAR(50),
    Price DECIMAL(10 , 2 ),
    StockQuantity INT
);

INSERT INTO mkt_Products VALUES
(1, 'Laptop', 'Electronics', 800.00, 50),
(2, 'Smartphone', 'Electronics', 500.00, 100),
(3, 'Desk Chair', 'Furniture', 120.00, 25),
(4, 'Coffee Maker', 'Appliances', 40.00, 30),
(5, 'Running Shoes', 'Apparel', 80.00, 50),
(6, 'Bookshelf', 'Furniture', 150.00, 20),
(7, 'Backpack', 'Accessories', 30.00, 40),
(8, 'Microwave', 'Appliances', 70.00, 15),
(9, 'Office Desk', 'Furniture', 200.00, 10),
(10, 'T-shirt', 'Apparel', 15.00, 75);

-- Step 3: Create Clients table
CREATE TABLE mkt_Clients (
    ClientID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    Phone VARCHAR(15)
);

INSERT INTO mkt_Clients VALUES
(1, 'John', 'Doe', 'john.doe@example.com', '555-1234'),
(2, 'Jane', 'Smith', 'jane.smith@example.com', '555-5678'),
(3, 'Robert', 'Johnson', 'robert.j@example.com', '555-9876'),
(4, 'Emily', 'Davis', 'emily.davis@example.com', '555-4321'),
(5, 'Michael', 'Wilson', 'michael.w@example.com', '555-8765'),
(6, 'Lisa', 'Miller', 'lisa.miller@example.com', '555-2345'),
(7, 'David', 'Brown', 'david.brown@example.com', '555-6789'),
(8, 'Sarah', 'Turner', 'sarah.turner@example.com', '555-3456'),
(9, 'Kevin', 'Harris', 'kevin.harris@example.com', '555-7890'),
(10, 'Emma', 'Taylor', 'emma.t@example.com', '555-4567');

-- Step 4: Create Sales table
CREATE TABLE mkt_Sales (
    SaleID INT PRIMARY KEY,
    ProductID INT,
    ClientID INT,
    SaleDate DATE,
    Quantity INT,
    TotalAmount DECIMAL(10 , 2 ),
    FOREIGN KEY (ProductID) REFERENCES mkt_Products(ProductID),
    FOREIGN KEY (ClientID) REFERENCES mkt_Clients(ClientID)
);

INSERT INTO mkt_Sales VALUES
(1, 1, 1, '2024-01-01', 2, 1600.00),
(2, 3, 2, '2024-01-03', 1, 120.00),
(3, 7, 4, '2024-01-05', 3, 90.00),
(4, 5, 5, '2024-01-08', 5, 400.00),
(5, 9, 3, '2024-01-10', 1, 200.00),
(6, 2, 6, '2024-01-12', 2, 1000.00),
(7, 4, 7, '2024-01-15', 4, 160.00),
(8, 8, 9, '2024-01-18', 1, 70.00),
(9, 6, 8, '2024-01-20', 3, 450.00),
(10, 10, 10, '2024-01-22', 2, 30.00);

-- Step 5: Suppliers table (removed wrong FK)
CREATE TABLE mkt_Suppliers (
    SupplierID INT PRIMARY KEY,
    SupplierName VARCHAR(50),
    ContactPerson VARCHAR(50),
    Email VARCHAR(100),
    Phone VARCHAR(15)
);

INSERT INTO mkt_Suppliers VALUES
(1, 'Tech Distributors', 'Mark Johnson', 'info@techdist.com', '555-1111'),
(2, 'Furniture Mart', 'Sarah Smith', 'sales@furnituremart.com', '555-2222'),
(3, 'Appliance World', 'David Brown', 'support@applianceworld.com', '555-3333'),
(4, 'Shoe Wholesalers', 'Emily Davis', 'sales@shoewholesale.com', '555-4444'),
(5, 'Book Suppliers', 'Michael Wilson', 'books@suppliers.com', '555-5555'),
(6, 'Office Solutions', 'Lisa Miller', 'info@officesolutions.com', '555-6666'),
(7, 'Accessory Hub', 'Robert Johnson', 'contact@accessoryhub.com', '555-7777'),
(8, 'Kitchen Essentials', 'Jane Smith', 'info@kitchenessentials.com', '555-8888'),
(9, 'Apparel World', 'Kevin Harris', 'info@apparelworld.com', '555-9999'),
(10, 'Sports Gear Inc.', 'Emma Taylor', 'sales@sportsgear.com', '555-0000');

-- Step 6: Employee Details
CREATE TABLE mkt_EmployeeDetails (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    Phone VARCHAR(15)
);

INSERT INTO mkt_EmployeeDetails VALUES
(1, 'Adam', 'Johnson', 'adam.j@example.com', '555-1234'),
(2, 'Olivia', 'Brown', 'olivia.b@example.com', '555-5678'),
(3, 'Liam', 'Miller', 'liam.m@example.com', '555-9876'),
(4, 'Ava', 'Davis', 'ava.d@example.com', '555-4321'),
(5, 'Noah', 'Wilson', 'noah.w@example.com', '555-8765'),
(6, 'Sophia', 'Smith', 'sophia.s@example.com', '555-2345'),
(7, 'Jackson', 'Turner', 'jackson.t@example.com', '555-6789'),
(8, 'Emma', 'Harris', 'emma.h@example.com', '555-3456'),
(9, 'Aiden', 'Taylor', 'aiden.t@example.com', '555-7890'),
(10, 'Grace', 'Jones', 'grace.j@example.com', '555-1111');

-- Step 7: Employee Involved Sales
CREATE TABLE mkt_Employees (
    SaleID INT PRIMARY KEY,
    ProductID INT,
    ClientID INT,
    EmployeeID INT,
    SaleDate DATE,
    Quantity INT,
    Employee_Position VARCHAR(50),
    FOREIGN KEY (EmployeeID) REFERENCES mkt_EmployeeDetails(EmployeeID)
);
