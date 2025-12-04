--7 Tables
--
--1.TABLE CUSTOMERS
--2.TABLE CATEGORIES
--3.TABLE PRODUCTS
--4.TABLE STORES
--5.TABLE ORDERS
--6.ORDER_ITEMS
--7.TABLE PAYMENTS

--CREATE TABLE CUSTOMERS (
--    CUSTOMER_ID NUMBER PRIMARY KEY,
--    FIRST_NAME  VARCHAR2(50),
--    LAST_NAME   VARCHAR2(50),
--    EMAIL       VARCHAR2(100),
--    PHONE       VARCHAR2(15),
--    CREATED_DATE DATE);
--INSERT INTO CUSTOMERS VALUES (1,'Ravi','Kumar','ravi@gmail.com','9000011111',SYSDATE-50);
--INSERT INTO CUSTOMERS VALUES (2,'Asha','Patil','asha@gmail.com','9000011112',SYSDATE-48);
--INSERT INTO CUSTOMERS VALUES (3,'Vijay','Sharma','vijay@gmail.com','9000011113',SYSDATE-46);
--INSERT INTO CUSTOMERS VALUES (4,'Preeti','More','preeti@gmail.com','9000011114',SYSDATE-44);
--INSERT INTO CUSTOMERS VALUES (5,'Arjun','Rane','arjun@gmail.com','9000011115',SYSDATE-42);
--INSERT INTO CUSTOMERS VALUES (6,'Sneha','Joshi','sneha@gmail.com','9000011116',SYSDATE-40);
--INSERT INTO CUSTOMERS VALUES (7,'Suresh','Shetty','suresh@gmail.com','9000011117',SYSDATE-38);
--INSERT INTO CUSTOMERS VALUES (8,'Pooja','Kulkarni','pooja@gmail.com','9000011118',SYSDATE-36);
--INSERT INTO CUSTOMERS VALUES (9,'Rahul','Nair','rahul@gmail.com','9000011119',SYSDATE-34);
--INSERT INTO CUSTOMERS VALUES (10,'Kiran','Desai','kiran@gmail.com','9000011120',SYSDATE-32);
--commit;

--CREATE TABLE CATEGORIES (
--    CATEGORY_ID NUMBER PRIMARY KEY,
--    CATEGORY_NAME VARCHAR2(50));
--INSERT INTO CATEGORIES VALUES (1,'Electronics');
--INSERT INTO CATEGORIES VALUES (2,'Clothing');
--INSERT INTO CATEGORIES VALUES (3,'Groceries');
--INSERT INTO CATEGORIES VALUES (4,'Furniture');
--INSERT INTO CATEGORIES VALUES (5,'Sports');
--INSERT INTO CATEGORIES VALUES (6,'Books');
--INSERT INTO CATEGORIES VALUES (7,'Footwear');
--INSERT INTO CATEGORIES VALUES (8,'Toys');
--INSERT INTO CATEGORIES VALUES (9,'Mobile');
--INSERT INTO CATEGORIES VALUES (10,'Kitchen');
--commit;

--CREATE TABLE PRODUCTS (
--    PRODUCT_ID NUMBER PRIMARY KEY,
--    PRODUCT_NAME VARCHAR2(100),
--    CATEGORY_ID NUMBER REFERENCES CATEGORIES(CATEGORY_ID),
--    PRICE NUMBER(10,2));
--    
--INSERT INTO PRODUCTS VALUES (101,'Samsung TV',1,30000);
--INSERT INTO PRODUCTS VALUES (102,'Jeans',2,1500);
--INSERT INTO PRODUCTS VALUES (103,'Rice 10KG',3,550);
--INSERT INTO PRODUCTS VALUES (104,'Dining Table',4,12000);
--INSERT INTO PRODUCTS VALUES (105,'Cricket Bat',5,2000);
--INSERT INTO PRODUCTS VALUES (106,'Running Shoes',7,2500);
--INSERT INTO PRODUCTS VALUES (107,'Notebook',6,50);
--INSERT INTO PRODUCTS VALUES (108,'Action Figure',8,800);
--INSERT INTO PRODUCTS VALUES (109,'iPhone 14',9,75000);
--INSERT INTO PRODUCTS VALUES (110,'Mixer Grinder',10,4500);

--CREATE TABLE STORES (
--    STORE_ID NUMBER PRIMARY KEY,
--    STORE_NAME VARCHAR2(100),
--    LOCATION VARCHAR2(100));
--    
--INSERT INTO STORES VALUES (1,'CityMart','Mumbai');
--INSERT INTO STORES VALUES (2,'SmartBazaar','Pune');
--INSERT INTO STORES VALUES (3,'MegaStore','Delhi');
--INSERT INTO STORES VALUES (4,'FreshMart','Bangalore');
--INSERT INTO STORES VALUES (5,'HyperCity','Chennai');
--INSERT INTO STORES VALUES (6,'BigBasket Outlet','Hyderabad');
--INSERT INTO STORES VALUES (7,'DailyNeeds','Surat');
--INSERT INTO STORES VALUES (8,'MaxRetail','Nagpur');
--INSERT INTO STORES VALUES (9,'QuickBuy','Ahmedabad');
--INSERT INTO STORES VALUES (10,'BudgetStore','Kolkata');
--commit;

