SELECT
    customerNumber      AS customer_id,
    checkNumber         AS check_number,
    paymentDate         AS payment_date,
    amount
FROM {{ source('sales', 'payments') }}