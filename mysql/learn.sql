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