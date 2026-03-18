# coffee-shop-database
 Coffee shop database project using SQL
# Coffee Shop Database Project

## Introduction

This project is a simple database system for a coffee and bakery shop.
The purpose of this project is to practice SQL and database design.

The system stores information about customers, employees, products, categories, and orders.

## Database Structure

The database contains the following tables:

* Customer
* Employee
* Category
* Product
* Orders
* Order_Items

These tables are connected using primary keys and foreign keys.

## Features

The database supports basic operations such as:

* Creating tables
* Inserting data
* Updating data
* Deleting data
* Querying data

It also includes SQL queries for data analysis such as counting products, calculating averages, and joining tables.

## Example Queries

Example: Show all products

```sql
SELECT * FROM Product;
```

Example: Show products with price greater than 60

```sql
SELECT * FROM Product
WHERE price > 60;
```

Example: Join orders with customer information

```sql
SELECT Orders.order_id,
customer_name,
Orders.order_date
FROM Orders
JOIN Customer
ON Orders.customer_id = Customer.customer_id;
```

## Purpose of the Project

This project was created as part of a database course to understand how relational databases work and how SQL queries are used in real systems.

## Technology Used

* SQL
* Relational Database Design
