USE OLTP
GO

-- TRANSACTIONS TABLE
SELECT*
FROM [dbo].[Transactions]

-- ITEMS TABLE
SELECT *
FROM [dbo].[Items]

-- CUSTOMERS TABLE
SELECT *
FROM [dbo].[Customers]

-- CALCULATE IF 1NF
SELECT COUNT(*)
FROM [dbo].[Transactions]
-- 3455

SELECT COUNT(*)
FROM (
	SELECT DISTINCT *
	FROM [dbo].[Transactions]
) AS ABC
-- 3455

-- CHECK IF 2NF
-- SEPERATE CUSTOMER-SPECIFIC COLUMNS INTO TEMPORARY TABLE
SELECT [customerid],
		[firstname],
		[surname],
		[shipping_state]
INTO TMP
FROM [dbo].[Transactions]

-- CREATE NEW TABLE CUSTOMERS AND REMOVE DUPLICATES
SELECT DISTINCT *
INTO Customers
FROM [dbo].[TMP]

-- REMOVE CUSTOMER SPECIFIC COLUMNS
ALTER TABLE [dbo].[Transactions]
DROP COLUMN [Name], [Surname], [Shipping_State],

-- DROP TEMPORARY TABLE
DROP TABLE [dbo].[TMP]

-- CHECK 3NF
-- SEPERATE ITEM-SPECIFIC COLUMNS INTO TEMPORARY TABLE
SELECT [Item],
		[Description],
		[Retail_Price]
INTO TMP
FROM [dbo].[Transactions]

-- CREATE NEW TABLE ITEMS AND REMOVE DUPLICATES
SELECT DISTINCT *
INTO Items
FROM TMP

-- REMOVE ITEM SPECIFIC COLUMNS
ALTER TABLE [dbo].[Transactions]
Drop COLUMN [Description], [Retail_Price]

-- DROP TEMPORARY TABLE
DROP TABLE TMP
