--drop tables

	DROP TABLE AccountMaster;
	DROP TABLE Customer;
	DROP TABLE Transactions;
	DROP TABLE ServiceTracker;
	DROP TABLE UserTable;
	DROP TABLE Fund_Transfer;
	DROP TABLE PayeeTable;

-- Create Tables

	CREATE TABLE AccountMaster(
		Account_ID NUMBER(10) NOT NULL,
		Account_Type VARCHAR2(25),
		Account_Balance NUMBER(15),
		Open_Date Date
	);

	CREATE TABLE Customer(
		Account_ID NUMBER(10) NOT NULL,
		customer_name VARCHAR2(30) NOT NULL,
		Email VARCHAR2(30),
		Address VARCHAR2(100),
		Pancard VARCHAR2(15),
		Account_Type VARCHAR2(25),
                User_Id VARCHAR2(15)
	);

	CREATE TABLE Transactions(
		Transaction_ID NUMBER,
		Tran_description VARCHAR2(100),
		Date_of_Transaction DATE,
		Transaction_Type VARCHAR2(15),
		Tran_Amount NUMBER(15),
		Account_No NUMBER(10)
	);
	
	CREATE TABLE ServiceTracker(
		Service_ID NUMBER, 
		Service_Description VARCHAR2(100),
		Account_ID NUMBER, 
		Service_Raised_Date DATE,
		Service_status VARCHAR2(40)
	);
	
	CREATE TABLE UserTable(
		Account_ID NUMBER(15),
		user_id VARCHAR2(15),
		login_password VARCHAR2(15),
		transaction_password VARCHAR2(15),
		lock_status VARCHAR2(10),
		secret_question VARCHAR2(50),
		secret_answer VARCHAR2(40)
	);
	
	CREATE TABLE Fund_Transfer(
		FundTransfer_ID NUMBER,
		Account_ID NUMBER(10),
		Payee_Account_ID NUMBER(10), 
		Date_Of_Transfer DATE, 
		Transfer_Amount NUMBER(15)
	);

	CREATE TABLE PayeeTable(
		Account_Id NUMBER,
		Payee_Account_Id NUMBER, 
		NickName VARCHAR2(40)
	);	



--Insert statements
INSERT INTO USERTABLE VALUES(0,'vish9415','vishpass','vishtrans','nope','What is your favourite color?','Black');
INSERT INTO USERTABLE VALUES(0,'vaib02','vaib136169','vaib12345','nope','Your first school was in which city?','Jaipur');
INSERT INTO USERTABLE VALUES(0,'kkeelu','kavikeelu','kavitha','nope','Your first school was in which city?','Vizag');
INSERT INTO USERTABLE VALUES(0,'habhat','harshit0214','harshit','nope','Your first school was in which city?','Jammu');


INSERT INTO CUSTOMER VALUES(10012001, 'Vishesh Kushwah','vish9415@gmail.com','Keshav PG Talwade,Pune','BBASD1234Y','Savings','vish9415');
INSERT INTO CUSTOMER VALUES(10012011, 'Vaibhav Bansal','vaib02@gmail.com','Om Sai PG Talwade,Pune','AZHHD5534Y','Savings','vaib02');
INSERT INTO CUSTOMER VALUES(10012021, 'Kavitha Keelu','kkeelu15@gmail.com','Sai Home Base Talwade,Pune','MMGTR9996P','Current','kkeelu');
INSERT INTO CUSTOMER VALUES(10012031, 'Harshit Bhat','habhat11@gmail.com','Vimaan Nagar,Pune','CCDER4147B','Current','habhat');


INSERT INTO ACCOUNTMASTER VALUES(10012001,'Savings',10000,'05-NOV-2017');
INSERT INTO ACCOUNTMASTER VALUES(10012011,'Savings',10000,'05-NOV-2017');
INSERT INTO ACCOUNTMASTER VALUES(10012021,'Current',10000,'07-NOV-2017');
INSERT INTO ACCOUNTMASTER VALUES(10012031,'Current',10000,'13-NOV-2017');


INSERT INTO TRANSACTIONS VALUES(50014002,'Tution Fees','06-NOV-2017','Send',1500,10012001);
INSERT INTO TRANSACTIONS VALUES(50014052,'Pizza Party','08-NOV-2017','Received',800,10012011);
INSERT INTO TRANSACTIONS VALUES(50014102,'Cab Fare','10-NOV-2017','Send',400,10012021);
INSERT INTO TRANSACTIONS VALUES(50014152,'Shopping','13-NOV-2017','Send',4500,10012031);


INSERT INTO FUND_TRANSFER VALUES(22221111,10012001,10012011,'08-NOV-2017',100);
INSERT INTO FUND_TRANSFER VALUES(22221131,10012011,10012031,'10-NOV-2017',1000);
INSERT INTO FUND_TRANSFER VALUES(22221151,10012001,10012021,'09-NOV-2017',650);
INSERT INTO FUND_TRANSFER VALUES(22221171,10012021,10012011,'11-NOV-2017',250);


INSERT INTO PAYEETABLE VALUES(10012001,10012031,'harshit');
INSERT INTO PAYEETABLE VALUES(10012031,10012021,'kavitha');
INSERT INTO PAYEETABLE VALUES(10012031,10012011,'vaib');
INSERT INTO PAYEETABLE VALUES(10012001,10012021,'kavikeelu');




