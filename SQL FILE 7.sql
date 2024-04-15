-- Calculate the total revenue generated from pizza sales.
SELECT 
    SUM(pizzas.price * order_details.quantity) AS total_revenue
FROM
    order_details,pizzas 
    where pizzas.pizza_id = order_details.pizza_id