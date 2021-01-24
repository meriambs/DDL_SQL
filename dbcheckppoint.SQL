--  creation des 3 tableaux 

CREATE TABLE Product(
	Product_id VARCHAR2(20),*
	Product_name VARCHAR2(20),CONSTRAINT <pk_product> NOT NULL 
	Price DATE NUMBER CONSTRAINT <pk_Product> CHECK (>0) ,
);
Alter Table Product ADD CONSTRAINT <pk_product> PRIMARY KEY(Product_id);
CREATE TABLE Customer (
	Customer_id VARCHAR2(20),*
	Customer_name VARCHAR2(20),CONSTRAINT <pk_customer> NOT NULL 
	Customer_tel  NUMBER
);
Alter Table Customer ADD CONSTRAINT <pk_customer> PRIMARY KEY(Customer_id);
CREATE TABLE Orders(
	Orders_id VARCHAR2(20),f
	Orders_name VARCHAR2(20),f
	Qauntity   NUMBER,
    Total_Price NUMBER
);
Alter TABLE Orders ADD CONSTRAINT <pk_orders>
FOREIGN KEY (Product_id) REFERENCES Product (Product_id);
Alter TABLE Orders ADD CONSTRAINT <pk_order>
FOREIGN KEY (Customer_name) REFERENCES Customer (Customer_id);

-- scd task:
--1
ALTER TABLE Product ADD Category VARCHAR2(20);

--2
ALTER TABLE Order ADD OrderDate SYSDATE;
