SELECT
    customer_id,
    check_number,
    payment_date,
    amount
FROM {{ ref('stg_payments') }}