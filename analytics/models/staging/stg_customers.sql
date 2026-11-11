SELECT
    customerNumber          AS customer_id,
    customerName            AS customer_name,
    contactFirstName        AS contact_first_name,
    contactLastName         AS contact_last_name,
    phone,
    city,
    country,
    creditLimit             AS credit_limit,
    salesRepEmployeeNumber  AS sales_rep_employee_id
FROM {{ source('sales', 'customers') }}