 
CREATE DATABASE OneToManyExamplesFinalDB;
USE OneToManyExamplesFinalDB;

 
CREATE TABLE Restaurants (
    RestaurantID INT PRIMARY KEY,
    RestaurantName VARCHAR(100),
    Address VARCHAR(200)
);

CREATE TABLE RestaurantCustomers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    RestaurantID INT,
    FOREIGN KEY (RestaurantID) REFERENCES Restaurants(RestaurantID)
);

CREATE TABLE RestaurantOrders (
    OrderID INT PRIMARY KEY,
    OrderDate DATE,
    CustomerID INT,
    FOREIGN KEY (CustomerID) REFERENCES RestaurantCustomers(CustomerID)
);

INSERT INTO Restaurants VALUES (1, 'Spicy Grill', 'Lahore');
INSERT INTO RestaurantCustomers VALUES (101, 'Adeel', 1), (102, 'Hina', 1);
INSERT INTO RestaurantOrders VALUES (1001, '2025-07-01', 101), (1002, '2025-07-02', 102);

SELECT r.RestaurantName, c.CustomerName, o.OrderDate
FROM Restaurants r
JOIN RestaurantCustomers c ON r.RestaurantID = c.RestaurantID
JOIN RestaurantOrders o ON c.CustomerID = o.CustomerID;

 --Example 2--
CREATE TABLE ShopCustomers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100)
);

CREATE TABLE ShopOrders (
    OrderID INT PRIMARY KEY,
    OrderDate DATE,
    CustomerID INT,
    FOREIGN KEY (CustomerID) REFERENCES ShopCustomers(CustomerID)
);

INSERT INTO ShopCustomers VALUES (1, 'Zara'), (2, 'Babar');
INSERT INTO ShopOrders VALUES (1, '2025-07-05', 1), (2, '2025-07-06', 2);

SELECT c.CustomerName, o.OrderDate
FROM ShopCustomers c
JOIN ShopOrders o ON c.CustomerID = o.CustomerID;

 --Example 3--
CREATE TABLE StoreProducts (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Price DECIMAL(10, 2)
);

CREATE TABLE StoreOrderDetails (
    OrderDetailID INT PRIMARY KEY,
    OrderID INT,
    ProductID INT,
    Quantity INT,
    FOREIGN KEY (OrderID) REFERENCES ShopOrders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES StoreProducts(ProductID)
);

INSERT INTO StoreProducts VALUES (1, 'Wireless Mouse', 1800.00), (2, 'Laptop Bag', 2500.00);
INSERT INTO StoreOrderDetails VALUES (1, 1, 1, 3), (2, 1, 2, 1);

SELECT p.ProductName, od.Quantity
FROM StoreProducts p
JOIN StoreOrderDetails od ON p.ProductID = od.ProductID;

 --Example 4--
CREATE TABLE StoreCategories (
    CategoryID INT PRIMARY KEY,
    CategoryName VARCHAR(100)
);

CREATE TABLE ProductCategories (
    ProductCategoryID INT PRIMARY KEY,
    ProductID INT,
    CategoryID INT,
    FOREIGN KEY (ProductID) REFERENCES StoreProducts(ProductID),
    FOREIGN KEY (CategoryID) REFERENCES StoreCategories(CategoryID)
);

INSERT INTO StoreCategories VALUES (1, 'Accessories'), (2, 'Office Supplies');
INSERT INTO ProductCategories VALUES (1, 1, 1), (2, 2, 2);

SELECT c.CategoryName, p.ProductName
FROM StoreCategories c
JOIN ProductCategories pc ON c.CategoryID = pc.CategoryID
JOIN StoreProducts p ON pc.ProductID = p.ProductID;

 --Example 5--
CREATE TABLE Suppliers (
    SupplierID INT PRIMARY KEY,
    SupplierName VARCHAR(100)
);

CREATE TABLE SupplierProducts (
    SupplierProductID INT PRIMARY KEY,
    SupplierID INT,
    ProductID INT,
    FOREIGN KEY (SupplierID) REFERENCES Suppliers(SupplierID),
    FOREIGN KEY (ProductID) REFERENCES StoreProducts(ProductID)
);

INSERT INTO Suppliers VALUES (1, 'Alpha Supplies'), (2, 'Beta Traders');
INSERT INTO SupplierProducts VALUES (1, 1, 1), (2, 2, 2);

