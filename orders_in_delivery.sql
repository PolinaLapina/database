-- Задание 1
-- Представь: тебе нужно проверить, отображается ли созданный заказ в базе данных.
-- Для этого: выведи список логинов курьеров с количеством их заказов в статусе «В доставке» (поле inDelivery = true).

SELECT
    c.login,
    COUNT(o.id) AS orders_in_delivery_count
FROM "Couriers" c
JOIN "Orders" o
    ON o."courierId" = c.id
WHERE o."inDelivery" = true
GROUP BY c.login
ORDER BY orders_in_delivery_count DESC, c.login ASC;
