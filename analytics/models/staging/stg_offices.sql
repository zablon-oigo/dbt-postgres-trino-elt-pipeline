SELECT
    officeCode          AS office_id,
    city,
    phone,
    addressLine1        AS address_line_1,
    addressLine2        AS address_line_2,
    state,
    country,
    postalCode          AS postal_code,
    territory
FROM {{ source('sales', 'offices') }}