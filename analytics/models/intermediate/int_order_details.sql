SELECT
    od.order_id,
    od.product_id,
    od.quantity_ordered,
    od.price_each,
    od.order_line_number,
    od.quantity_ordered * od.price_each AS line_revenue,
    o.order_date,
    o.required_date,
    o.shipped_date,
    o.status,
    o.customer_id,
    p.product_name,
    p.product_line,
    p.buy_price,
    p.msrp,
    (od.price_each - p.buy_price) * od.quantity_ordered AS line_profit
FROM {{ ref('stg_orderdetails') }} od
INNER JOIN {{ ref('stg_orders') }} o
    ON od.order_id = o.order_id
INNER JOIN {{ ref('stg_products') }} p
    ON od.product_id = p.product_id