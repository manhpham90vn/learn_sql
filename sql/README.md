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
