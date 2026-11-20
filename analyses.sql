#Продукты дороже 50
Select product_name, selling_price
FROM products
WHERE selling_price > 50
ORDER BY selling_price DESC;

#Сколько заказов
Select COUNT(*) AS total_orders
FROM orders;

#У каких продуктов мало остатков
Select product_id, quantity_in_stock
FROM inventory
ORDER BY quantity_in_stock ASC
LIMIT 5;

#Общая выручка
Select SUM(oi.quantity * oi.unit_price) AS total_revenue
FROM orders o
JOIN order_items oi
    ON o.order_id = oi.order_id;

#Реальный заработок(общая выручка, сколко потратили , наш заработок)
Select
    SUM(oi.quantity * oi.unit_price) AS total_revenue,
    SUM(oi.quantity * p.purchase_price) AS total_cost,
    SUM(oi.quantity * (oi.unit_price - p.purchase_price)) AS gross_profit
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id;

#Самые продаваемые товары
Select p.product_name, SUM(oi.quantity) AS units_sold
FROM products p
JOIN order_items oi ON p.product_id = oi.product_id
JOIN orders o ON oi.order_id = o.order_id
GROUP BY p.product_id, p.product_name
ORDER BY units_sold DESC
limit 5;

#У какого магазина самая большая выручка
Select s.store_name,
SUM(oi.quantity * oi.unit_price) AS revenue
FROM stores s
JOIN orders o ON s.store_id = o.store_id
JOIN order_items oi ON o.order_id = oi.order_id
GROUP BY s.store_id, s.store_name
ORDER BY revenue DESC;

