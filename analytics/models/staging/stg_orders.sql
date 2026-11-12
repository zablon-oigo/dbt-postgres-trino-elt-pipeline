SELECT
    orderNumber         AS order_id,
    orderDate           AS order_date,
    requiredDate        AS required_date,
    shippedDate         AS shipped_date,
    status,
    comments,
    customerNumber      AS customer_id
FROM {{ source('sales', 'orders') }}