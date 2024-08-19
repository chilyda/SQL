### WHERE CLAUSE..Used to filter rows of data.....rows that fulfil a specific condition

SELECT*
FROM employee_salary
WHERE first_name = 'leslie';

SELECT*
FROM employee_salary
WHERE first_name != 'leslie';

SELECT*
FROM employee_salary
WHERE salary >= 25000;

SELECT*
FROM employee_salary
WHERE salary <= 25000;

SELECT*
FROM employee_demographics
WHERE birth_date > '1985-01-01';

SELECT*
FROM employee_demographics
WHERE gender = 'Female';

#Logical Operators  (AND, OR NOT)  PEMDAS IS APPLICABLE IN THIS SCENARIO
SELECT*
FROM employee_demographics
WHERE gender = 'Female' AND age < 40;

SELECT*
FROM employee_demographics
WHERE (first_name = 'Ann' AND age != 44) OR age = 55;

# LIKE Statement ...we are not looking for an exact match with the LIKE statement
####   We have the percent and underscore (%____) The percent % sign means anything whereas the underscore means a specific value

SELECT*
FROM employee_demographics
WHERE first_name LIKE 'JER%';

SELECT*
FROM employee_demographics
WHERE first_name LIKE '%ER%';

SELECT*
FROM employee_demographics
WHERE first_name LIKE 'a__';

SELECT*
FROM employee_demographics
WHERE birth_date LIKE '1985%';


