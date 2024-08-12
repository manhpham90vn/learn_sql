# SQL

## User
CREATE USER 'admin'@'%' IDENTIFIED WITH caching_sha2_password BY 'admin';
GRANT ALL PRIVILEGES ON *.* TO 'admin'@'%' WITH GRANT OPTION;

## SELECT

### Select all records from the Customers table:
SELECT * FROM Customers;

### Select all countries from the "Customers" table:
SELECT Country FROM Customers;

### Select all the different countries from the "Customers" table:
SELECT DISTINCT Country FROM Customers;

### Return the number of different countries.
SELECT COUNT(DISTINCT Country) FROM Customers;

## WHERE

### Select all customers from Mexico:
SELECT * FROM Customers WHERE Country='Mexico';

### WHERE Operators Equal
SELECT * FROM Products WHERE Price = 18;

### WHERE Operators Greater than
SELECT * FROM Products WHERE Price > 30;

### WHERE Operators Less than
SELECT * FROM Products WHERE Price < 30;

### WHERE Operators Greater than or equal
SELECT * FROM Products WHERE Price >= 30;

### WHERE Operators Less than or equal
SELECT * FROM Products WHERE Price <= 30;

### WHERE Operators Not equal. Note: In some versions of SQL this operator may be written as !=
SELECT * FROM Products WHERE Price <> 18;

### WHERE Operators Between a certain range
SELECT * FROM Products WHERE Price BETWEEN 50 AND 60;

### WHERE Operators Search for a pattern
SELECT * FROM Customers WHERE City LIKE 's%';

### WHERE Operators To specify multiple possible values for a column
SELECT * FROM Customers WHERE City IN ('Paris','London');

## Order by

### Sort the products by price:
SELECT * FROM Products ORDER BY Price DESC;

### Sort string alphabetically
SELECT * FROM Products ORDER BY ProductName;

### Sort by several columns
SELECT * FROM Customers ORDER BY Country ASC, CustomerName DESC;

## And

### Select all customers from Spain that starts with the letter 'G':
SELECT * FROM Customers WHERE Country = 'Spain' AND CustomerName LIKE 'G%';

### Select all Spanish customers that starts with either "G" or "R":
SELECT * FROM Customers WHERE Country = 'Spain' AND (CustomerName LIKE 'G%' OR CustomerName LIKE 'R%');

## Or

### Select all customers from Germany or Spain:
SELECT * FROM Customers WHERE Country = 'Germany' OR Country = 'Spain';

## Not
