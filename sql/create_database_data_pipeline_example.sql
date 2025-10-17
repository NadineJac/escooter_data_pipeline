## Creating the matching cities and population table with SQL 💻

-- Drop the database if it already exists
DROP DATABASE IF EXISTS data_pipeline_example;

-- you can drop the whole schema if something went wrong and you have to restaart
-- DROP SCHEMA data_pipeline_example;
-- truncate deletes all data from within the table, but keeps the table itself
-- if you want to delete a parent table, you need to delte the child table first

-- Create the database
CREATE DATABASE data_pipeline_example;

-- Use the database
USE data_pipeline_example;

-- Create the 'cities' table
CREATE TABLE cities (
    city_id INT AUTO_INCREMENT, -- Automatically generated ID for each author
    city_name VARCHAR(255) NOT NULL UNIQUE, -- Name of city
    country VARCHAR(255), -- County city is located in
    country_code CHAR(3),
    latitude DECIMAL(10,3), -- latitude of city
    longitude DECIMAL(10,3), -- longitude of city
    PRIMARY KEY (city_id) -- Primary key to uniquely identify each author
);

SELECT * FROM cities;

-- Create the 'population' table
CREATE TABLE population (
	city_id INT NOT NULL, -- city_ID
    population INT, -- Population of city
    measurement_date VARCHAR(55), -- Info on when data was measured
    retrieval_date DATE, -- date of retrieval
    PRIMARY KEY (city_id, retrieval_date), -- Primary key to uniquely identify each book
    FOREIGN KEY (city_id) REFERENCES cities(city_id) -- Foreign key to connect each book to its author
);

SELECT * FROM population;

-- Create the 'weather_forcasts' table
CREATE TABLE weather_forecasts (
	city_id INT NOT NULL, -- city_ID
    forecast_time DATETIME, -- date of retrieval
    temperature FLOAT, -- temperature in celsius
    feels_like FLOAT, -- felt temperature in celsius
	forecast VARCHAR(255), -- forecast description
	rain_prob FLOAT, -- probability of precipation (including snow) as ratio, e.g. 0.2 = 20%
	rain_past3h FLOAT, -- amount of rain over last 3h in mm
    wind_speed FLOAT, -- wind speed in m/s    
    data_retrieved_at DATETIME, -- Timepoint of data retrieval    
    PRIMARY KEY (city_id, forecast_time, data_retrieved_at), -- Primary key to uniquely identify each book, maybe drop reference to retrieval field --> duplicate entries possible
    FOREIGN KEY (city_id) REFERENCES cities(city_id) -- Foreign key to connect each book to its author
);

SELECT * FROM weather_forecasts;

-- Create the 'cities_airports' table
CREATE TABLE cities_airports (
	icao_code VARCHAR(10) UNIQUE NOT NULL, -- airport ID
    airport_name VARCHAR(25), -- Airport name
    city_id INT NOT NULL, -- city ID   
    PRIMARY KEY (icao_code), -- Primary key to uniquely identify each airport
    FOREIGN KEY (city_id) REFERENCES cities(city_id) -- Foreign key to connect each airport to its city
);

SELECT * FROM cities_airports;

-- Create the 'flights' table
CREATE TABLE flights (
	id INT AUTO_INCREMENT, -- flight ID
    arrival_airport_icao VARCHAR(10),
    departure_airport_icao VARCHAR(10),
    scheduled_arrival_time DATETIME,
    flight_number VARCHAR(20),
    timestamp_flight DATETIME,
    PRIMARY KEY (id), -- Primary key to uniquely identify each airport
    FOREIGN KEY (arrival_airport_icao) REFERENCES cities_airports(icao_code) -- Foreign key to connect each airport to its city
);

SELECT * FROM flights;