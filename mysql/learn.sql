-- Tạo user admin/admin và gán quyền
CREATE USER 'admin'@'%' IDENTIFIED WITH caching_sha2_password BY 'admin';
GRANT ALL PRIVILEGES ON *.* TO 'admin'@'%' WITH GRANT OPTION;

-- SELECT

-- Lấy toàn bộ dữ liệu từ tất cả các cột ở bảng customers
SELECT * FROM customers;

-- Lấy toàn bộ dữ liệu từ cột country ở bảng customers
SELECT country FROM customers;

-- Lấy các dữ liệu không trùng lặp từ cột country ở bảng customers
SELECT DISTINCT country FROM customers;

-- Lấy số lượng các dữ liệu không trùng lặp từ cột country ở bảng customers
SELECT COUNT(DISTINCT country) FROM customers;

-- WHERE

-- Lấy toàn bộ dữ liệu từ tất cả các cột ở bảng customers nếu cột country là Mexico
SELECT * FROM customers WHERE country = 'Mexico';

-- Lấy toàn bộ dữ liệu từ tất cả các cột ở bảng products nếu cột Price là 18
SELECT * FROM products WHERE price = 18;

-- Lấy toàn bộ dữ liệu từ tất cả các cột ở bảng products nếu cột Price lớn hơn 30
SELECT * FROM products WHERE price > 30;

-- Lấy toàn bộ dữ liệu từ tất cả các cột ở bảng products nếu cột Price nhỏ hơn 30
SELECT * FROM products WHERE price < 30;

-- Lấy toàn bộ dữ liệu từ tất cả các cột ở bảng products nếu cột Price lớn hơn hoặc bằng 30
SELECT * FROM products WHERE price >= 30;

-- Lấy toàn bộ dữ liệu từ tất cả các cột ở bảng products nếu cột Price nhỏ hơn hoặc bằng 30
SELECT * FROM products WHERE price <= 30;

-- Lấy toàn bộ dữ liệu từ tất cả các cột ở bảng products nếu cột Price khác 18
SELECT * FROM products WHERE price <> 18;

-- Lấy toàn bộ dữ liệu từ tất cả các cột ở bảng products nếu cột Price nằm trong khoảng 50 đến 60
SELECT * FROM products WHERE price BETWEEN 50 AND 60;

-- Lấy toàn bộ dữ liệu từ tất cả các cột ở bảng customers nếu cột city bắt đầu bằng chữ s
SELECT * FROM customers WHERE city LIKE 's%';

-- Lấy toàn bộ dữ liệu từ tất cả các cột ở bảng customers nếu cột city là Paris hoặc London
SELECT * FROM customers WHERE city IN ('Paris', 'London');

-- Order by

-- Lấy toàn bộ dữ liệu từ tất cả các cột ở bảng products sắp xếp theo Price giảm dần
SELECT * FROM products ORDER BY Price DESC;

-- Lấy toàn bộ dữ liệu từ tất cả các cột ở bảng products sắp xếp theo product_name tăng dần theo Alphabetically
SELECT * FROM products ORDER BY product_name;

-- Lấy toàn bộ dữ liệu từ tất cả các cột ở bảng customers sắp xếp country tăng dần, customer_name giảm dần
SELECT * FROM customers ORDER BY country ASC, customer_name DESC;

-- And

-- Lấy toàn bộ dữ liệu từ tất cả các cột ở bảng customers nếu country là Spain và customer_name bắt đầu là chữ G
SELECT * FROM customers WHERE country = 'Spain' AND customer_name LIKE 'G%';

-- Lấy toàn bộ dữ liệu từ tất cả các cột ở bảng customers nếu country là Spain và customer_name bắt đầu là chữ G hoặc bắt đầu là chữ R
SELECT * FROM customers WHERE country = 'Spain' AND (customer_name LIKE 'G%' OR customer_name LIKE 'R%');

-- Or

-- Lấy toàn bộ dữ liệu từ tất cả các cột ở bảng customers nếu country là Germany hoặc Spain
SELECT * FROM customers WHERE country = 'Germany' OR country = 'Spain';

