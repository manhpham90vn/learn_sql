-- Tạo user admin/admin và gán quyền
CREATE USER 'admin'@'%' IDENTIFIED WITH caching_sha2_password BY 'admin';
GRANT ALL PRIVILEGES ON *.* TO 'admin'@'%' WITH GRANT OPTION;

-- SELECT

-- Lấy toàn bộ dữ liệu từ tất cả các cột ở bảng `Customers`
SELECT * FROM Customers;

-- Lấy toàn bộ dữ liệu từ cột `Country` ở bảng `Customers`
SELECT Country FROM Customers;

-- Lấy các dữ liệu không trùng lặp từ cột `Country` ở bảng `Customers`
SELECT DISTINCT Country FROM Customers;

-- Lấy số lượng các dữ liệu không trùng lặp từ cột `Country` ở bảng `Customers`
SELECT COUNT(DISTINCT Country) FROM Customers;

-- WHERE

-- Lấy toàn bộ dữ liệu từ tất cả các cột ở bảng `Customers` nếu cột `Country` là `Mexico`
SELECT * FROM Customers WHERE Country = 'Mexico';

-- Lấy toàn bộ dữ liệu từ tất cả các cột ở bảng `Products` nếu cột `Price` là `18`
SELECT * FROM Products WHERE Price = 18;

-- Lấy toàn bộ dữ liệu từ tất cả các cột ở bảng `Products` nếu cột `Price` lớn hơn `30`
SELECT * FROM Products WHERE Price > 30;

-- Lấy toàn bộ dữ liệu từ tất cả các cột ở bảng `Products` nếu cột `Price` nhỏ hơn `30`
SELECT * FROM Products WHERE Price < 30;

-- Lấy toàn bộ dữ liệu từ tất cả các cột ở bảng `Products` nếu cột `Price` lớn hơn hoặc bằng `30`
SELECT * FROM Products WHERE Price >= 30;

-- Lấy toàn bộ dữ liệu từ tất cả các cột ở bảng `Products` nếu cột `Price` nhỏ hơn hoặc bằng `30`
SELECT * FROM Products WHERE Price <= 30;

-- Lấy toàn bộ dữ liệu từ tất cả các cột ở bảng `Products` nếu cột `Price` khác `18`
SELECT * FROM Products WHERE Price <> 18;

-- Lấy toàn bộ dữ liệu từ tất cả các cột ở bảng `Products` nếu cột `Price` nằm trong khoảng 50 đến 60
SELECT * FROM Products WHERE Price BETWEEN 50 AND 60;

-- Lấy toàn bộ dữ liệu từ tất cả các cột ở bảng `Customers` nếu cột `City` bắt đầu bằng chữ `s`
SELECT * FROM Customers WHERE City LIKE 's%';

-- Lấy toàn bộ dữ liệu từ tất cả các cột ở bảng `Customers` nếu cột `City` là `Paris` hoặc `London`
SELECT * FROM Customers WHERE City IN ('Paris', 'London');

-- Order by

-- Lấy toàn bộ dữ liệu từ tất cả các cột ở bảng `Products` sắp xếp theo `Price` giảm dần
SELECT * FROM Products ORDER BY Price DESC;

-- Lấy toàn bộ dữ liệu từ tất cả các cột ở bảng `Products` sắp xếp theo `ProductName` tăng dần theo Alphabetically
SELECT * FROM Products ORDER BY ProductName;

-- Lấy toàn bộ dữ liệu từ tất cả các cột ở bảng `Customers` sắp xếp `Country` tăng dần, `CustomerName` giảm dần
SELECT * FROM Customers ORDER BY Country ASC, CustomerName DESC;

-- And

-- Lấy toàn bộ dữ liệu từ tất cả các cột ở bảng `Customers` nếu `Country` là `Spain` và `CustomerName` bắt đầu là chữ `G`
SELECT * FROM Customers WHERE Country = 'Spain' AND CustomerName LIKE 'G%';

-- Lấy toàn bộ dữ liệu từ tất cả các cột ở bảng `Customers` nếu `Country` là `Spain` và `CustomerName` bắt đầu là chữ `G` hoặc bắt đầu là chữ `R`
SELECT * FROM Customers WHERE Country = 'Spain' AND (CustomerName LIKE 'G%' OR CustomerName LIKE 'R%');

-- Or

-- Lấy toàn bộ dữ liệu từ tất cả các cột ở bảng `Customers` nếu `Country` là `Germany` hoặc `Spain`
SELECT * FROM Customers WHERE Country = 'Germany' OR Country = 'Spain';

-- NOT

-- Lấy toàn bộ dữ liệu từ tất cả các cột ở bảng `Customers` nếu `Country` không phải là `Spain`
SELECT * FROM Customers WHERE NOT Country = 'Spain';

