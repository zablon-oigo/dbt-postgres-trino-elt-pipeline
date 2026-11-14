SELECT
    od.order_id,
    od.product_id,
    od.order_line_number,
    od.quantity_ordered,
    od.price_each,
    od.quantity_ordered * od.price_each AS revenue,
    o.order_date,
    o.status,
    o.customer_id,
    c.sales_rep_employee_id             AS employee_id,
    p.product_line,
    p.buy_price,
    (od.price_each - p.buy_price) * od.quantity_ordered AS profit
FROM {{ ref('stg_orderdetails') }} od
INNER JOIN {{ ref('stg_orders') }} o
    ON od.order_id = o.order_id
INNER JOIN {{ ref('stg_customers') }} c
    ON o.customer_id = c.customer_id
INNER JOIN {{ ref('stg_products') }} p
    ON od.product_id = p.product_id