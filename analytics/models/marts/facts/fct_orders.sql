SELECT
    o.order_id,
    o.order_date,
    o.required_date,
    o.shipped_date,
    o.status,
    o.customer_id,
    COUNT(od.product_id)                AS number_of_items,
    SUM(od.quantity_ordered)            AS total_quantity,
    SUM(od.quantity_ordered * od.price_each) AS order_amount
FROM {{ ref('stg_orders') }} o
LEFT JOIN {{ ref('stg_orderdetails') }} od
    ON o.order_id = od.order_id
GROUP BY 1, 2, 3, 4, 5, 6