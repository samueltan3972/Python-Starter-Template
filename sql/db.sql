-- Reference:
-- https://github.com/HariSekhon/SQL-scripts

SET timezone='Asia/Kuala_Lumpur';

CREATE DATABASE test_db;

ALTER TABLE
  table1 DROP CONSTRAINT table1_id_fkey;

DROP TABLE IF EXISTS table1;

CREATE TABLE table1(
  test_id INT GENERATED ALWAYS AS IDENTITY,
  test_location VARCHAR,
  PRIMARY KEY(junction_id)
);

INSERT INTO table1 VALUES (1, 'PENELOPE');

-- Select Data
SELECT
	CONCAT(customer.last_name, ', ', customer.first_name) AS customer,
	address.phone,
	film.title
FROM
	rental
	INNER JOIN customer ON rental.customer_id = customer.customer_id
	INNER JOIN address ON customer.address_id = address.address_id
	INNER JOIN inventory ON rental.inventory_id = inventory.inventory_id
	INNER JOIN film ON inventory.film_id = film.film_id
WHERE
	rental.return_date IS NULL
	AND rental_date < CURRENT_DATE
ORDER BY
	title
LIMIT 5;
