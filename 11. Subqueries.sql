### Sub-Queries ..It is a query within another query

SELECT *
FROM employee_demographics
WHERE employee_id IN 
                  (SELECT employee_id
                  FROM employee_salary
                  WHERE dept_id = 1);

SELECT first_name, salary, AVG(salary)
FROM employee_salary
GROUP BY first_name, salary;

SELECT first_name, salary, 
      (SELECT AVG(salary)
	FROM employee_salary) AS New_sal
FROM employee_salary;

SELECT gender, AVG(age), MAX(age), MIN(age), COUNT(age)
FROM employee_demographics
GROUP BY gender;

SELECT*
FROM
(SELECT gender, AVG(age), MAX(age), MIN(age), COUNT(age)
FROM employee_demographics
GROUP BY gender) AS Agg_table
GROUP BY gender;