-- list the top  most ordered PRODUCT  type along with their quantites
SELECT 
    product_types.FNAME, SUM(order_details.quantity) AS qty
FROM
    product_types
        JOIN
    appli ON product_types.PRODUCT_TYPE_ID = appli.product_type_id
        JOIN
    order_details ON order_details.PRODUCT_ID = appli.product_id
GROUP BY product_types.FNAME
ORDER BY qty DESC
LIMIT 1;