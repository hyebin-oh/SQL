-- UPDATE : ������ �����ϱ�
/*
UPDATE ���̺�
SET �÷�=��[,�÷�=��,   ,]
[WHERE ����];
*/

-- ������Ʈ ���� WHERE ���� �׻� �⺻Ű�� Ȱ���Ѵ�.
CREATE TABLE copy_emp
as
SELECT * FROM employees;

UPDATE copy_emp
SET salary = 24100
WHERE employee_id = 100;
commit;

--�ǵ�ġ�ʰ� �̸��� ���� ������� ������Ʈ��
UPDATE copy_emp
SET salary = 24100
WHERE first_name = 'Steven';
commit;

--WHERE ���� �� ���� ��
UPDATE copy_emp
SET phone_number='123-456-789';
ROLLBACK;

--ex1
update copy_departments
set manager_id = 100, location_id = 1800
where department_id = 74;

update copy_departments
set manager_id = 100, location_id = 1800
where department_id = 75;

commit;

--ex2
UPDATE copy_departments
set manager_id =100
WHERE department_id BETWEEN 150 and 200;


