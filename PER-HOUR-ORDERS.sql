-- Determine the distribution of order by hour of the day
SELECT 
    HOUR(etime) AS hour, COUNT(order_id) AS order_count
FROM
    orders
GROUP BY HOUR(etime);