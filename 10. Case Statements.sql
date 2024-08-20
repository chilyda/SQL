#### Case Statements allows us to add logic in our select statement such like ELSE IF in excel

SELECT first_name,
last_name,
age,
CASE
	WHEN age <= 30 THEN 'Young' 
END
FROM employee_demographics;

SELECT first_name,
last_name,
age,
CASE
	WHEN age <= 30 THEN 'Young' 
    WHEN age BETWEEN 31 and 50 THEN 'Old'
    WHEN age >= 50 THEN 'Goodnight'
END AS age_bracket
FROM employee_demographics;

### Pay increase and Bonus Scenario 
## < 50000 = 5%
## > 50000 = 7%
#Finance Dept = 10% Bonus

SELECT*
FROM employee_salary;

SELECT first_name, last_name, salary,
CASE
	WHEN salary < 50000 THEN salary + (salary * 0.05)
    WHEN salary > 50000 THEN salary + (salary * 0.07)
END AS New_Salary
FROM employee_salary;

SELECT first_name, last_name, salary,
CASE
	WHEN salary < 50000 THEN salary + (salary * 0.05)
    WHEN salary > 50000 THEN salary + (salary * 0.07)
END AS New_Salary,
CASE
	WHEN dept_id = 6 THEN salary + (salary * .10)
END AS Bonus
FROM employee_salary; 