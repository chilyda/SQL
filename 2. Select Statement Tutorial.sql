#####  SELECT Statement is used to help filter/select Columns

SELECT * 
FROM parks_and_recreation.employee_demographics;

SELECT first_name, 
last_name,
age,
(age + 10) * 10 AS new_age
FROM parks_and_recreation.employee_demographics;

# Anytype of calculation within MYSQL fooloows the rules of PEMDAS 
# PEMDAS Order of operations for arithemtic of maths within my SQL. Parenthesis, Exponential, Multiplication, Division, Addition and Subtraction

SELECT DISTINCT gender
FROM parks_and_recreation.employee_demographics;

SELECT DISTINCT first_name, gender
FROM parks_and_recreation.employee_demographics;

