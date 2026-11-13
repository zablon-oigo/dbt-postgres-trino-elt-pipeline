SELECT
    c.customer_id,
    c.customer_name,
    c.contact_first_name,
    c.contact_last_name,
    c.phone,
    c.city,
    c.country,
    c.credit_limit,
    e.employee_id       AS sales_rep_id,
    e.first_name || ' ' || e.last_name AS sales_rep_name,
    e.job_title         AS sales_rep_title,
    o.office_id,
    o.city              AS office_city,
    o.country           AS office_country
FROM {{ ref('stg_customers') }} c
LEFT JOIN {{ ref('stg_employees') }} e
    ON c.sales_rep_employee_id = e.employee_id
LEFT JOIN {{ ref('stg_offices') }} o
    ON e.office_id = o.office_id