--CREATE TABLE ORDERS (
--    ORDER_ID NUMBER PRIMARY KEY,
--    CUSTOMER_ID NUMBER REFERENCES CUSTOMERS(CUSTOMER_ID),
--    STORE_ID NUMBER REFERENCES STORES(STORE_ID),
--    ORDER_DATE DATE,
--    STATUS VARCHAR2(20));
--
--INSERT INTO ORDERS VALUES (1001,1,1,SYSDATE-25,'Delivered');
--INSERT INTO ORDERS VALUES (1002,2,2,SYSDATE-23,'Shipped');
--INSERT INTO ORDERS VALUES (1003,3,3,SYSDATE-21,'Delivered');
--INSERT INTO ORDERS VALUES (1004,4,4,SYSDATE-20,'Cancelled');
--INSERT INTO ORDERS VALUES (1005,5,5,SYSDATE-18,'Delivered');
--INSERT INTO ORDERS VALUES (1006,6,6,SYSDATE-15,'Returned');
--INSERT INTO ORDERS VALUES (1007,7,7,SYSDATE-13,'Shipped');
--INSERT INTO ORDERS VALUES (1008,8,8,SYSDATE-10,'Delivered');
--INSERT INTO ORDERS VALUES (1009,9,9,SYSDATE-8,'Delivered');
--INSERT INTO ORDERS VALUES (1010,10,10,SYSDATE-5,'Delivered');
--commit;

--CREATE TABLE ORDER_ITEMS (
--    ORDER_ITEM_ID NUMBER PRIMARY KEY,
--    ORDER_ID NUMBER REFERENCES ORDERS(ORDER_ID),
--    PRODUCT_ID NUMBER REFERENCES PRODUCTS(PRODUCT_ID),
--    QUANTITY NUMBER,
--    UNIT_PRICE NUMBER(10,2));
--
--INSERT INTO ORDER_ITEMS VALUES (1,1001,101,1,30000);
--INSERT INTO ORDER_ITEMS VALUES (2,1001,102,2,1500);
--INSERT INTO ORDER_ITEMS VALUES (3,1002,109,1,75000);
--INSERT INTO ORDER_ITEMS VALUES (4,1003,103,3,550);
--INSERT INTO ORDER_ITEMS VALUES (5,1004,104,1,12000);
--INSERT INTO ORDER_ITEMS VALUES (6,1005,105,1,2000);
--INSERT INTO ORDER_ITEMS VALUES (7,1006,106,2,2500);
--INSERT INTO ORDER_ITEMS VALUES (8,1007,110,1,4500);
--INSERT INTO ORDER_ITEMS VALUES (9,1008,107,5,50);
--INSERT INTO ORDER_ITEMS VALUES (10,1009,108,2,800);
--commit;

