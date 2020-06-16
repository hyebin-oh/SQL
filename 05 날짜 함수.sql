--��¥�� �Լ�
SELECT first_name, hire_date -- ��¥���� ������
FROM employees;

--sysdate ���� ��¥�� �ð�
SELECT SYSDATE 
FROM DUAL;

--��¥+���� => ��¥
SELECT SYSDATE, SYSDATE + 3, SYSDATE -3
FROM DUAL;

--��¥ - ��¥ = �� �ϼ�
SELECT employee_id, SYSDATE, hire_date,
    SYSDATE - hire_date, ROUND(sysdate - hire_date)
FROM employees;

--�ð����
SELECT sysdate + 5/24 --�ð� 1(�Ϸ�), 24�� 24�ð� -> 5/24�� 5�ð�
FROM DUAL;

--months_between : ���� ���
SELECT employee_id, first_name, 
    Round(MONTHS_BETWEEN(SYSDATE,hire_date)),
    Round((sysdate - hire_date)/30)
FROM employees;

--add_months: ���� ����
SELECT employee_id, first_name, hire_date,
    ADD_MONTHS(hire_date,4) -- 4�� ���ϱ�
FROM employees;

--next_day(��¥, ������ ���� ����)
SELECT sysdate, NEXT_DAY(SYSDATE, 'ȭ����')
FROM DUAL;

--last_day(��¥) �� ���� ������ ��
SELECT LAST_DAY(SYSDATE)
FROM DUAL;

--��¥�� �ݿø�
SELECT employee_id, hire_date ,
    round(hire_date,'MONTH') ��, --������ �ݿø� 1��
    round(hire_date,'YEAR')  �� --������ �ݿø� 1�� 1��
FROM employees
WHERE MONTHS_BETWEEN(sysdate, hire_date)<150;

--ex1
SELECT sysdate, hire_date,
    Round(MONTHS_BETWEEN(SYSDATE,hire_date))
FROM employees
WHERE department_id = 100;

--ex2
SELECT hire_date, add_months(hire_date,3), add_months(hire_date,-3)
FROM employees
WHERE employee_id BETWEEN 100 and 106;



