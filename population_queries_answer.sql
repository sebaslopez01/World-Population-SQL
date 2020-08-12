-- How many entries in the database are from Africa?
SELECT COUNT(*) AS 'Count'
FROM countries
WHERE continent = 'Africa';


-- What was the total population of Oceania in 2005?
SELECT SUM(population) AS 'Total population of Oceania in 2005'
FROM countries
JOIN population_years
ON countries.id = population_years.country_id
WHERE continent = 'Oceania' AND year = 2005;


-- What is the average population of countries in South America in 2003?
SELECT ROUND(AVG(population), 2) AS 'Average population of South America in 2003'
FROM countries
JOIN population_years
ON countries.id = population_years.country_id
WHERE continent = 'South America' AND year = 2003;


-- What country had the smallest population in 2007?
SELECT countries.name, MIN(population) AS 'Population'
FROM countries
JOIN population_years
ON countries.id = population_years.country_id
WHERE year = 2007;


-- What is the average population of Poland during the time period covered by this dataset?
SELECT ROUND(AVG(population), 2) AS 'Average population of Poland'
FROM countries
JOIN population_years
ON countries.id = population_years.country_id
WHERE name = 'Poland';


-- How many countries have the word "The" in their name?
SELECT COUNT(*) AS 'Countries with The'
FROM countries
WHERE name LIKE '%The%';


-- What was the total population of each continent in 2010?
SELECT countries.continent, SUM(population) AS 'Population'
FROM countries
JOIN population_years
ON countries.id = population_years.country_id
WHERE year = 2010
GROUP BY 1
ORDER BY 2 DESC;