-- Lấy toàn bộ dữ liệu từ tất cả các cột ở bảng `Customers` nếu `CustomerName` không bắt đầu từ `A`
SELECT * FROM Customers WHERE CustomerName NOT LIKE 'A%';

-- Lấy toàn bộ dữ liệu từ tất cả các cột ở bảng `Customers` nếu `CustomerID` không nằm trong khoảng từ 10 đến 60
SELECT * FROM Customers WHERE CustomerID NOT BETWEEN 10 AND 60;

-- Lấy toàn bộ dữ liệu từ tất cả các cột ở bảng `Customers` nếu `City` không phải là `Paris` và `London`
SELECT * FROM Customers WHERE City NOT IN ('Paris', 'London');

-- Insert

-- Đẩy dữ liệu vào bảng `Customers`
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES ('Cardinal', 'Tom B. Erichsen', 'Skagen 21', 'Stavanger', '4006', 'Norway');

-- Đẩy nhiều dòng vào cùng lúc
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES
('Cardinal', 'Tom B. Erichsen', 'Skagen 21', 'Stavanger', '4006', 'Norway'),
('Greasy Burger', 'Per Olsen', 'Gateveien 15', 'Sandnes', '4306', 'Norway'),
('Tasty Tee', 'Finn Egan', 'Streetroad 19B', 'Liverpool', 'L1 0AA', 'UK');

-- NULL

-- Lấy dữ liệu từ các cột `CustomerName`, `ContactName`, `Address` ở bảng `Customers` nếu cột `Customers` là `null`
SELECT CustomerName, ContactName, Address
FROM Customers
WHERE Address IS NULL;

-- Lấy dữ liệu từ các cột `CustomerName`, `ContactName`, `Address` ở bảng `Customers` nếu cột `Customers` không phải là `null`
SELECT CustomerName, ContactName, Address
FROM Customers
WHERE Address IS NOT NULL;

-- Update

-- Update bảng `Customers` cập nhật `ContactName` và `City` từ `CustomerID` là 1
UPDATE Customers
SET ContactName = 'Alfred Schmidt', City= 'Frankfurt'
WHERE CustomerID = 1;

-- Update bảng `Customers` cập nhật ContactName từ tất cả các record có `Country` là `Mexico`
UPDATE Customers
SET ContactName='Juan'
WHERE Country='Mexico';

-- Delete

-- Delete từ bảng `Customers` nếu `CustomerName` là `Alfreds Futterkiste`
DELETE FROM Customers WHERE CustomerName='Alfreds Futterkiste';

-- Xóa toàn bộ dữ liệu từ bảng `Customers`
DELETE FROM Customers;

-- Drop

-- Xóa bảng `Customers`
DROP TABLE Customers;

-- limit

-- Lấy 3 record đầu tiên là bảng `Customers`
SELECT * FROM Customers LIMIT 3;

-- Aggregate Functions

-- MIN()
-- Lấy `Price` nhỏ nhất từ bảng `Products`
SELECT MIN(Price)
FROM Products;

-- MAX()
-- Lấy `Price` lớn nhất từ bảng `Products`
SELECT MAX(Price)
FROM Products;

-- Tạo Alias
SELECT MIN(Price) AS SmallestPrice
FROM Products;

-- Lấy giá trị nhỏ nhất của `Price` theo từng `CategoryID` từ bảng Products
SELECT MIN(Price) AS SmallestPrice, CategoryID
FROM Products
GROUP BY CategoryID;

-- COUNT()

-- Trả về số lượng các record trong bảng `Products`
SELECT COUNT(*)
FROM Products;

-- Trả về số lượng các record trong bảng `Products` nếu Price lớn hơn 20
SELECT COUNT(ProductID)
FROM Products
WHERE Price > 20;

-- Trả về số lượng các `Price` không trùng lặp trong bảng `Products`
SELECT COUNT(DISTINCT Price)
FROM Products;

-- Count số lượng record nhóm lại theo từng `CategoryID`
SELECT COUNT(*) AS CountRecords, CategoryID
FROM Products
GROUP BY CategoryID;

-- Tính tổng `Quantity` từ bảng `OrderDetails`
SELECT SUM(Quantity)
FROM OrderDetails;

-- Tính tổng `Quantity` từ bảng `OrderDetails` nếu `ProductId` là 11
SELECT SUM(Quantity)
FROM OrderDetails
WHERE ProductId = 11;

-- Thêm Alias
SELECT SUM(Quantity) AS total
FROM OrderDetails;

-- Nhóm lại theo `OrderID`, sau đó tính tổng `Quantity`
SELECT OrderID, SUM(Quantity) AS Total
FROM OrderDetails
GROUP BY OrderID;

-- Tính tổng `Quantity` từ bảng `OrderDetails` rồi nhân với 10
SELECT SUM(Quantity * 10)
FROM OrderDetails;

