#### String Functions.....Built in functions in SQL that would help us work with strings differently


SELECT*
FROM employee_demographics;

SELECT LENGTH('skyfall');

SELECT first_name, LENGTH(first_name)
FROM employee_demographics;

SELECT first_name, LENGTH(first_name)
FROM employee_demographics
ORDER BY 2;

SELECT UPPER('sky');

SELECT first_name, UPPER(first_name)
FROM employee_demographics;

SELECT LOWER('SKY');

SELECT last_name, LOWER(first_name)
FROM employee_demographics;

### TRIM  Gets rid of leading spaces

SELECT TRIM('   SKY     ');

SELECT RTRIM('   SKY     ');

SELECT LTRIM('   SKY     ');

### SUBSTRING

SELECT*
FROM employee_demographics;

SELECT first_name,
LEFT(first_name, 4),
RIGHT(first_name, 4)
FROM employee_demographics;

SELECT first_name,
LEFT(first_name, 4),
RIGHT(first_name, 4),
SUBSTRING(first_name,3,2)
FROM employee_demographics;

SELECT first_name,
LEFT(first_name, 4),
RIGHT(first_name, 4),
SUBSTRING(first_name,3,2),
birth_date,
SUBSTRING(birth_date,6,2) AS birth_month
FROM employee_demographics;

SELECT first_name, REPLACE(first_name, 'a','z')
FROM employee_demographics;

SELECT LOCATE('n', 'Chinwe');

#CONCAT 

SELECT first_name, last_name,
CONCAT(first_name, last_name)
FROM employee_demographics;

SELECT first_name, last_name,
CONCAT(first_name,' ', last_name) AS Full_name
FROM employee_demographics;
