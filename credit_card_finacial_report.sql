CREATE DATABASE ccdb
use ccdb;
CREATE TABLE cc_detail (
    Client_Num INT,	
    Card_Category VARCHAR(20),
    Annual_Fees INT,
    Activation_30_Days INT,
    Customer_Acq_Cost INT,
    Week_Start_Date DATE,
    Week_Num VARCHAR(20),
    Qtr VARCHAR(50),
    current_year INT,
    Credit_Limit DECIMAL(10,2),	
    Total_Revolving_Bal INT,
    Total_Trans_Amt INT,
    Total_Trans_Vol INT,
    Avg_Utilization_Ratio DECIMAL(10,3),
    Use_Chip VARCHAR(50),
    Exp_Type VARCHAR(50),
    Interest_Earned DECIMAL(10,3),
    Delinquent_Acc VARCHAR(50)
);
ALTER TABLE cc_detail MODIFY Exp_Type VARCHAR(255);

CREATE TABLE cust_detail (
	Client_Num VARCHAR(20),
	Customer_Age INT,
	Gender	VARCHAR(20),
    Dependent_Count INT,
	Education_Level VARCHAR(20),
	Marital_Status VARCHAR(20),
	state_cd VARCHAR(50),
	Zipcode	INT,
    Car_Owner VARCHAR(20),
	House_Owner VARCHAR(20),
	Personal_loan	INT,
    contact INT,
	Customer_Job VARCHAR(20),
	Income DECIMAL(10,3),
	Cust_Satisfaction_Score INT
);

SELECT * from cc_detail;
SELECT * from cust_detail;

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/credit_card.csv'
INTO TABLE cc_detail
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

ALTER TABLE cust_detail MODIFY Personal_loan VARCHAR(50);
ALTER TABLE cust_detail MODIFY Dependent_Count VARCHAR(50);
ALTER TABLE cust_detail MODIFY Zipcode VARCHAR(50);
ALTER TABLE cust_detail MODIFY contact VARCHAR(50);

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/customer.csv'
INTO TABLE cust_detail
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;








