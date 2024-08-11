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
SELECT * FROM Products
WHERE Price = 18;

### WHERE Operators Greater than

### WHERE Operators Less than

### WHERE Operators Greater than or equal

### WHERE Operators Less than or equal

### WHERE Operators Not equal. Note: In some versions of SQL this operator may be written as !=

### WHERE Operators Between a certain range

### WHERE Operators Search for a pattern

### WHERE Operators To specify multiple possible values for a column