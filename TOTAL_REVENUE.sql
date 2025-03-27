-- calculate the total revenue generated from appliances sales
SELECT 
    SUM(order_details.quantity * appli.price) total_sales
FROM
    order_details
        JOIN
    appli ON order_details.product_id = appli.product_id;
