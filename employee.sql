-- 1. List the first and last names of all employees that live in Calgary.
SELECT first_name, last_name FROM employee WHERE city = 'Calgary';

-- 2. Find the birthdate for the youngest employee.
SELECT MAX(birth_date) FROM employee;

-- 3. Find the birthdate for the oldest employee.
SELECT MIN(birth_date) FROM employee;

-- 4. Find everyone that reports to Nancy Edwards (find Nancy Edwards’ employee_id, then look for employees who have that id in their reports_to field).
SELECT employee_id FROM employee WHERE reports_to = 2;

-- 5. Count how many people live in Lethbridge.
SELECT COUNT(*) FROM employee WHERE city = 'Lethbridge';