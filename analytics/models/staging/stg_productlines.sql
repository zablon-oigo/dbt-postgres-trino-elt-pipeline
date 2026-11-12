SELECT
    productLine         AS product_line,
    textDescription     AS text_description,
    htmlDescription     AS html_description
    -- image is usually skipped (BLOB)
FROM {{ source('sales', 'productlines') }}