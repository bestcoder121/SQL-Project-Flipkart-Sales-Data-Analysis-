-- Group the orders by date and calculate the average number of PRODUCTS ordered per day
SELECT 
    ROUND(AVG(quantity), 0) as avg_order_perday
FROM
    (SELECT 
        orders.ORDER_DATE, SUM(order_details.QUANTITY) AS quantity
    FROM
        orders
    JOIN order_details ON orders.ORDER_ID = order_details.order_id
    GROUP BY orders.ORDER_DATE) AS order_quantity;