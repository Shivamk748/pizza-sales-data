-- Identify the highest-priced pizza.

select pizzas.price,pizza_types.name
 from pizzas,pizza_types
 where pizzas.pizza_type_id=pizza_types.pizza_type_id
 order by price desc
 limit 1;
 