USE [Consumer Complaints]
GO

-- WHERE, AND, OR Statements
SELECT * 
FROM consumer_complaints
WHERE sub_product = 'Vehicle loan'
AND state_name = 'FL' or state_name = 'WV'
ORDER BY state_name DESC

SELECT product_name
FROM consumer_complaints
WHERE date_received = date_sent
ORDER BY product_name

-- COUNT() function
SELECT COUNT(product_name)
FROM consumer_complaints
WHERE LOWER(product_name) LIKE '%bank%'

-- LIKE() function
SELECT *
FROM consumer_complaints
WHERE zip_code LIKE '2%'

SELECT *
FROM consumer_complaints
WHERE zip_code LIKE '2____'

SELECT *
FROM consumer_complaints
WHERE zip_code NOT LIKE '2____'

SELECT COUNT(product_name)
FROM consumer_complaints
WHERE LOWER(product_name) LIKE '%bank%'

-- Comments
/*
Multiline comment
*/
-- Single line comment

USE [Console Games]
GO

-- LENGTH(), LEFT(), RIGHT() and REVERSE() functions
SELECT game_name, LEN(game_name)
FROM console_games

SELECT LEFT(publisher,4)
FROM console_games

SELECT RIGHT(publisher,4)
FROM console_games

SELECT REVERSE(publisher)
FROM console_games

-- Date functions
SELECT *, DATEPART(YEAR,discontinued) - DATEPART(YEAR,first_retail_availability) AS years_existed
FROM console_dates
order by years_existed

SELECT COUNT(platform_name)
FROM console_dates
WHERE DATEPART(Month,first_retail_availability) = 11
OR DATEPART(Month,first_retail_availability) = 12

SELECT *, DATEDIFF(YEAR,first_retail_availability, discontinued) AS platform_duration_years
FROM console_dates
ORDER BY platform_duration_years

-- Implicit data conversion
SELECT CAST(game_year as varchar(4)) AS game_year
FROM console_games
ORDER BY game_rank

-- Null
SELECT * 
FROM console_games
WHERE game_name IS NULL;
					
UPDATE console_games
SET jp_sales = round((na_sales + eu_sales + other_sales)/3, 2)
WHERE jp_sales IS NULL
