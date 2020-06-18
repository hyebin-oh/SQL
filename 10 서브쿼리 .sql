--��������

--Abel �������� �޿��� �� ���� �޴� ��������?
--Abel �޿� Ȯ��
SELECT salary
FROM employees
WHERE last_name = 'Abel';

--�������� ���
-- ������ ������(=,<,><=,>=,!=) ��� ����
SELECT employee_id, last_name, salary
FROM employees
WHERE salary >(SELECT salary
                FROM employees
                WHERE last_name = 'Abel');

--������ ���� ���
SELECT employee_id, last_name, salary
FROM employees
WHERE salary >(SELECT salary
                FROM employees
                WHERE department_id = 30);
                
--�׷��Լ��� ���������� �̿�
-- �׷��Լ� ���� MAX�� ���� ���� �ݿ��� �޴� ����� �˼�����
SELECT *
FROM employees
WHERE salary = (SELECT MAX(salary) FROM employees);

--ex
SELECT employee_id ������ȣ, last_name �̸�, department_id �μ���ȣ, salary �޿�
FROM employees
WHERE salary > (SELECT salary
                FROM employees
                WHERE last_name = 'Bull')
and department_ID = (SELECT department_id
                     FROM employees
                     WHERE last_name = 'Bull');

--ex
SELECT last_name, salary, manager_id
FROM employees
WHERE manager_id = (SELECT employee_id
                    FROM employees
                    WHERE last_name = 'Russell');

--ex
SELECT *
FROM employees 
WHERE job_id = (SELECT job_id
                FROM jobs
                WHERE job_title = 'Stock Manager');

--������ ��������
--������ (in, any, all)
SELECT salary FROM employees WHERE department_id = 90;

--IN ������
SELECT employee_id, first_name, last_name, salary
FROM employees
WHERE salary in(SELECT salary FROM employees WHERE department_id = 90);

--ANY : �ϳ��� ���Ǹ� �����ص� ��
SELECT employee_id, first_name, last_name, salary
FROM employees 
WHERE salary >= ANY(SELECT salary FROM employees WHERE department_id = 90);

--ALL : ��� ������ �����ؾ� ��
SELECT employee_id, first_name, last_name, salary
FROM employees 
WHERE salary >= ALL(SELECT salary FROM employees WHERE department_id = 90);

--ex1
SELECT employee_id, first_name, job_id ����, salary �޿�
FROM employees
WHERE manager_id IN(SELECT manager_id FROM employees WHERE department_id=20)
and department_id <>20;

--ex2
SELECT employee_id, last_name, job_id, salary
FROM employees
WHERE salary < any(SELECT salary FROM employees WHERE job_id='ST_MAN') ;

--ex3
SELECT employee_id, last_name, job_id, salary
FROM employees
WHERE salary < all(SELECT salary FROM employees WHERE job_id='IT_PROG');


--���߿� ��������
SELECT employee_id, first_name, job_id, salary, manager_id
FROM employees
WHERE (manager_id, job_id) IN (SELECT manager_id, job_id 
                                FROM employees 
                                WHERE first_name = 'Bruce')
AND first_name != 'Bruce';

--�μ��� �ּ� �޿��� �޴� ����� �μ���ȣ, �����ȣ, �̸�, �޿� ���� �˻�
SELECT department_id �μ���ȣ, employee_id �����ȣ,
    first_name �̸�, salary �޿�
FROM employees
WHERE (department_id, salary) in (SELECT department_id, Min(salary)
                                  FROM employees
                                  GROUP BY department_id)
ORDER BY �μ���ȣ;

--ex
SELECT first_name, job_id, salary, department_id
FROM employees
WHERE (job_id, salary) in (SELECT job_id, Min(Salary)
                            From employees
                            GROUP BY job_id)
ORDER BY salary DESC;

