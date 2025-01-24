CREATE DATABASE IF NOT EXISTS testdb;
USE testdb;

CREATE TABLE IF NOT EXISTS users (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    email VARCHAR(100),
    password VARCHAR(100)
);

INSERT INTO users (name, email, password) VALUES 
('Alice', 'alice@example.com', 'password1'),
('Bob', 'bob@example.com', 'password2'),
('Charlie', 'charlie@example.com', 'password3');

CREATE TABLE IF NOT EXISTS orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    product VARCHAR(50),
    amount DECIMAL(10,2)
);

INSERT INTO orders (user_id, product, amount) VALUES 
(1, 'Laptop', 999.99),
(2, 'Phone', 499.99),
(3, 'Headphones', 89.99);

CREATE TABLE IF NOT EXISTS payments (
    payment_id INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT,
    status VARCHAR(20),
    method VARCHAR(20)
);

INSERT INTO payments (order_id, status, method) VALUES 
(1, 'Completed', 'Credit Card'),
(2, 'Pending', 'PayPal'),
(3, 'Failed', 'Credit Card');
