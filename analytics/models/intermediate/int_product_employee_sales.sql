SELECT
    product_id,
    product_name,
    product_line,
    SUM(quantity_ordered)               AS total_quantity_sold,
    SUM(line_revenue)                   AS total_revenue,
    SUM(line_profit)                    AS total_profit,
    COUNT(DISTINCT order_id)            AS number_of_orders
FROM {{ ref('int_order_details') }}
GROUP BY 1, 2, 3