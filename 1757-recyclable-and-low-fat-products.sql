# Write your MySQL query statement below

#1757. Recyclable and Low Fat Products
-- select product_id
-- from products p
-- where p.low_fats='Y' and p.recyclable='Y';

select product_id
from products p
where p.low_fats like 'Y' and p.recyclable='Y';
