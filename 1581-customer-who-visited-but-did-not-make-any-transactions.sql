# Write your MySQL query statement below

#1581. Customer Who Visited but Did Not Make Any Transactions

# or use visit_id in count

select customer_id, count(customer_id) as count_no_trans from visits
where visit_id not in
(select visit_id from transactions)
group by customer_id

SELECT v.customer_id, COUNT(v.visit_id) AS count_no_trans 
from Visits v 
LEFT JOIN Transactions t 
ON v.visit_id = t.visit_id  
WHERE t.transaction_id IS NULL 
# also can be - t.visit_id or t.amount is null
GROUP BY v.customer_id; 

#to try
SELECT * 
from Visits v 
LEFT JOIN Transactions t 
ON v.visit_id = t.visit_id 