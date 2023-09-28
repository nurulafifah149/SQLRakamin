select maritalstatus, avg(age) as Avg_age  
from customer
group by maritalstatus;

select gender, avg(age) as Avg_age  
from customer
group by gender;

SELECT s.storename, SUM(t.qty) as total_quantity
FROM transactions t
JOIN store s ON t.storeid = s.storeid
GROUP BY s.storename 
ORDER BY total_quantity DESC
LIMIT 1;

SELECT p.productname, SUM(t.totalamount) as total_amount
FROM transactions t
JOIN product p ON t.productid = p.productid
GROUP BY p.productname 
ORDER BY total_amount DESC
LIMIT 1;
