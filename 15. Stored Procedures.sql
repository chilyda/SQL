### Stored Procedures - SPs are ways to save your sequel code, so you can re-use them over and over again. When you store you can call that store procedure and it will execute all the code that you wrote within the SP. 
### Its helpful for storing complex queries, simplifing repetitive code and just enhancing performance overall!!!!!!!!!!!!!!!!!!!!!!!!!!

SELECT*
FROM employee_salary
WHERE salary >=50000;

CREATE PROCEDURE large_salaries()
SELECT*
FROM employee_salary
WHERE salary >=50000;

CALL large_salaries();

DELIMITER $$
CREATE PROCEDURE large_salaries3()
BEGIN
	SELECT*
	FROM employee_salary
	WHERE salary >=50000;
	SELECT*
	FROM employee_salary
	WHERE salary >= 10000;
END $$
DELIMITER ;

CALL large_salaries3();

### PARAMETERS - Parameters are variables that are passed as an input into a store procedure and the allow the SP to accept an input value and place it into our code.

DELIMITER $$
CREATE PROCEDURE large_salaries4(p_employee_id INT)
BEGIN
	SELECT salary
	FROM employee_salary
    WHERE employee_id = p_employee_id;
END $$
DELIMITER ;

CALL large_salaries4(1);
