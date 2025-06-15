-- TestScripts --
EXEC bronze.load_bronze
SELECT * FROM bronze.crm_cust_info

EXEC silver.load_silver
SELECT * FROM silver.crm_sales_details;

SELECT TOP 10 product_name, SUM(cost) AS total_cost
FROM gold.dim_products
GROUP BY product_name
ORDER BY total_cost DESC;