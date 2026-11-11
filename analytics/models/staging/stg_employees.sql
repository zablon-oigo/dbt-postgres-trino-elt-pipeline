SELECT
    employeeNumber      AS employee_id,
    lastName            AS last_name,
    firstName           AS first_name,
    extension,
    email,
    officeCode          AS office_id,
    reportsTo           AS reports_to_employee_id,
    jobTitle            AS job_title
FROM {{ source('sales', 'employees') }}