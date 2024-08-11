# SQL

## SELECT

- lấy dữ liệu từ cột `CustomerName` và `City` từ bảng `Customers`

```sql
SELECT CustomerName, City FROM Customers;
```

- lấy toàn bộ dữ liệu từ bảng `Customers`

```sql
SELECT * FROM Customers;
```

- lấy dữ liệu không trùng lặp từ 3 cột `Country`, `CustomerName`, `City` từ bảng `Customers`

```sql
SELECT DISTINCT Country, CustomerName, City FROM Customers;
```

- lấy số lượng dữ liệu không trùng lặp từ cột `Country` từ bảng `Customers`

```sql
SELECT COUNT(DISTINCT Country) FROM Customers;
```

## WHERE

- lấy toàn bộ dữ liệu từ bảng `Customers` nếu `Country` là `Mexico`

```sql
SELECT * FROM Customers WHERE Country='Mexico';
```

- các toán tử có thể sử dụng trong `WHERE`

| Operator     | Description                                      | Example                                                             |
| ------------ | ------------------------------------------------ | ------------------------------------------------------------------- |
| `=`          | Equal to a specified value.                      | `SELECT * FROM Customers WHERE Country = 'USA';`                    |
| `>`          | Greater than a specified value.                  | `SELECT * FROM Products WHERE Price > 100;`                         |
| `<`          | Less than a specified value.                     | `SELECT * FROM Products WHERE Price < 50;`                          |
| `>=`         | Greater than or equal to a specified value.      | `SELECT * FROM Products WHERE Price >= 200;`                        |
| `<=`         | Less than or equal to a specified value.         | `SELECT * FROM Products WHERE Price <= 75;`                         |
| `<>` or `!=` | Not equal to a specified value.                  | `SELECT * FROM Customers WHERE Country <> 'Canada';`                |
| `BETWEEN`    | Filters the result set within a certain range.   | `SELECT * FROM Products WHERE Price BETWEEN 50 AND 60;`             |
| `LIKE`       | Searches for a specified pattern in a column.    | `SELECT * FROM Customers WHERE CustomerName LIKE 'A%';`             |
| `IN`         | Specifies multiple possible values for a column. | `SELECT * FROM Customers WHERE Country IN ('USA', 'UK', 'Canada');` |

## ORDER BY

- sắp xếp dữ liệu theo thứ tự tăng dần hoặc giảm dần

```sql
SELECT * FROM Products ORDER BY Price DESC;
```
