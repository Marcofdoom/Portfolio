-- CREATE DATABASE
CREATE DATABASE my_database

USE [my_database]
GO

-- CREATE TABLE
CREATE TABLE movies(
	movie_name VARCHAR(200),
	movie_year INTEGER,
	country VARCHAR (100),
	genre VARCHAR (1000) NOT NULL
	PRIMARY KEY (movie_name, movie_year)
)

SELECT *
FROM movies

-- INSERT DATA MANUALLY
INSERT INTO movies VALUES ('Intersteller',2014,'USA','Sci-Fi'),
('Se7en',1995,'USA','Mystery, Crime')

INSERT INTO movies VALUES('Se7en',1995,'USA','Mystery, Crime')

INSERT INTO movies VALUES('The Green Mile',1999,'USA','Mystery, Drama')

INSERT INTO movies VALUES('The Godfather',192,'','Crime')

-- UPDATE COLUMN
UPDATE movies
SET country = 'USA'
WHERE movie_name = 'The Godfather' AND movie_year = 192

UPDATE movies
SET movie_year = 1992
WHERE movie_year = 192

-- ADD COLUMN
ALTER TABLE movies
ADD director VARCHAR(100)

-- UPDATE DATA
UPDATE movies
SET director = 'Christopher Nolan'
WHERE movie_name = 'Intersteller'

-- REMOVE COLUMN
ALTER TABLE movies
DROP COLUMN director