-- NOT

-- Lấy toàn bộ dữ liệu từ tất cả các cột ở bảng customers nếu country không phải là Spain
SELECT * FROM customers WHERE NOT country = 'Spain';

-- Lấy toàn bộ dữ liệu từ tất cả các cột ở bảng customers nếu customer_name không bắt đầu từ A
SELECT * FROM customers WHERE customer_name NOT LIKE 'A%';

-- Lấy toàn bộ dữ liệu từ tất cả các cột ở bảng customers nếu customer_id không nằm trong khoảng từ 10 đến 60
SELECT * FROM customers WHERE customer_id NOT BETWEEN 10 AND 60;

-- Lấy toàn bộ dữ liệu từ tất cả các cột ở bảng customers nếu city không phải là Paris và London
SELECT * FROM customers WHERE city NOT IN ('Paris', 'London');

-- Insert

-- Đẩy dữ liệu vào bảng customers
INSERT INTO customers (customer_name, contact_name, address, city, postal_code, country)
VALUES ('Cardinal', 'Tom B. Erichsen', 'Skagen 21', 'Stavanger', '4006', 'Norway');

-- Đẩy nhiều dòng vào cùng lúc
INSERT INTO customers (customer_name, contact_name, address, city, postal_code, country)
VALUES
('Cardinal', 'Tom B. Erichsen', 'Skagen 21', 'Stavanger', '4006', 'Norway'),
('Greasy Burger', 'Per Olsen', 'Gateveien 15', 'Sandnes', '4306', 'Norway'),
('Tasty Tee', 'Finn Egan', 'Streetroad 19B', 'Liverpool', 'L1 0AA', 'UK');

-- NULL

-- Lấy dữ liệu từ các cột customer_name, ContactName, Address ở bảng customers nếu cột customers là null
SELECT customer_name, contact_name, Address
FROM customers
WHERE customers.address IS NULL;

-- Lấy dữ liệu từ các cột customer_name, ContactName, Address ở bảng customers nếu cột customers không phải là null
SELECT customer_name, contact_name, address
FROM customers
WHERE address IS NOT NULL;

-- Update

-- Update bảng customers cập nhật ContactName và city từ customer_id là 1
UPDATE customers
SET contact_name = 'Alfred Schmidt', city= 'Frankfurt'
WHERE customer_id = 1;

-- Update bảng customers cập nhật ContactName từ tất cả các record có country là Mexico
UPDATE customers
SET contact_name='Juan'
WHERE country='Mexico';

-- Delete

-- Delete từ bảng customers nếu customer_name là Alfreds Futterkiste
DELETE FROM customers WHERE customer_name='Alfreds Futterkiste';

-- Xóa toàn bộ dữ liệu từ bảng customers
DELETE FROM customers;

-- Drop

-- Xóa bảng customers
DROP TABLE customers;

-- limit

-- Lấy 3 record đầu tiên là bảng customers
SELECT * FROM customers LIMIT 3;

-- Aggregate Functions

-- MIN()
-- Lấy Price nhỏ nhất từ bảng products
SELECT MIN(price)
FROM products;

-- MAX()
-- Lấy Price lớn nhất từ bảng products
SELECT MAX(price)
FROM products;

-- Tạo Alias
SELECT MIN(price) AS SmallestPrice
FROM products;

-- Lấy giá trị nhỏ nhất của Price theo từng category_id từ bảng products
SELECT MIN(price) AS SmallestPrice, category_id
FROM products
GROUP BY category_id;

-- COUNT()

-- Trả về số lượng các record trong bảng products
SELECT COUNT(*)
FROM products;

-- Trả về số lượng các record trong bảng products nếu Price lớn hơn 20
SELECT COUNT(product_id)
FROM products
WHERE price > 20;

-- Trả về số lượng các Price không trùng lặp trong bảng products
SELECT COUNT(DISTINCT price)
FROM products;

-- Count số lượng record nhóm lại theo từng category_id
SELECT COUNT(*) AS CountRecords, category_id
FROM products
GROUP BY category_id;

