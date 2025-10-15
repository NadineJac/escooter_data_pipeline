## Creating the matching cities and population table with SQL 💻

-- Drop the database if it already exists
DROP DATABASE IF EXISTS data_pipeline_example;

-- Create the database
CREATE DATABASE data_pipeline_example;

-- Use the database
USE data_pipeline_example;

-- Create the 'authors' table
CREATE TABLE cities (
    city_id INT AUTO_INCREMENT, -- Automatically generated ID for each author
    city_name VARCHAR(255) NOT NULL, -- Name of city
    country VARCHAR(255), -- County city is located in
    country_code CHAR(3),
    latitude DECIMAL(10,3), -- latitude of city
    longitude DECIMAL(10,3), -- longitude of city
    PRIMARY KEY (city_id) -- Primary key to uniquely identify each author
);

SELECT * FROM cities;

-- Create the 'books' table
CREATE TABLE population (
	city_id INT NOT NULL, -- city_ID
    population INT, -- Population of city
    measurement_date VARCHAR(55), -- Info on when data was measured
    retrieval_date DATE, -- date of retrieval
    PRIMARY KEY (city_id, retrieval_date), -- Primary key to uniquely identify each book
    FOREIGN KEY (city_id) REFERENCES cities(city_id) -- Foreign key to connect each book to its author
);

SELECT * FROM population;