#Task_1
SELECT DISTINCT JOB_ID
FROM employees;

#Task_2
SELECT AVG(SALARY), count(EMPLOYEE_ID) AS number_of_employees
FROM employees
WHERE DEPARTMENT_ID = 90;

#Task_3
SELECT JOB_ID, count(EMPLOYEE_ID)
FROM employees
GROUP BY JOB_ID;

#Task_4
SELECT employees.FIRST_NAME, employees.LAST_NAME, employees.DEPARTMENT_ID, departments.DEPARTMENT_NAME
FROM employees
INNER JOIN departments ON employees.DEPARTMENT_ID = departments.DEPARTMENT_ID;

#Task_5
SELECT employees.FIRST_NAME, employees.LAST_NAME, employees.JOB_ID, employees.DEPARTMENT_ID, departments.DEPARTMENT_NAME
FROM employees
INNER JOIN departments ON employees.DEPARTMENT_ID = departments.DEPARTMENT_ID
INNER JOIN locations ON departments.LOCATION_ID = locations.LOCATION_ID
WHERE locations.CITY = 'London';