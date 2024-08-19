##### Limit + Aliasing ...limits jsut specifies how many rows we want in our output

SELECT*
FROM employee_demographics
LIMIT 3;

#Combine Limit + Order By (3 oldest employee)

SELECT*
FROM employee_demographics
ORDER BY age DESC
LIMIT 3;

SELECT*
FROM employee_demographics
ORDER BY age DESC
LIMIT 2, 1;

SELECT gender, AVG(age) AS avg_age
FROM employee_demographics
GROUP BY gender
HAVING AVG(age) > 40;