--CREATE TABLE PAYMENTS (
--    PAYMENT_ID NUMBER PRIMARY KEY,
--    ORDER_ID NUMBER REFERENCES ORDERS(ORDER_ID),
--    PAYMENT_METHOD VARCHAR2(20),
--    AMOUNT NUMBER(10,2),
--    PAYMENT_DATE DATE);
--
--INSERT INTO PAYMENTS VALUES (1,1001,'UPI',33000,SYSDATE-24);
--INSERT INTO PAYMENTS VALUES (2,1002,'Card',75000,SYSDATE-22);
--INSERT INTO PAYMENTS VALUES (3,1003,'UPI',1650,SYSDATE-20);
--INSERT INTO PAYMENTS VALUES (4,1004,'Wallet',12000,SYSDATE-19);
--INSERT INTO PAYMENTS VALUES (5,1005,'Cash',2000,SYSDATE-17);
--INSERT INTO PAYMENTS VALUES (6,1006,'Card',5000,SYSDATE-14);
--INSERT INTO PAYMENTS VALUES (7,1007,'UPI',4500,SYSDATE-12);
--INSERT INTO PAYMENTS VALUES (8,1008,'Card',250,SYSDATE-9);
--INSERT INTO PAYMENTS VALUES (9,1009,'UPI',1600,SYSDATE-7);
--INSERT INTO PAYMENTS VALUES (10,1010,'Cash',4500,SYSDATE-4);
--commit;
----------------------------------------------------------------------------------------------
--select * from CUSTOMERS;
--select * from CATEGORIES;
--select * from  PRODUCTS;
--select * from  STORES;
--select * from  ORDERS;
--select * from ORDER_ITEMS;
--select * from  PAYMENTS;
-------------------------------------------------------------------
--.TABLE CUSTOMERS
--2.TABLE CATEGORIES
--3.TABLE PRODUCTS
--4.TABLE STORES
--5.TABLE ORDERS
--6.ORDER_ITEMS
--7.TABLE PAYMENTS
-------------------------------------------------------------------------------------------------------------
--SELECT C.CUSTOMER_ID,C.FIRST_NAME,C.EMAIL,C.PHONE,
--
--       CAT.CATEGORY_ID,CAT.CATEGORY_NAME,
--       
--       P.PRODUCT_ID,P.PRODUCT_NAME,P.PRICE,P.CATEGORY_ID,
--       
--       S.STORE_ID,S.STORE_NAME,S.LOCATION,
--       
--       O.ORDER_ID,O.ORDER_DATE,O.STATUS,
--       
--       OI.ORDER_ITEM_ID,OI.PRODUCT_ID,OI.QUANTITY,OI.UNIT_PRICE,
--       (OI.QUANTITY * OI.UNIT_PRICE) AS ITEM_TOTAL,
--       
--       PM.PAYMENT_ID,PM.PAYMENT_METHOD,PM.AMOUNT,PM.PAYMENT_DATE
--
--FROM ORDERS O                            --TABLES -> ORDERS ,CUSTOMERS ,ORDER_ITEMS,PRODUCTS,CATEGORIES,STORES,PAYMENTS
--JOIN CUSTOMERS C
--    ON O.CUSTOMER_ID = C.CUSTOMER_ID
--JOIN ORDER_ITEMS OI
--    ON O.ORDER_ID = OI.ORDER_ID
--JOIN PRODUCTS P
--    ON OI.PRODUCT_ID = P.PRODUCT_ID
--
--JOIN CATEGORIES CAT
--    ON P.CATEGORY_ID = CAT.CATEGORY_ID
--
--JOIN STORES S
--    ON O.STORE_ID = S.STORE_ID
--
--JOIN PAYMENTS PM
--    ON O.ORDER_ID = PM.ORDER_ID;
--------------------------------------------------------------------------------------------------------------------------------------------------
--SELECT C.CUSTOMER_ID,C.FIRST_NAME,
--
--       CAT.CATEGORY_ID,
--       
--       P.PRODUCT_ID,P.PRODUCT_NAME,P.PRICE,
--       
--       S.STORE_ID,S.STORE_NAME,S.LOCATION,
--       
--       O.ORDER_ID,O.ORDER_DATE,O.STATUS,
--       
--       OI.ORDER_ITEM_ID,OI.QUANTITY,
--       (OI.QUANTITY * OI.UNIT_PRICE) AS ITEM_TOTAL,
--       
--       PM.PAYMENT_ID,PM.PAYMENT_METHOD,PM.AMOUNT,PM.PAYMENT_DATE
--
--FROM ORDERS O
--JOIN CUSTOMERS C
--    ON O.CUSTOMER_ID = C.CUSTOMER_ID
--
--JOIN ORDER_ITEMS OI
--    ON O.ORDER_ID = OI.ORDER_ID
--
--JOIN PRODUCTS P
--    ON OI.PRODUCT_ID = P.PRODUCT_ID
--
--JOIN CATEGORIES CAT
--    ON P.CATEGORY_ID = CAT.CATEGORY_ID
--
--JOIN STORES S
--    ON O.STORE_ID = S.STORE_ID
--JOIN PAYMENTS PM
--    ON O.ORDER_ID = PM.ORDER_ID;
--------------------------------------------------------------------------------------------------
--Requirement:
--Calculate ,Total_Order_Amount For each order, 
--calculate total order value = sum of (qty * unit price).

--SELECT 
--    O.ORDER_ID,
--    SUM(OI.QUANTITY * OI.UNIT_PRICE) AS TOTAL_ORDER_AMOUNT
--FROM ORDERS O
--JOIN ORDER_ITEMS OI
--    ON O.ORDER_ID = OI.ORDER_ID
--GROUP BY O.ORDER_ID;
---------------------------------------------------------------------------------------------------------
--Derive Customer Segment (Gold/Silver/Bronze)
--Requirement:
--Customer segment based on lifetime spend.

