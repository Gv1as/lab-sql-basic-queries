USE sakila;

-- 1.
SHOW TABLES;

-- 2.
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;


-- 3.
SELECT title FROM film;

SELECT name AS language FROM language;

SELECT first_name FROM staff;


-- 4.
SELECT DISTINCT release_year
FROM film;

-- 5.
SELECT
	count(store_id) AS number_stores
FROM store;

SELECT
	count(staff_id) AS number_staff
FROM staff;


SELECT 
    (COUNT(DISTINCT inventory_id) - SUM(IF(return_date IS NULL, 1, 0))) AS available_films,
    SUM(IF(return_date IS NULL, 1, 0)) AS rented_films
FROM rental;

SELECT 
    COUNT(DISTINCT last_name) AS distinct_last_names
FROM actor;

-- 6.
SELECT 
	title, 
	length
FROM film
ORDER BY length DESC
LIMIT 10;

-- 7.
SELECT * FROM actor
WHERE first_name = 'SCARLETT';

-- Bonus
SELECT * FROM film
WHERE title LIKE '%ARMAGEDDON%' AND length > 100;




