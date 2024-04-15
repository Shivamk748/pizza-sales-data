-- Determine the distribution of orders by hour of the day

SELECT 
    HOUR(time) AS time_hour,
    COUNT(orders.order_id) AS order_done
FROM
    orders
GROUP BY time_hour
