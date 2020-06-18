-- 집합연산자(UNION 외)

--UNION : 합집합 중복 제거(115행)
SELECT employee_id, job_id
FROM employees
UNION
SELECT employee_id, job_id
FROM job_history;

--UNION ALL(117행)
SELECT employee_id, job_id
FROM employees
UNION ALL
SELECT employee_id, job_id
FROM job_history;

--INTERSECT 교집합(2행)
SELECT employee_id, job_id
FROM employees
INTERSECT
SELECT employee_id, job_id
FROM job_history;

--MINUS 차집합 (105행)
SELECT employee_id, job_id
FROM employees
MINUS
SELECT employee_id, job_id
FROM job_history;

--EX1
SELECT department_id
FROM employees
UNION
SELECT department_id
FROM departments;

--EX2
SELECT department_id
FROM employees
UNION ALL
SELECT department_id
FROM departments;

--EX3
SELECT department_id
FROM employees
INTERSECT
SELECT department_id
FROM departments;

--EX4
SELECT department_id
FROM departments
MINUS
SELECT department_id
FROM employees;