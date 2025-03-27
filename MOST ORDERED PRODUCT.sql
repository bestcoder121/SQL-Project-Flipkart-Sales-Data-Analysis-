-- identify the most common applicanes type ordered
 SELECT 
    appli.FTYPE,
    COUNT(order_details.ORDER_DETAILS_ID) AS ORDER_COUNT
FROM
    appli
        JOIN
    order_details ON appli.product_id = order_details.PRODUCT_ID
GROUP BY appli.FTYPE
ORDER BY order_count desc;