### Temporary Tales are only visible in the session that they are created in

CREATE TEMPORARY TABLE temp_table
( first_name varchar(50),
last_name varchar(50),
favorite_movie varchar(100)
);

SELECT*
FROM temp_table;

INSERT INTO temp_table
VALUES('Chinwe','Oputa','Fifty Shades of Grey');

SELECT *
FROM employee_salary;

## We are creating a temporary table based off of an existing table

CREATE TEMPORARY TABLE salary_over_50k
SELECT*
FROM employee_salary
WHERE salary >= 50000;

SELECT*
FROM salary_over_50k;