CREATE DATABASE PaymentBillingDb;
GO

USE PaymentBillingDb;
GO

Create Table [dbo].student2(
ID int IDENTITY(1,1) NOT NULL, 
name varchar(100), 
course varchar(500), 
mobile varchar(20), 
feesub varchar(20), 
fee varchar(200), 
paid varchar(200), 
balance varchar(200), 
address varchar(1000), 
fathername varchar(100), 
mothername varchar(100), 
dateofbirth varchar(20), 
qualification varchar(500), 
dateofjoining varchar(20), 
description varchar(1000), 
trainer varchar(500),
CONSTRAINT student2_pk PRIMARY KEY (ID) 
);
Create Table [dbo].payregister(
ID int IDENTITY(1,1) NOT NULL,  
username varchar(20) NOT NULL,
userpass varchar(20) NOT NULL,
branch  varchar(50) ,
dateofjoining  varchar(20),
dateofbirth varchar(20),
salary  varchar(50),
CONSTRAINT PayRegister_pk PRIMARY KEY (ID)  
);
Create Table [dbo].query(
ID int IDENTITY(1,1) NOT NULL,  
query varchar(4000) NOT NULL,
email varchar(50) NOT NULL,
CONSTRAINT query_pk PRIMARY KEY (ID)  
);
GO