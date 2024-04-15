-- Identify the most common pizza size ordered.

SELECT 
    pizzas.size, count(order_details.order_details_id) as order_count
FROM
    pizzas join
    order_details on 
    pizzas.pizza_id = order_details.pizza_id
    group by pizzas.size
    order by order_count desc

