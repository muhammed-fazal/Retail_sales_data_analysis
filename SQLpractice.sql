CREATE database RetailSalesDatas;
USE RetailSalesData;

CREATE TABLE Sales_Data_Transactions (
customer_id VARCHAR(255),
trans_date VARCHAR(255),
tran_amount INT);

CREATE TABLE Sales_Data_Response (
customer_id VARCHAR(255),
response INT);

LOAD DATA INFILE 'C:/ProgramData/mySQL/MySQL Server 8.0/Uploads/Retail_Data_transactions.csv'
INTO TABLE Sales_Data_Transactions
FIELDS terminated by ','
LINES terminated by '\n'
IGNORE 1 ROWS;

SELECT * FROM Sales_Data_Transactions LIMIT 10;

EXPLAIN SELECT * FROM Sales_Data_Transactions 
WHERE customer_id ='CS5259';

CREATE INDEX idx_id ON Sales_Data_Transactions(CUSTOMER_ID);

EXPLAIN SELECT * FROM Sales_Data_Transactions 
WHERE customer_id ='CS5259';