--DELETE  �������� ����

-- 71������ 75�� �μ���ȣ ����
DELETE FROM departments
WHERE department_id between 71 and 75;
commit;

DELETE FROM departments
WHERE department_id =5;
commit;

--���� ���̺� ID 1,2 ����
DELETE FROM employees
WHERE employee_id in(1,2);
commit;

--���̺� ��ü�� ���� --rollback ����
DELETE FROM copy_departments;
ROLLBACK;

--TRUNCATE TABLE : ��ü �����ε� ROLLBACK�� �Ƶ�
TRUNCATE TABLE copy_departments;
ROLLBACK;

--DROP ���̺� : ���̺� ����
DROP TABLE copy_departments;
DROP TABLE copy_dept;
DROP TABLE xx_emp;

--���̺� ����Ʈ
select * from copy_emp
where employee_id = 108; -- salary 12008

UPDATE copy_emp
SET salary = salary +10
WHERE employee_id=108;
-- salary ���� 12018
-- ���̺�����Ʈ A�����
SAVEPOINT A;

UPDATE copy_emp
SET salary = salary + 20
WHERE employee_id=108;
-- salary ���� 12038

--SAVEPOINT�� ROLLBACK
ROLLBACK TO SAVEPOINT A;
-- SALARY ���� 12018
--�ѹ�
ROLLBACK;

