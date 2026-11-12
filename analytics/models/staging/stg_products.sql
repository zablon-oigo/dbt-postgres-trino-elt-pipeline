SELECT
    productCode         AS product_id,
    productName         AS product_name,
    productLine         AS product_line,
    productScale        AS product_scale,
    productVendor       AS product_vendor,
    productDescription  AS product_description,
    quantityInStock     AS quantity_in_stock,
    buyPrice            AS buy_price,
    MSRP                AS msrp
FROM {{ source('sales', 'products') }}