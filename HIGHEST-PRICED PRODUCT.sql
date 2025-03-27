-- identify the highest-priced product
SELECT 
    product_types.FNAME, appli.price
FROM
    product_types
        JOIN
    appli ON product_types.PRODUCT_TYPE_ID = appli.product_type_id
ORDER BY appli.price DESC
LIMIT 1;