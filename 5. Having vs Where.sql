#### Having Vs Where ----Having comes after Group By (Single Friends Give House to Oputa - SFGHO)-PNEUMONIC...Also Select and Group By always have the same column

SELECT gender, AVG(Age)
FROM employee_demographics
GROUP BY gender
HAVING AVG(age) > 40;

SELECT occupation, MIN(salary)
FROM employee_salary
GROUP BY occupation
HAVING AVG(salary) <= 25000;

SELECT occupation, AVG(salary)
FROM employee_salary
GROUP BY occupation
HAVING AVG(salary) = 50000;

SELECT occupation, AVG(salary)
FROM employee_salary
WHERE occupation LIKE '%manager%'
GROUP BY occupation
HAVING AVG(salary) > 75000;