# SELECT
#     customer_number
# FROM
#     (
#     SELECT
#         customer_number, COUNT(order_number) AS 'cnt'
#     FROM
#         Orders
#     GROUP BY
#         customer_number
#     ORDER BY
#         cnt DESC
#     ) AS A
# LIMIT 1

SELECT
    customer_number
FROM
    Orders
GROUP BY
    customer_number
ORDER BY
    COUNT(order_number) DESC
LIMIT 1