CREATE DATABASE coffee_shop_db;
USE coffee_shop_db;

CREATE TABLE Customer (
customer_id INT PRIMARY KEY,
customer_name VARCHAR(100),
email VARCHAR(100),
phone VARCHAR(15)
);

CREATE TABLE Employee (
employee_id INT PRIMARY KEY,
employee_name VARCHAR(100),
position VARCHAR(50),
phone VARCHAR(15)
);

CREATE TABLE Category (
category_id INT PRIMARY KEY,
category_name VARCHAR(100)
);

CREATE TABLE Product (
product_id INT PRIMARY KEY,
product_name VARCHAR(100),
price DECIMAL(10,2),
category_id INT,
FOREIGN KEY (category_id) REFERENCES Category(category_id)
);

CREATE TABLE Orders (
order_id INT PRIMARY KEY,
order_date DATE,
customer_id INT,
employee_id INT,
FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
FOREIGN KEY (employee_id) REFERENCES Employee(employee_id)
);

CREATE TABLE Order_Items (
order_item_id INT PRIMARY KEY,
order_id INT,
product_id INT,
quantity INT,
price DECIMAL(10,2),
FOREIGN KEY (order_id) REFERENCES Orders(order_id),
FOREIGN KEY (product_id) REFERENCES Product(product_id)
);
INSERT INTO Category VALUES
(1,'Coffee'),
(2,'Bakery');

INSERT INTO Product VALUES
(101,'Latte',60,1),
(102,'Cappuccino',65,1),
(103,'Espresso',55,1),
(201,'Croissant',45,2);

INSERT INTO Customer VALUES
(1,'Somchai','somchai@email.com','0812345678'),
(2,'Mali','mali@email.com','0894783098');

INSERT INTO Employee VALUES
(1,'Anan','Cashier','0813332245'),
(2,'Nida','Barista','0949264035');

INSERT INTO Orders VALUES
(101,'2025-03-10',1,1),
(102,'2025-03-11',2,2);

INSERT INTO Order_Items VALUES
(1,101,101,2,60),
(2,101,201,1,45),
(3,102,102,1,65);

UPDATE Product
SET price = 70
WHERE product_id = 102;

DELETE FROM Customer
WHERE customer_id = 3;

-- Query

SELECT * FROM Product;

SELECT * FROM Product
WHERE price > 60;

SELECT * FROM Product
ORDER BY price DESC;

SELECT COUNT(*) AS total_products
FROM Product;

SELECT SUM(price) AS total_price
FROM Product;

SELECT AVG(price) AS avg_price
FROM Product;

SELECT Orders.order_id,
customer_name,
Orders.order_date
FROM Orders
JOIN Customer
ON Orders.customer_id = Customer.customer_id;

SELECT category_id,
COUNT(product_id) AS total_products
FROM Product
GROUP BY category_id;

SELECT category_id,
AVG(price) AS avg_price
FROM Product
GROUP BY category_id
HAVING AVG(price) > 60;