-- Tính tổng Quantity từ bảng OrderDetails
SELECT SUM(quantity)
FROM order_details;

-- Tính tổng Quantity từ bảng OrderDetails nếu product_id là 11
SELECT SUM(quantity)
FROM order_details
WHERE product_id = 11;

-- Thêm Alias
SELECT SUM(quantity) AS total
FROM order_details;

-- Nhóm lại theo order_id, sau đó tính tổng Quantity
SELECT order_id, SUM(quantity) AS Total
FROM order_details
GROUP BY order_id;

-- Tính tổng Quantity từ bảng OrderDetails rồi nhân với 10
SELECT SUM(quantity * 10)
FROM order_details;

-- Join bảng OrderDetails với OrderDetails rồi tính tổng của Price nhân với Quantity
SELECT SUM(price * quantity)
FROM order_details
LEFT JOIN products ON order_details.product_id = products.product_id;

-- AVG()

-- Tính giá trung bình của Price từ bảng products
SELECT AVG(price)
FROM products;

-- Tính giá trung bình của Price từ bảng products nếu category_id là 1
SELECT AVG(price)
FROM products
WHERE category_id = 1;

-- Lấy tất cả từ bảng products nếu giá lớn hơn giá trung bình
SELECT * FROM products
WHERE price > (SELECT AVG(price) FROM products);

-- Nhóm lại theo category_id rồi tính giá trung bình sau đó đặt alias là AveragePrice
SELECT AVG(price) AS AveragePrice, category_id
FROM products
GROUP BY category_id;

-- LIKE

-- Lấy toàn bộ từ bảng customers nếu customer_name bắt đầu là a
SELECT * FROM customers
WHERE customer_name LIKE 'a%';

-- Lấy toàn bộ dữ liệu từ bảng customers nếu city thỏa mãn L_nd__ (bắt đầu bằng L, ký tự thứ 3 và 4 là n và d)
SELECT * FROM customers
WHERE city LIKE 'L_nd__';

-- Lấy toàn bộ dữ liệu từ bảng customers nếu city thỏa mãn %L% (chứa chữ L)
SELECT * FROM customers
WHERE city LIKE '%L%';

-- Lấy toàn bộ từ bảng customers nếu customer_name bắt đầu là La
SELECT * FROM customers
WHERE customer_name LIKE 'La%';

-- Lấy toàn bộ từ bảng customers nếu customer_name kết thúc là a
SELECT * FROM customers
WHERE customer_name LIKE '%a';

-- Lấy toàn bộ từ bảng customers nếu customer_name bắt đầu là b kết thúc là s
SELECT * FROM customers
WHERE customer_name LIKE 'b%s';

-- Lấy toàn bộ từ bảng customers nếu customer_name bắt đầu là b hoặc s hoặc p
SELECT * FROM customers
WHERE customer_name REGEXP '^[bsp]';

-- In

-- Lấy tất cả từ bảng customers nếu country là một trong Germany, France, UK
SELECT * FROM customers
WHERE country IN ('Germany', 'France', 'UK');

-- Lấy tất cả từ bảng customers nếu customer_id có trong bảng orders
SELECT * FROM customers
WHERE customer_id IN (SELECT customer_id FROM orders);

-- Lấy tất cả từ bảng customers nếu customer_id không có trong bảng orders
SELECT * FROM customers
WHERE customer_id NOT IN (SELECT customer_id FROM orders);

-- Between

-- Lấy tất cả từ bảng products nếu Price nằm trong khoảng 10 đến 20 và category_id là 1 hoặc 2 hoặc 3
SELECT * FROM products
WHERE Price BETWEEN 10 AND 20
AND category_id IN (1,2,3);

-- Join
-- (INNER) JOIN: Trả về các bản ghi có giá trị khớp nhau ở cả hai bảng.
-- LEFT (OUTER) JOIN: Trả về tất cả các bản ghi từ bảng bên trái, và các bản ghi khớp từ bảng bên phải.
-- RIGHT (OUTER) JOIN: Trả về tất cả các bản ghi từ bảng bên phải, và các bản ghi khớp từ bảng bên trái.
-- FULL (OUTER) JOIN: Trả về tất cả các bản ghi khi có sự khớp từ bảng bên trái hoặc bảng bên phải.

