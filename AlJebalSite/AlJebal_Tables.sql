/*CREATE DATABASE AlJebal;*/
USE AlJebal;

CREATE TABLE Customer
(
   CustomerID INT IDENTITY(1,1) PRIMARY KEY,
   CFirstName VARCHAR(50),
   CLastName VARCHAR(50),
   CAddress VARCHAR(50),
   Cellphone VARCHAR(50),
   Email VARCHAR(50),
   DWTRA int
);

CREATE TABLE Employee
(
   EmployeeID INT IDENTITY(2,1) PRIMARY KEY,
   EmployeeFirstName VARCHAR(50),
   EmployeeLastName VARCHAR(50),
   JobTitle VARCHAR(50)
);

CREATE TABLE OrderInvoice
(
   OrderNum INT IDENTITY(2,1) PRIMARY KEY,
   CustomerID INT,
   Quantity INT,
   OrderTotal MONEY
);

CREATE TABLE OrderItem
(
   OrderNum INT,
   ItemNum INT,
   Quantity INT,
   Price MONEY,
   Total MONEY
);

CREATE TABLE CustomItem
(
   customNum INT IDENTITY(2,1) PRIMARY KEY,
   CustomerID INT,
   CustomDescription VARCHAR(MAX),
   Price_Estimate DECIMAL(2,2),
   submitted datetime
);

CREATE TABLE RestTable
(
   TapleID INT IDENTITY(2,1) PRIMARY KEY,
   Chair INT
);

CREATE TABLE RestTableRes
(
   ResNum INT IDENTITY(2,1) PRIMARY KEY,
   CustomerID INT ,
   ResTimeDate DateTime
);

CREATE TABLE Feedback
(
   FeedbackNum INT IDENTITY(2,1) PRIMARY KEY,
   CustomerID INT ,
   ItemNum INT ,
   Email VARCHAR(50) ,
   Rating INT ,
   OrderNum INT,
   Feedback VARCHAR(MAX)
);

CREATE TABLE Menus
(
   MenuNum INT IDENTITY(2,1) ,
   MenuName VARCHAR(50)
);

CREATE TABLE Menu_Items
(
   Menu_ItemNum INT IDENTITY(1,1) PRIMARY KEY,
   ItemNum INT,
   MenuNum INT
);

CREATE TABLE Items
(
   ItemNum INT IDENTITY(1,1) PRIMARY KEY,
   ItemName VARCHAR(50),
   Category VARCHAR(50) ,
   ItemDescription VARCHAR(MAX) ,
   ItemPrice MONEY
);