--SELECT 
--    C.CUSTOMER_ID,
--    C.FIRST_NAME,
--    SUM(OI.QUANTITY * OI.UNIT_PRICE) AS TOTAL_SPEND_AMOUNT,
--    CASE
--        WHEN SUM(OI.QUANTITY * OI.UNIT_PRICE) > 50000 THEN 'GOLD'
--        WHEN SUM(OI.QUANTITY * OI.UNIT_PRICE) BETWEEN 20000 AND 50000 THEN 'SILVER'
--        ELSE 'BRONZE'
--    END AS CUSTOMER_SEGMENT
--FROM CUSTOMERS C
--JOIN ORDERS O ON C.CUSTOMER_ID = O.CUSTOMER_ID
--JOIN ORDER_ITEMS OI ON O.ORDER_ID = OI.ORDER_ID
--GROUP BY C.CUSTOMER_ID, C.FIRST_NAME;
-------------------------------------------------------------------------------------------------------------
--Product Category Sales Contribution
--Requirement:
--How much each category contributes to total revenue?
--
--SELECT 
--    CAT.CATEGORY_NAME,
--    SUM(OI.QUANTITY * OI.UNIT_PRICE) AS CATEGORY_SALES
--FROM ORDER_ITEMS OI
--JOIN PRODUCTS P ON OI.PRODUCT_ID = P.PRODUCT_ID
--JOIN CATEGORIES CAT ON P.CATEGORY_ID = CAT.CATEGORY_ID
--GROUP BY CAT.CATEGORY_NAME;
------------------------------------------------------------------------------------------------------
--Store-Wise Daily Sales
--Requirement:
--Store revenue by day.

--SELECT 
--    S.STORE_NAME,
--    O.ORDER_DATE,
--    SUM(OI.QUANTITY * OI.UNIT_PRICE) AS DAILY_SALES_AMOUNT
--FROM STORES S
--JOIN ORDERS O ON S.STORE_ID = O.STORE_ID
--JOIN ORDER_ITEMS OI ON O.ORDER_ID = OI.ORDER_ID
--GROUP BY S.STORE_NAME, O.ORDER_DATE
--ORDER BY O.ORDER_DATE;
---------------------------------------------------------------------------------------------
--Identify Top Selling Products
--Requirement:
--Top 5 products with highest revenue.

--SELECT * FROM (SELECT P.PRODUCT_ID,P.PRODUCT_NAME,SUM(OI.QUANTITY) AS TOTAL_QTY,
--        SUM(OI.QUANTITY * OI.UNIT_PRICE) AS REVENUE
--        FROM ORDER_ITEMS OI JOIN PRODUCTS P ON OI.PRODUCT_ID = P.PRODUCT_ID
--        GROUP BY P.PRODUCT_ID, P.PRODUCT_NAME
--        ORDER BY REVENUE DESC)WHERE ROWNUM <= 5;
--------------------------------------------------------------------------------------------------
--Payment Validation (Order total must match payment amount)
--Requirement:
--Verify if payment amount = order sum.

--SELECT 
--    O.ORDER_ID,
--    SUM(OI.QUANTITY * OI.UNIT_PRICE) AS ORDER_TOTAL,
--    PM.AMOUNT,
--    CASE 
--        WHEN PM.AMOUNT = SUM(OI.QUANTITY * OI.UNIT_PRICE) 
--        THEN 'MATCH' ELSE 'MISMATCH' END AS VALIDATION_STATUS
--FROM ORDERS O JOIN ORDER_ITEMS OI ON O.ORDER_ID = OI.ORDER_ID
--JOIN PAYMENTS PM ON O.ORDER_ID = PM.ORDER_ID
--GROUP BY O.ORDER_ID, PM.AMOUNT;
-------------------------------------------------------------------------------------
--Product Price Increase Logic
--Requirement:
--Price increased by 10% for next financial year.

--SELECT 
--    PRODUCT_ID,
--    PRODUCT_NAME,
--    PRICE,
--    ROUND(PRICE * 1.10, 2) AS NEXT_YEAR_PRICE
--FROM PRODUCTS;
---------------------------------------------------------------------------------------------
--SELECT 
--    ORDER_ID,
--    ORDER_DATE,
--    TRUNC(SYSDATE) - TRUNC(ORDER_DATE) AS ORDER_AGE_DAYS
--FROM ORDERS;
------------------------------------------------------------------------------------------------
--Customer Last Purchase Date
--Requirement:
--Identify last order date per customer.

--SELECT 
--    C.CUSTOMER_ID,
--    C.FIRST_NAME,
--    MAX(O.ORDER_DATE) AS LAST_PURCHASE_DATE
--FROM CUSTOMERS C
--JOIN ORDERS O ON C.CUSTOMER_ID = O.CUSTOMER_ID
--GROUP BY C.CUSTOMER_ID, C.FIRST_NAME;
---------------------------------------------------------------------------------------------------
--Calculate Average Basket Size
--Requirement:
--Average number of items per order.

--SELECT 
--    ROUND(AVG(ITEM_COUNT)) AS AVG_BASKET_SIZE FROM (SELECT ORDER_ID,
--    SUM(QUANTITY) AS ITEM_COUNT FROM ORDER_ITEMS
--    GROUP BY ORDER_ID);





































