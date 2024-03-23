SELECT 
*
FROM actor 
WHERE first_name="Scarlett";

SELECT
*
FROM actor
WHERE last_name="Johansson";

SELECT 
DISTINCT i.film_id
FROM inventory i
LEFT JOIN rental r 
ON i.inventory_id = r.inventory_id
WHERE r.return_date IS NOT NULL;


SELECT 
*
FROM film WHERE film_id IN (SELECT 
DISTINCT film_id 
FROM inventory WHERE inventory_id NOT IN (SELECT DISTINCT inventory_id FROM rental WHERE return_date IS NULL));



SELECT COUNT( rental.inventory_id) total_alquileres
FROM rental;

SELECT 
MIN(rental_duration) min_rental
FROM film;


SELECT 
MAX(rental_duration) max_rental
FROM film;

SELECT 
MAX(length) max_duration
FROM film;

SELECT 
MIN(length) min_duration
FROM film;


SELECT 
AVG(length) avg_duration
FROM film;

SELECT 
    TRUNCATE(AVG(length) / 60, 0) AS horas,
    TRUNCATE(AVG(length) % 60, 0) AS minutos
FROM 
    film;
    
SELECT COUNT(film_id) longer_3
FROM film
WHERE length > 180;


SELECT 
    CONCAT(first_name, ' ', UPPER(last_name), ' - ', LOWER(CONCAT(first_name, '.', last_name, '@sakilacustomer.org'))) AS formatted_name_email
FROM customer;


SELECT 
title, length, length(title),
RANK() OVER(ORDER BY length(title) DESC) ranking
FROM film;