-- INNER JOIN

-- JOIN 2 tables
SELECT product_id, product_name, category_name
FROM products
INNER JOIN categories ON products.category_id = categories.category_id;

-- JOIN 3 tables
SELECT orders.order_id, customers.customer_name, shippers.shipper_name
FROM ((orders
INNER JOIN customers ON orders.customer_id = customers.customer_id)
INNER JOIN shippers ON orders.shipper_id = shippers.shipper_id);

-- Left join
SELECT customers.customer_name, orders.order_id
FROM customers
LEFT JOIN orders ON customers.customer_id = orders.customer_id
ORDER BY customers.customer_name;

-- right join
SELECT customers.customer_name, orders.order_id
FROM orders
RIGHT JOIN customers ON customers.customer_id = orders.customer_id
ORDER BY customers.customer_name;

SELECT orders.order_id, employees.last_name, employees.first_name
FROM orders
RIGHT JOIN employees ON orders.employee_id = employees.employee_id
ORDER BY orders.order_id;

-- full join
SELECT customers.customer_name, orders.order_id
FROM customers
LEFT JOIN orders ON customers.customer_id = orders.customer_id
UNION
SELECT customers.customer_name, orders.order_id
FROM orders
LEFT JOIN customers ON customers.customer_id = orders.customer_id
ORDER BY customer_name;

-- self join
SELECT A.customer_name AS customer_name1, B.customer_name AS customer_name2, A.city
FROM customers A, customers B
WHERE A.customer_id <> B.customer_id
AND A.city = B.city
ORDER BY A.city;

-- union
SELECT city FROM customers
UNION
SELECT city FROM suppliers
ORDER BY city;

-- union all
SELECT city FROM customers
UNION ALL
SELECT city FROM suppliers
ORDER BY city;

-- Group By
SELECT COUNT(customer_id), country
FROM customers
GROUP BY country;

-- Group By country Order by Count(customer_id)
SELECT COUNT(customer_id), country
FROM customers
GROUP BY country
ORDER BY COUNT(customer_id) DESC;

-- Having
SELECT COUNT(customer_id), country
FROM customers
GROUP BY country
HAVING COUNT(customer_id) > 5;

-- Lấy họ của nhân viên (Davolio hoặc Fuller) và đếm số lượng đơn hàng mà mỗi nhân viên đã xử lý, chỉ hiển thị nhân viên nào có hơn 25 đơn hàng.
SELECT employees.last_name, COUNT(orders.order_id) AS NumberOforders
FROM orders
INNER JOIN employees ON orders.employee_id = employees.employee_id
WHERE last_name = 'Davolio' OR last_name = 'Fuller'
GROUP BY last_name
HAVING COUNT(orders.order_id) > 25;

-- Exits
SELECT supplier_name
FROM suppliers
WHERE EXISTS (SELECT product_name FROM products WHERE products.supplier_id = suppliers.supplier_id AND Price < 20);

-- Any
SELECT product_name
FROM products
WHERE product_id = ANY
  (SELECT product_id
  FROM order_details
  WHERE quantity = 10);

SELECT product_name
FROM products
WHERE product_id = ANY
  (SELECT product_id
  FROM order_details
  WHERE quantity > 99);

SELECT product_name
FROM products
WHERE product_id = ANY
  (SELECT product_id
  FROM order_details
  WHERE quantity > 1000);

SELECT ALL product_name
FROM products
WHERE TRUE;

SELECT product_name
FROM products
WHERE product_id = ALL
  (SELECT product_id
  FROM order_details
  WHERE quantity = 10);

-- case
SELECT order_id, quantity,
CASE
    WHEN quantity > 30 THEN 'The quantity is greater than 30'
    WHEN quantity = 30 THEN 'The quantity is 30'
    ELSE 'The quantity is under 30'
END AS QuantityText
FROM order_details;