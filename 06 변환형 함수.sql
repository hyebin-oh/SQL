--��ȯ�� �Լ�

--TO_CHAR
--���ڸ� ���ڷ� ��ȯ
--�޸�(,)
SELECT to_char(12345678, '999,999,999') �޸�
FROM dual;

--�Ҽ���(.)
SELECT to_char(123.45678, '999,999,999.99') �Ҽ���
FROM dual;

--$ǥ��
SELECT to_char(12345678, '$999,999,999') �޷�ǥ��
FROM dual;

--Lǥ��
SELECT to_char(12345678, 'L999,999,999') ������ȭ
FROM dual;

--���ʿ� 0�� ����
SELECT to_char(123, '09999') ����ǥ�� -- ���� ������ 0�� ǥ��
FROM dual;

--��¥�� ���ڷ� ��ȯ
--��,��,��,��,��,��
SELECT to_char(sysdate, 'YYYY/MM/DD HH24:MI:SS') ���� ��¥
FROM dual;

--365�� �� ������ ����?
SELECT to_char(sysdate, 'DDD') ��¥
FROM dual;

--������ ��?
SELECT to_char(sysdate, 'MONTH') ���
FROM dual;

--ex1
SELECT employee_id, TO_CHAR(hire_date, 'YY/DD') �Ի��
FROM employees
WHERE department_id =100;

--ex2
SELECT last_name �̸�, TO_CHAR(salary, '$999,999,999.99') ����
FROM employees
WHERE salary > 1000
order by salary desc;

-- ���ڸ� ��¥�� TO_DATE
SELECT TO_DATE('2011-01-01', 'YYYY-MM-DD')
FROM DUAL;

-- ���ڸ� ���ڷ� TO_NUMBER
SELECT to_number('0123123') + 100
FROM DUAL;


