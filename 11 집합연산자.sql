-- ���տ�����(UNION ��)

--UNION : ������ �ߺ� ����(115��)
SELECT employee_id, job_id
FROM employees
UNION
SELECT employee_id, job_id
FROM job_history;

--UNION ALL(117��)
SELECT employee_id, job_id
FROM employees
UNION ALL
SELECT employee_id, job_id
FROM job_history;

--INTERSECT ������(2��)
SELECT employee_id, job_id
FROM employees
INTERSECT
SELECT employee_id, job_id
FROM job_history;

--MINUS ������ (105��)
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