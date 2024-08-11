# SQL

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
