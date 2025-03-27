-- determine the tope 3 most ordered applicanes type based on revenue
SELECT 
    product_types.fname,
    SUM(appli.price * order_details.QUANTITY) AS revenue
FROM
    product_types
        JOIN
    appli ON appli.product_type_id = product_types.PRODUCT_TYPE_ID
        JOIN
    order_details ON order_details.PRODUCT_ID = appli.product_id
GROUP BY product_types.fname
ORDER BY revenue DESC
LIMIT 3;
