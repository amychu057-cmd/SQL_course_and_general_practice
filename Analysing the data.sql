use bakery_dataset

-- Find the total sales revenue for the entire bakery
select SUM(Total) 
from orders; 

-- Find average order value per customer
select AVG(Total)
from orders

-- Calculate total revenue per product
select Items,
SUM(Total)
from orders
group by Items

-- Determine the most popular product by units sold
select Items,
COUNT(*) as sold
from orders
group by Items

-- Find all items that cost more than or equal to £1.50
select *
from bakery_items
where Price >= 1.5

-- list customers who made orderes in 2024
select *
from orders
where Order_date between '2024-01-01 00:00:00' and '2024-12-31 00:00:00';

-- Identify the number of times each customers has bought an item (Inc same day or different times)
select Customer_ID,
COUNT(*) as ordered_times 
from orders
group by customer_ID

-- Write a function called CalculateDiscount that returns the new value of the item after a 20% discount
DELIMITER
create function CalculatedDiscount(Price DECIMAL(8,2))
returns DECIMAL(8,2)
deterministic 
begin
	declare Discount DECIMAL(8,2);
	set Discount = Price*0.80;
	return Discount;
end;
DELIMITER

select CalculatedDiscount(2.50)

-- Compare the sales of Sweets, pasteries, and savoury
/*My notes: I created a temporary dataset with the items (from the orders table) and categories from the 
bakery items table using VIEW, then grouped it using GROUP BY*/
create view Category_overview AS
select bakery_items.category, orders.Items
from bakery_items
left join orders
on bakery_items.Item = orders.Items

select category,
COUNT(*) as Ordered_Category
from Category_overview
group by category
