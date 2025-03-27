-- determine the top 3 most ordered PRODUCT type based
--  pn revenue for each applicanes category
select fname,revenue from
(select category , fname, revenue,
rank() over(partition by category order by revenue desc) as run
from
(select product_types.CATEGORY,product_types.FNAME,
sum((order_details.QUANTITY) * appli.price) as revenue
from product_types join appli
on product_types.PRODUCT_TYPE_ID=appli.product_type_id
join order_details
on order_details.PRODUCT_ID=appli.product_id
group by product_types.CATEGORY, product_types.FNAME) as A) as B
where run <=3;