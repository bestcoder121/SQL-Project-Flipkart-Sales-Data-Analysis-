-- join the necessary tables to find the total quantity of each product category ordered
SELECT 
    product_types.CATEGORY, SUM(order_details.quantity) AS qty
FROM
    product_types
        JOIN
    appli ON appli.product_type_id = product_types.PRODUCT_TYPE_ID
        JOIN
    order_details ON order_details.product_id = appli.product_id
GROUP BY product_types.category
ORDER BY qty DESC
LIMIT 5;
