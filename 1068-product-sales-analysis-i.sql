# Write your MySQL query statement below
#1068. Product Sales Analysis I
select p.product_name,s.year,s.price 
from sales s
join product p
on p.product_id=s.product_id


# Approach 2-Subquey
SELECT 
    (SELECT product_name FROM Product WHERE product_id = s.product_id) AS product_name,
    s.year,
    s.price
FROM 
    Sales s;
	

#Approach 3-CTE(Common Table Expression)
WITH SaleDetails AS (
    SELECT 
        s.sale_id,
        p.product_name,
        s.year,
        s.price
    FROM 
        Sales s
    JOIN 
        Product p ON s.product_id = p.product_id
)
SELECT 
    product_name,
    year,
    price
FROM 
    SaleDetails;