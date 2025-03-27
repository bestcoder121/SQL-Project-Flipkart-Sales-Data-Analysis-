-- calculate the percentage contribution of each PRODUCT category to total revenue
SELECT 
    product_types.CATEGORY,
    round(SUM(appli.price * order_details.QUANTITY) / (SELECT 
            ROUND(SUM(order_details.quantity * appli.price),
                        2) AS total_sales
        FROM
            order_details
                JOIN
            appli ON appli.product_id = order_details.PRODUCT_ID) * 100,2) AS revenue
FROM
    appli
        JOIN
    product_types ON appli.product_type_id = product_types.PRODUCT_TYPE_ID
        JOIN
    order_details ON order_details.PRODUCT_ID = appli.product_id
GROUP BY product_types.category
ORDER BY revenue DESC;