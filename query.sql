-- 1. Загальна сума продажів кожного товару..
select items.item_name, round(sum(product_price * quantity) :: numeric, 2) as total_sales
from items
join order_items on order_items.item_name = items.item_name
group by items.item_name;

-- 2. Загальна ціна кожного замовлення.
select order_items.order_number, round(sum(product_price * quantity) :: numeric, 2) as total_price
from order_items 
join items on order_items.item_name = items.item_name
group by order_items.order_number;

-- 3. Залежність суми всього замовлення від середньої ціни товару в замовленні.
SELECT order_items.order_number, round(AVG(items.Product_Price) :: numeric, 2) AS average_item_price, round(SUM(items.Product_Price * order_items.Quantity) :: numeric, 2) AS total_order_price
FROM order_items
JOIN items ON order_items .item_name = items.item_name
GROUP BY order_items.order_number
order by average_item_price;