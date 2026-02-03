-- Level 1

SELECT * FROM film;

SELECT title, rental_rate FROM film;

SELECT * FROM film WHERE rental_rate > 4;

SELECT * FROM film WHERE release_year = 2006;

SELECT first_name, last_name FROM customer;

SELECT * FROM customer WHERE first_name = 'MARY';

SELECT * FROM film ORDER BY length DESC;

SELECT * FROM film ORDER BY length DESC LIMIT 5;