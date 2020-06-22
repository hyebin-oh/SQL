-- �ܼ��� view ����� EMP_V1
-- �ϳ��� �������̺� ���, �Լ��� �׷� ��� ����, DML ��밡��

DROP VIEW EMP_V1; -- �̸� �� ���� ���

--employees ���̺��� �ʿ��� ������ ��� ��� ����
CREATE VIEW EMP_V1
AS
SELECT employee_id, last_name, email, hire_date, job_id
FROM employees;

-- ���̺�ó�� select�� ���
select * from emp_v1;

desc emp_v1;

-- ���̺�ó�� dml ��� ����(��� ������ ���̺� => ���� ���̺� �Էµ�)
INSERT INTO emp_v1(employee_id, last_name, email, hire_date, job_id)
VALUES (333, 'David', 'DAVID', SYSDATE, 'IT_PROG');
-- �信 �Էµ� ������ Ȯ��
SELECT * FROM emp_v1;
SELECT * FROM employees;
desc employees;
-- ����
DELETE FROM emp_v1
WHERE employee_id =333;
commit;

-- �ι�° �� �����
CREATE view emp_v2
AS
SELECT employee_id ������ȣ, last_name �̸�, email, hire_date, job_id
FROM employees;

SELECT * FROM emp_v2;

-- ����° �� �����
CREATE view emp_v3(������ȣ, �̸�, �̸���, �������, ����)
AS
SELECT employee_id , last_name , email, hire_date, job_id
FROM employees;

SELECT * FROM emp_v1;
SELECT * FROM emp_v2;
SELECT * FROM emp_v3;
SELECT * FROM employees;

--DML ��� 3������
INSERT INTO emp_v3(������ȣ, �̸�, �̸���, �������, ����)
VALUES (334, 'LaLa', 'LALA', SYSDATE, 'IT_PROG');


-- ������ �� �����
-- �׷��Լ��� ����ϴ� ��� DML ��� �Ұ�
-- or replace�� ����Ͽ� ����
CREATE or replace VIEW �μ���_����_����
AS 
SELECT department_id �μ���ȣ, count(employee_id) ������, 
    max(salary) �ְ�޿�, min(salary) �����޿�,
    round(avg(salary)) ��ձ޿�
FROM employees
GROUP BY department_id
ORDER BY �μ���ȣ;

SELECT * FROM �μ���_����_����;

-- �б� ���� ��(�ɼ� with read only)
CREATE OR REPLACE VIEW emp_v_read
AS
SELECT employee_id, last_name, email, hire_date, job_id
FROM employees
WHERE department_id = 90
WITH READ ONLY; --�б� ����

SELECT * FROM emp_v_read;

-- DML ��� �Ұ�
DELETE FROM emp_v_read; -- ��� �� ���� -> �б��������� �Ұ���

-- üũ �ɼ� ��
CREATE OR REPLACE VIEW emp_v_check
AS 
SELECT employee_id, last_name, email, hire_date, job_id, department_id
FROM employees
WHERE department_id = 90
WITH CHECK OPTION; --where���� ���ǿ����� ���� �� �Է� ����

select * FROM emp_v_check;

--90�� �μ��� ���� dml ����
INSERT INTO emp_v_check (employee_id, last_name, email, hire_date, job_id, department_id)
values (444,'�˸�', 'ALI', SYSDATE, 'IT_PROG', 90);

