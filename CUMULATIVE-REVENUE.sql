--  analyze the cumulative revenue generated over time
select order_date,
sum(revenue ) over(order by order_date) as cum_revenue
from
(select orders.order_date,
sum(order_details.quantity* appli.price) as revenue 
from order_details join appli
on order_details.product_id=appli.product_id
join orders
on orders.order_id=order_details.order_id
group by orders.order_date) as sales;



