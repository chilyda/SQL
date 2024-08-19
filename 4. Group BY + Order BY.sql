### GROUP BY + ORDER BY...GROUP BY clause would group 2geda ROWS that have the same values in the specified column/columns that you are grouping on. Once you have grouped those rows 2geda, then you can run an aggregate function (AVG, MIN, MAX, SUM ect)If we are not performing an aggregate function in the group by clause, the SELECT staement and GROUP BY has to match
### If not perfroming an Aggregate function, then the SELECT and GROUP BY has to match

SELECT*
FROM employee_demographics;

#### What we have done is select gender and group by gender...The AVG func doesnt need to go in the GROUP BY, we are just grouping on the gender and then we are performing this aggregate func/calculation based off of those grouped rows for gender.

SELECT gender, AVG(age)
FROM employee_demographics
GROUP BY gender;

SELECT occupation, salary
FROM employee_salary
GROUP BY occupation, salary;

SELECT gender, AVG(age), MAX(age), MIN(age), COUNT(age)
FROM employee_demographics
GROUP BY gender;

### ORDER BY....Order the result set by either ASC or DESC order

SELECT *
FROM employee_demographics
ORDER BY first_name ASC;

SELECT *
FROM employee_demographics
ORDER BY gender, age;

SELECT *
FROM employee_demographics
ORDER BY gender, age DESC;

