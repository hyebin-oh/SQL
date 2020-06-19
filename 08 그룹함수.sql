--�׷��Լ�
SELECT COUNT(*)
FROM employees;

SELECT salary
FROM employees
ORDER BY salary DESC;

--MAX MIN
SELECT MAX(salary), MIN(salary)
FROM employees;

--���ڿ��� ����
SELECT MAX(first_name), MIN(first_name)
FROM employees;

--��¥�� ����
SELECT MAX(hire_date), MIN(hire_date)
FROM employees;

--SUM, AVG : �հ�� ��� (����)
SELECT SUM(salary), AVG(salary)
FROM employees;

--COUNT
SELECT COUNT(*) --�������̺��� ��� ���� ����
FROM employees;

SELECT COUNT(department_id) --NULL���� �ƴ� ���� ����
FROM employees;

SELECT COUNT(DISTINCT department_id) --�ߺ����ܰ���(�μ��� ����)
FROM employees;

--90�� �μ��� ������ ����
SELECT COUNT(employee_id) 
FROM employees
WHERE department_id=90;

SELECT AVG(commission_pct) --�ΰ��� ������ ���
FROM employees;

-- GROUP BY�� ������ �����Լ� ���
SELECT department_id, ROUND(AVG(salary)) ��ձ޿�
FROM employees
GROUP BY department_id;

SELECT department_id �μ���ȣ, 
    ROUND(AVG(salary)) ��ձ޿�,
    SUM(salary) �ѱ޿��հ�,
    COUNT(*) �μ��ο���
FROM employees
GROUP BY department_id;

SELECT department_id �μ���ȣ, job_id,
    ROUND(AVG(salary)) ��ձ޿�,
    SUM(salary) �ѱ޿��հ�,
    COUNT(*) �μ����������ο���
FROM employees
GROUP BY department_id, job_id;

--ex1
SELECT department_id �μ���, 
    COUNT(*) �����,
    MAX(salary) �ְ�޿�,
    MIN(salary) �ּұ޿�,
    SUM(salary) �޿��հ�,
    ROUND(AVG(salary)) ��ձ޿�
FROM employees
GROUP BY department_id
ORDER BY �޿��հ� DESC;

--ex2
SELECT department_id �μ���ȣ, job_id ����, manager_id ����ȣ,
    SUM(salary) �����հ�,
    COUNT(*)������
FROM employees
GROUP BY department_id, job_id,manager_id
ORDER BY �μ���ȣ;

--ex3
SELECT ROUND(AVG(MAX(salary))) �μ����ְ�������,
    ROUND(AVG(MIN(salary))) �μ��������������
FROM employees
GROUP BY department_id;

--HAVING ��, �׷��Լ��� �̿��� ������
SELECT department_id �μ���, SUM(salary) �޿��հ�
FROM employees
GROUP BY department_id
HAVING SUM(salary) > 100000
ORDER BY department_id;

--ex1
SELECT job_id ����, SUM(salary)���޿��հ�
FROM employees
WHERE job_id <> 'AC_MGR'
GROUP BY job_id
HAVING AVG(salary)>10000
ORDER BY ���޿��հ� DESC;

--ex2
SELECT department_id �μ���ȣ, ROUND(AVG(salary)) ��ձ޿�
FROM employees
WHERE department_id<>40
GROUP BY department_id
HAVING AVG(salary)<=7000;

--ex3
SELECT job_id, SUM(salary) �޿��Ѿ�
FROM employees
WHERE job_id not LIKE '%REP%'
GROUP BY job_id
HAVING SUM(salary)>=13000
ORDER BY �޿��Ѿ� DESC;