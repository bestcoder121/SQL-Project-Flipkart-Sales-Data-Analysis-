-- join relevant tables to find the category-wise distribution of applicances
SELECT 
    category, COUNT(fname)
FROM
    product_types
GROUP BY CATEGORY;