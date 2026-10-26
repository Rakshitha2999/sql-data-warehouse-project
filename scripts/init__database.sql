USE master;
CREATE DATABASE DataWarehouse;
USE DataWarehouse;
CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
GO

IF OBJECT_ID('bronze.crm_cust_info' ,'U') IS NOT NULL
DROP TABLE bronze.crm_cust_info
CREATE TABLE bronze.crm_cust_info(
cst_id INT,
cst_key NVARCHAR(20),
cst_first_name NVARCHAR(50),
cst_lastname NVARCHAR(50),
cst_marital_status NVARCHAR(20),
cst_gndr NVARCHAR(20),
cst_create_date DATE
);

IF OBJECT_ID('bronze.crm_prod_info' ,'U') IS NOT NULL
DROP TABLE bronze.crm_prod_info
CREATE TABLE bronze.crm_prod_info(
prod_id INT,
prod_key NVARCHAR(20),
prod_num NVARCHAR(50),
prod_cost INT,
prod_line NVARCHAR(20),
prod_start_dt DATETIME,
prod_end_dt DATETIME
);

IF OBJECT_ID('bronze.crm_sales_details' ,'U') IS NOT NULL
DROP TABLE bronze.crm_sales_details
CREATE TABLE bronze.crm_sales_details(
sls_ord_num NVARCHAR(20),
sls_prd_key NVARCHAR(20),
sls_cust_id INT,
sls_order_dt INT,
sls_ship_dt INT,
sls_due_dt INT,
sls_sales INT,
sls_quantity INT,
sls_price INT
);

IF OBJECT_ID('bronze.erp_cust_az12' ,'U') IS NOT NULL
DROP TABLE bronze.erp_cust_az12
CREATE TABLE bronze.erp_cust_az12(
cid NVARCHAR(50),
bdate DATE,
gen NVARCHAR(20)
);

IF OBJECT_ID('bronze.erp_loc_a101' ,'U') IS NOT NULL
DROP TABLE bronze.erp_loc_a101
CREATE TABLE bronze.erp_loc_a101(
cid NVARCHAR(50),
cntry NVARCHAR(50)
);

IF OBJECT_ID('bronze.erp_px_cat_g1v2' ,'U') IS NOT NULL
DROP TABLE bronze.erp_px_cat_g1v2
CREATE TABLE bronze.erp_px_cat_g1v2(
id NVARCHAR(50),
cat NVARCHAR(50),
subcat NVARCHAR(50),
maintainance NVARCHAR(50)
);
