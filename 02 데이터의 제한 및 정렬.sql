-- 1.���̺��� ��� ������ ��������
SELECT * FROM employees;

-- 2.Where ���� ������ ���ǿ� �´� ���� �����Ѵ�. 
--  ��ġ�� From �� ������ ��ġ
SELECT * 
FROM employees 
WHERE department_id = 90; --90�� �μ���

SELECT * 
FROM employees 
WHERE salary = 24000; --������ 24000�� ����
/*
where���� ����� �� ������
����(String)�� ��¥(Date) ���� �׻� ����ǥ(*)�� ǥ��
���ڰ��� ��ҹ��ڸ� �����Ѵ�.(Case-Sensitive)
��¥���� ��¥���˿� ����� �ʵ��� (Format-Sensitive)
����Ŭ�� ��¥������ RR/MM/DD(RR�� 2�ڸ� �⵵)
*/

--3. Where+���ڿ�
SELECT employee_id, first_name, last_name, job_id
FROM employees
WHERE first_name = 'Steven';

--4. where+��¥
SELECT SYSDATE FROM DUAL; --dual�� �������̺�, shsdate�� ���� ��¥ �ð�

SELECT *
FROM employees
WHERE hire_date = '03/06/17'; --�⵵/��/��¥

--5. �� ������
SELECT *
FROM employees
WHERE salary >= 10000; --���ں�

SELECT *
FROM employees
WHERE hire_date = '03/06/17'; --��¥��

SELECT *
FROM employees
Where first_name > 'King'; --���ں�(���ĺ���)

--ex1
SELECT
    *
FROM employees
WHERE employee_id =100;

--ex2
SELECT
    *
FROM employees
WHERE first_name = 'David';

--ex3
SELECT
    *
FROM employees
WHERE employee_id <= 105;

--ex4
SELECT
    *
FROM job_history
WHERE start_date >= '06/03/03';

--ex5
SELECT
    *
FROM departments
WHERE location_id <> 1700;
--WHERE location_id != 1700;

-- 6. AND OR 
SELECT *
FROM employees
Where department_id = 60 or 
        (department_id = 80 and salary > 10000);
        
SELECT *
FROM employees
Where (department_id = 60 or 
        department_id = 80) and salary > 10000;
    
SELECT *
FROM employees
WHERE hire_date > '08/04/04' or salary > 13000 and job_id = 'AD_VP';

SELECT *
FROM employees
WHERE NOT (hire_date > '04/01/01' or salary > 5000);
-- (hire_date <= '04/0101' And salary<=5000);

--ex1
SELECT *
FROM employees
Where salary > 4000 and job_id = 'IT_PROG';

--ex2
SELECT *
From employees
WHERE salary>4000 and (job_id ='IT_PROG' or job_id ='FI_ACCOUNT');

-- In ������
SELECT *
FROM employees
WHERE salary = 4000 or salary = 3000 or salary =2700;

SELECT *
FROM employees
WHERE salary IN (4000,3000,2700);

--ex1
SELECT
    *
FROM employees
WHERE salary in (10000,17000,24000);

--ex2
SELECT
    *
FROM employees
WHERE department_id Not in (30,50,80,100,110);

-- Between ������
SELECT *
FROM employees
WHERE salary >= 9000 AND salary <= 10000;

SELECT *
FROM employees
WHERE salary BETWEEN 9000 and 10000;

--ex1
SELECT *
FROM employees
WHERE salary BETWEEN 10000 AND 20000;

--ex2
SELECT *
FROM employees
WHERE hire_date BETWEEN '04/01/01' AND '04/12/30';

--ex3
SELECT *
FROM employees
WHERE salary Not BETWEEN 7000 AND 17000;

/*
Like �����ڴ� _�� %�� ���
%��  ���ڰ� 0�� �Ǵ� 1�� �̻�
_�� ���ڰ� 1��
*/

SELECT *
From employees
where last_name like 'B%'; --�빮�� B�� �����ϴ� �̸�

SELECT *
From employees
where last_name like '%b%'; -- �̸��� b�� ������ ���

SELECT *
From employees
where first_name like '_d%'; -- ù���� �ڿ� d�� ������ ��� 

SELECT *
From employees
where first_name like '__s%'; -- ����° ���ڰ� s�϶�

--ex1
SELECT *
FROM employees
where job_id like '%AD%';

--ex2
SELECT *
FROM employees
WHERE job_id like '%AD___';

--ex3
SELECT *
FROM employees
WHERE phone_number like '%1234';

--ex4
SELECT *
FROM employees
WHERE phone_number not like '%3%' 
        AND phone_number like '%9'; 

--ex5
SELECT *
FROM employees
WHERE job_id like '%MGR%' 
        OR job_id like '%ASST%';


-- is null / is not null
SELECT *
FROM employees
WHERE commission_pct IS NULL;

SELECT *
FROM employees
WHERE commission_pct IS NOT NULL;

--ex
SELECT *
FROM employees
WHERE manager_id IS NULL;

--ORDER BY ���� ����
SELECT *
FROM employees
ORDER BY salary; --ASC ����, �⺻�� ��������

SELECT *
FROM employees
ORDER BY salary DESC; -- ��������(ū���� ���� ����)

SELECT *
FROM employees
ORDER BY last_name; -- ���ڴ� ���ĺ� ������ ����

--��Ƽ ����
SELECT employee_id, last_name, department_id
FROM employees
ORDER BY department_id, employee_id;
--�μ���ȣ�� ���� �� �����ȣ�� ����

--���� �����Ͽ� ����
SELECT employee_id, last_name, salary*12 ����
FROM employees
ORDER BY ���� DESC;

--ORDER BY�� Where �� ������ ��ġ
SELECT employee_id, last_name, salary*12 ����
FROM employees
WHERE department_id = 90
ORDER BY ���� DESC;

--ex1
SELECT employee_id, first_name, last_name
FROM employees
ORDER BY employee_id DESC;

--ex2
SELECT *
FROM employees
WHERE job_id like '%CLERK%'
ORDER BY salary DESC;

--ex3
SELECT employee_id ������ȣ, first_name �����̸�, department_id �μ���ȣ, salary ����
FROM employees
WHERE employee_id BETWEEN 120 and 150
ORDER BY department_id DESC, salary DESC;





