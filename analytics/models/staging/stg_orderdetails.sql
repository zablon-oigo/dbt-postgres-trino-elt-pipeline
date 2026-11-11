SELECT
    orderNumber         AS order_id,
    productCode         AS product_id,
    quantityOrdered     AS quantity_ordered,
    priceEach           AS price_each,
    orderLineNumber     AS order_line_number
FROM {{ source('sales', 'orderdetails') }}