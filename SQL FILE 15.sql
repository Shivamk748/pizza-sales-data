-- Calculate the percentage contribution of each pizza type to total revenue.

select  pizza_types.category, (sum(pizzas.price * order_details.quantity) / (SELECT 
    SUM(pizzas.price * order_details.quantity) AS total_revenue
FROM
    order_details,pizzas 
    where pizzas.pizza_id = order_details.pizza_id))*100 as revenue_percentage 
from  pizza_types join pizzas on pizza_types.pizza_type_id=pizzas.pizza_type_id
join order_details on pizzas.pizza_id=order_details.pizza_id
group by  pizza_types.category
order by revenue_percentage desc