SELECT s.SupplierName, p.ProductName
FROM Suppliers s
JOIN SupplierProducts sp ON s.SupplierID = sp.SupplierID
JOIN StoreProducts p ON sp.ProductID = p.ProductID;

 --Example 6--
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    EmployeeName VARCHAR(100)
);

CREATE TABLE EmployeeOrders (
    EmployeeOrderID INT PRIMARY KEY,
    EmployeeID INT,
    OrderID INT,
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID),
    FOREIGN KEY (OrderID) REFERENCES ShopOrders(OrderID)
);

INSERT INTO Employees VALUES (1, 'Noman'), (2, 'Ayesha');
INSERT INTO EmployeeOrders VALUES (1, 1, 1), (2, 2, 2);

SELECT e.EmployeeName, o.OrderDate
FROM Employees e
JOIN EmployeeOrders eo ON e.EmployeeID = eo.EmployeeID
JOIN ShopOrders o ON eo.OrderID = o.OrderID;

  --Example 7--
CREATE TABLE Shippers (
    ShipperID INT PRIMARY KEY,
    ShipperName VARCHAR(100)
);

CREATE TABLE ShippingOrders (
    ShippingOrderID INT PRIMARY KEY,
    ShipperID INT,
    OrderID INT,
    FOREIGN KEY (ShipperID) REFERENCES Shippers(ShipperID),
    FOREIGN KEY (OrderID) REFERENCES ShopOrders(OrderID)
);

INSERT INTO Shippers VALUES (1, 'FastCargo'), (2, 'QuickMove');
INSERT INTO ShippingOrders VALUES (1, 1, 1), (2, 2, 2);

SELECT s.ShipperName, o.OrderDate
FROM Shippers s
JOIN ShippingOrders so ON s.ShipperID = so.ShipperID
JOIN ShopOrders o ON so.OrderID = o.OrderID;

--Example 8--
CREATE TABLE Carts (
    CartID INT PRIMARY KEY,
    CustomerID INT,
    FOREIGN KEY (CustomerID) REFERENCES ShopCustomers(CustomerID)
);

CREATE TABLE CartItems (
    CartItemID INT PRIMARY KEY,
    CartID INT,
    ProductID INT,
    FOREIGN KEY (CartID) REFERENCES Carts(CartID),
    FOREIGN KEY (ProductID) REFERENCES StoreProducts(ProductID)
);

INSERT INTO Carts VALUES (1, 1), (2, 2);
INSERT INTO CartItems VALUES (1, 1, 1), (2, 2, 2);

SELECT c.CartID, p.ProductName
FROM Carts c
JOIN CartItems ci ON c.CartID = ci.CartID
JOIN StoreProducts p ON ci.ProductID = p.ProductID;

--Example 9--
CREATE TABLE Shops (
    ShopID INT PRIMARY KEY,
    ShopName VARCHAR(100),
    Category VARCHAR(100)
);

CREATE TABLE ShopProducts (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Price INT,
    ShopID INT,
    FOREIGN KEY (ShopID) REFERENCES Shops(ShopID)
);

CREATE TABLE ProductReviews (
    ReviewID INT PRIMARY KEY,
    Comment TEXT,
    Rating INT,
    ProductID INT,
    FOREIGN KEY (ProductID) REFERENCES ShopProducts(ProductID)
);

INSERT INTO Shops VALUES (1, 'Tech World', 'Electronics');
INSERT INTO ShopProducts VALUES (301, 'Smart Watch', 7000, 1), (302, 'Bluetooth Speaker', 5500, 1);
INSERT INTO ProductReviews VALUES (1, 'Amazing features!', 5, 301), (2, 'Sound is clear', 4, 302);

SELECT s.ShopName, p.ProductName, r.Comment, r.Rating
FROM Shops s
JOIN ShopProducts p ON s.ShopID = p.ShopID
JOIN ProductReviews r ON p.ProductID = r.ProductID
WHERE s.ShopID = 1;
INSERT INTO Restaurants VALUES (1, 'Biryani House', 'Karachi');
INSERT INTO RestaurantCustomers VALUES (201, 'Habib', 1), (202, 'Sakina', 1);
INSERT INTO RestaurantOrders VALUES (3001, '2025-06-10', 201), (3002, '2025-06-11', 201), (3003, '2025-06-12', 202);

SELECT r.RestaurantName, c.CustomerName, o.OrderDate
FROM Restaurants r
JOIN RestaurantCustomers c ON r.RestaurantID = c.RestaurantID
JOIN RestaurantOrders o ON c.CustomerID = o.CustomerID;

 