-- Join bảng `OrderDetails` với `OrderDetails` rồi tính tổng của `Price` nhân với `Quantity`
SELECT SUM(Price * Quantity)
FROM OrderDetails
LEFT JOIN Products ON OrderDetails.ProductID = Products.ProductID;

-- AVG()

-- Tính giá trung bình của `Price` từ bảng `Products`
SELECT AVG(Price)
FROM Products;

-- Tính giá trung bình của `Price` từ bảng `Products` nếu `CategoryID` là 1
SELECT AVG(Price)
FROM Products
WHERE CategoryID = 1;

-- Lấy tất cả từ bảng `Products` nếu giá lớn hơn giá trung bình
SELECT * FROM Products
WHERE price > (SELECT AVG(price) FROM Products);

-- Nhóm lại theo `CategoryID` rồi tính giá trung bình sau đó đặt alias là `AveragePrice`
SELECT AVG(Price) AS AveragePrice, CategoryID
FROM Products
GROUP BY CategoryID;

-- LIKE

-- Lấy toàn bộ từ bảng `Customers` nếu `CustomerName` bắt đầu là `a`
SELECT * FROM Customers
WHERE CustomerName LIKE 'a%';

-- Lấy toàn bộ dữ liệu từ bảng `Customers` nếu `city` thỏa mãn `L_nd__` (bắt đầu bằng L, ký tự thứ 3 và 4 là n và d)
SELECT * FROM Customers
WHERE city LIKE 'L_nd__';

-- Lấy toàn bộ dữ liệu từ bảng `Customers` nếu `city` thỏa mãn `%L%` (chứa chữ L)
SELECT * FROM Customers
WHERE city LIKE '%L%';

-- Lấy toàn bộ từ bảng `Customers` nếu `CustomerName` bắt đầu là `La`
SELECT * FROM Customers
WHERE CustomerName LIKE 'La%';

-- Lấy toàn bộ từ bảng `Customers` nếu `CustomerName` kết thúc là `a`
SELECT * FROM Customers
WHERE CustomerName LIKE '%a';

-- Lấy toàn bộ từ bảng `Customers` nếu `CustomerName` bắt đầu là `b` kết thúc là `s`
SELECT * FROM Customers
WHERE CustomerName LIKE 'b%s';

-- Lấy toàn bộ từ bảng `Customers` nếu `CustomerName` bắt đầu là b hoặc s hoặc p
SELECT * FROM Customers
WHERE CustomerName REGEXP '^[bsp]';

-- In

-- Lấy tất cả từ bảng `Customers` nếu `Country` là một trong `Germany`, `France`, `UK`
SELECT * FROM Customers
WHERE Country IN ('Germany', 'France', 'UK');

-- Lấy tất cả từ bảng `Customers` nếu `CustomerID` có trong bảng `Orders`
SELECT * FROM Customers
WHERE CustomerID IN (SELECT CustomerID FROM Orders);

-- Lấy tất cả từ bảng `Customers` nếu `CustomerID` không có trong bảng `Orders`
SELECT * FROM Customers
WHERE CustomerID NOT IN (SELECT CustomerID FROM Orders);

-- Between

-- Lấy tất cả từ bảng `Products` nếu `Price` nằm trong khoảng 10 đến 20 và CategoryID là 1 hoặc 2 hoặc 3
SELECT * FROM Products
WHERE Price BETWEEN 10 AND 20
AND CategoryID IN (1,2,3);

-- Join
-- (INNER) JOIN: Trả về các bản ghi có giá trị khớp nhau ở cả hai bảng.
-- LEFT (OUTER) JOIN: Trả về tất cả các bản ghi từ bảng bên trái, và các bản ghi khớp từ bảng bên phải.
-- RIGHT (OUTER) JOIN: Trả về tất cả các bản ghi từ bảng bên phải, và các bản ghi khớp từ bảng bên trái.
-- FULL (OUTER) JOIN: Trả về tất cả các bản ghi khi có sự khớp từ bảng bên trái hoặc bảng bên phải.

-- INNER JOIN

-- JOIN 2 tables
SELECT ProductID, ProductName, CategoryName
FROM Products
INNER JOIN Categories ON Products.CategoryID = Categories.CategoryID;

-- JOIN 3 tables
SELECT Orders.OrderID, Customers.CustomerName, Shippers.ShipperName
FROM ((Orders
INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID)
INNER JOIN Shippers ON Orders.ShipperID = Shippers.ShipperID);

-- Left join
SELECT Customers.CustomerName, Orders.OrderID
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID
ORDER BY Customers.CustomerName;

-- right join

SELECT Customers.CustomerName, Orders.OrderID
FROM Orders
RIGHT JOIN Customers ON Customers.CustomerID = Orders.CustomerID
ORDER BY Customers.CustomerName;

SELECT Orders.OrderID, Employees.LastName, Employees.FirstName
FROM Orders
RIGHT JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID
ORDER BY Orders.OrderID;