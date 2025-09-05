create database bakery_dataset;
use bakery_dataset;

-- Items (Product ID, Name, Category, Price, Is available)
create table Bakery_Items(
Product_ID INT primary key,
Item VARCHAR(200),
Category VARCHAR(200),
Price DECIMAL(10,2),
Availabiltiy BOOLEAN 
);

-- Customers (Customer Id, Name, phone, Email, Created at (date and time))
create table Customers(
Customer_ID INT primary key,
Name VARCHAR(200),
Email VARCHAR(200),
Created_at DATETIME 
);

-- Orders (Order ID, Customer ID, Order, Order date, Total)
create table Orders(
Order_ID INT primary key,
Customer_ID INT,
Items VARCHAR(200),
Order_date DATETIME,
Total DECIMAL(10,2),
foreign key(Customer_ID)references Customers(Customer_ID)
);

-- Creating data for Items table (Product ID, Name, Category, Price, Is available)
insert into Bakery_Items values
(1, 'Cinnamon bun', 'Pastry', 2.50, TRUE),
(2, 'Brownie', 'Sweets', 1.00, TRUE),
(3, 'Crossaint', 'Pastry', 1.50, TRUE),
(4, 'Pain au chocolate', 'Pastry', 1.70, TRUE),
(5, 'Cookie', 'Sweets', 1.20, TRUE),
(6, 'Cherry Bakewell', 'Sweets', 1.70, TRUE),
(7, 'Cheese Twist', 'Savoury', 1.20, TRUE),
(8, 'Tostie', 'Savoury', 1.80, TRUE);

-- Creating data for Customers table (Customer Id, Name, Email, Created at (date and time))
insert into Customers values
(1, 'Bella', 'Bella123@hotmail.co.uk', '2018-09-08 22:08:12'),
(2, 'Milo', 'Milo985@gmail.com', '2020-05-23 19:20:09'),
(3, 'Scott', 'Scott6384@hotmail.co.uk', '2015-02-06 22:30:21'),
(4, 'Claire', 'Claire5472@gmail.com', '2003-09-06 07:30:21'),
(5, 'Patrick', 'Patrick123@gmail.com', '2010-04-26 12:50:20'),
(6, 'Irene', 'Irene095@hotmail.com', '2024-08-02 16:23:12'),
(7, 'Harry', 'Harry648@gmail.com', '2016-05-19 19:45:10'),
(8, 'Brian', 'Brian872@hotmail.co.uk', '2022-09-15 22:10:12'),
(9, 'Jenny', 'Jenny465@hotmail.co.uk', '2025-02-01 10:30:15'),
(10, 'Mary', 'Mary098@gmail.com', '2019-03-05 15:48:27');

-- Creating data for Orders table (Order ID, Customer ID, Order, Order date, Total) 
insert into Orders values
(1, 1, 'Brownie', '2024-09-13 07:30:12', 1.00),
(2, 1, 'Cookie', '2024-09-13 07:30:12', 1.20),
(3, 1, 'Cheese Twist', '2024-09-13 07:30:12', 1.20),
(4, 2, 'Brownie', '2024-08-11 12:30:11', 1.00),
(5, 2, 'Cinnamon bun', '2024-08-11 12:30:11', 2.50),
(6, 3, 'Cheese Twist', '2023-06-02 16:02:01', 1.20),
(7, 3, 'Pain au chocolate', '2023-06-02 16:02:01', 1.70),
(8, 1, 'Crossaint', '2024-05-06 18:12:15', 1.50),
(9, 4, 'Cinnamon bun', '2022-03-12 09:25:45', 2.50),
(10, 4, 'Cheese Twist', '2022-03-12 09:25:45', 1.20),
(11, 5, 'Crossaint', '2021-12-05 18:16:21', 1.50),
(12, 5, 'Cinnamon bun', '2021-12-05 18:16:21', 2.50),
(13, 6, 'Pain au chocolate', '2022-01-24 17:30:20', 1.70),
(14, 6, 'Cinnamon bun', '2023-03-29 14:20:57', 2.50),
(15, 7, 'Cherry Bakewell', '2021-03-27 13:12:18', 1.70),
(16, 7, 'Cookie', '2021-03-27 13:12:18', 1.20),
(17, 8, 'Cookie', '2019-07-01 15:12:25', 1.20),
(18, 8, 'Tostie', '2019-07-01 15:12:25', 1.80),
(19, 2, 'Cheese Twist', '2024-08-14 11:15:32', 1.20),
(20, 2, 'Tostie', '2024-08-14 11:15:32', 1.80),
(21, 2, 'Cinnamon bun', '2019-02-05 11:30:21', 2.50),
(22, 2, 'Cheese Twist', '2019-02-05 11:30:21', 1.20),
(23, 3, 'Cheese Twist', '2019-06-29 17:24:15', 1.20),
(24, 4, 'Brownie', '2024-10-02 13:47:16', 1.00),
(25, 5, 'Tostie', '2022-11-08 06:56:15', 1.80),
(26, 5, 'Brownie', '2022-11-08 06:56:15', 1.00),
(27, 5, 'Cinnamon bun', '2022-11-08 06:56:15', 2.50);
