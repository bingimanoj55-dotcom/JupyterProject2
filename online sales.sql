create database online_sales;

use online_sales;

CREATE TABLE online_sales.orders (
    order_id INT PRIMARY KEY,
    order_date DATE NOT NULL,
    product_id INT NOT NULL,
    amount DECIMAL(10,2) NOT NULL
);

INSERT INTO online_sales.orders (order_id, order_date, product_id, amount) VALUES
(101, '2025-01-15', 1, 250.00),
(102, '2025-01-20', 2, 180.00),
(103, '2025-02-05', 1, 300.00),
(104, '2025-02-18', 3, 150.00),
(105, '2025-03-10', 2, 400.00),
(106, '2025-03-22', 4, 220.00),
(107, '2025-04-02', 1, 500.00),
(108, '2025-04-15', 2, 350.00),
(109, '2025-05-07', 3, 275.00),
(110, '2025-05-21', 4, 600.00),
(111, '2025-06-03', 1, 450.00),
(112, '2025-06-25', 2, 320.00),
(113, '2025-07-12', 3, 700.00),
(114, '2025-07-28', 4, 150.00),
(115, '2025-08-09', 1, 800.00),
(116, '2025-08-19', 2, 500.00),
(117, '2025-09-05', 3, 650.00),
(118, '2025-09-22', 4, 300.00),
(119, '2025-10-11', 1, 900.00),
(120, '2025-10-27', 2, 400.00);

select * from online_sales.orders;

select extract(month from order_date) as month from online_sales.orders;

select extract(year from order_date) as year from online_sales.orders;

select 
	extract(month from order_date) as month,
	extract(year from order_date) as year
from online_sales.orders
group by year , month;

select sum(amount) as total_revenue from online_sales.orders;

select count(distinct order_id) from online_sales.orders;

select * from online_sales.orders order by amount desc;

select * from online_sales.orders
	where order_date between '2025-01-01' and '2025-06-01';
    
select * from online_sales.orders
	WHERE EXTRACT(YEAR FROM order_date) = 2025
	AND EXTRACT(MONTH FROM order_date) = 3;

SELECT 
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    SUM(amount) AS total_revenue ,
    COUNT(DISTINCT order_id) AS order_volume
FROM online_sales.orders
WHERE order_date BETWEEN '2025-01-01' AND '2025-06-30'
GROUP BY year, month
ORDER BY year, month;


SELECT 
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    SUM(amount) AS total_revenue ,
    COUNT(DISTINCT order_id) AS order_volume
FROM online_sales.orders
WHERE order_date BETWEEN '2025-01-01' AND '2025-06-30'
GROUP BY year, month
ORDER BY total_revenue desc
limit 3;

