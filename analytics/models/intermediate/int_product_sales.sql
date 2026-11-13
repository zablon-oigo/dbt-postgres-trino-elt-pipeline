SELECT
    od.product_id,
    od.product_name,
    od.product_line,
    c.sales_rep_employee_id             AS employee_id,
    e.first_name || ' ' || e.last_name  AS employee_name,
    SUM(od.quantity_ordered)            AS quantity_sold,
    SUM(od.line_revenue)                AS revenue,
    SUM(od.line_profit)                 AS profit
FROM {{ ref('int_order_details') }} od
INNER JOIN {{ ref('stg_customers') }} c
    ON od.customer_id = c.customer_id
LEFT JOIN {{ ref('stg_employees') }} e
    ON c.sales_rep_employee_id = e.employee_id
GROUP BY 1, 2, 3, 4, 5