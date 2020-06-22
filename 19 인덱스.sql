-- �ε��� Ȯ���ϱ�
SELECT
    TABLE_NAME ���̺��,
    INDEX_NAME �ε����̸�,
    COLUMN_NAME �÷��̸�
FROM ALL_IND_COLUMNS --����Ŭ���� �ڵ� ������
WHERE TABLE_NAME = 'DEPARTMENTS'; --���̺� �̸��� �빮�ڷ�

DROP TABLE members;
-- �ǽ����� ���̺� �����
CREATE TABLE members(
    member_id NUMBER,
    first_name VARCHAR2(100) NOT NULL,
    last_name VARCHAR2(100) NOT NULL,
    gender CHAR(1) NOT NULL, 
    dob DATE NOT NULL,
    email VARCHAR2(255) NOT NULL,
    PRIMARY KEY(member_id)
);

-- �ε��� Ȯ���ϱ�
SELECT
    TABLE_NAME ���̺��,
    INDEX_NAME �ε����̸�,
    COLUMN_NAME �÷��̸�
FROM ALL_IND_COLUMNS --����Ŭ���� �ڵ� ������
WHERE TABLE_NAME = 'MEMBERS'; --���̺� �̸��� �빮�ڷ�

SELECT * FROM members
WHERE last_name = 'Harse'; --���̺� ��ü �˻�

EXPLAIN PLAN FOR -- ���� ������ select ���� �����Ͽ� ���� �ۼ�
SELECT * FROM members
WHERE last_name = 'Harse';

select plan_table_output --���� ���
from table (DBMS_XPLAN.DISPLAY());

-- �ε��� �����
CREATE INDEX members_last_name_i
ON members(last_name);

--�ε��� �����ϱ�
drop index members_last_name_i;

SELECT * FROM members
WHERE first_name LIKE 'M%' and last_name LIKE 'A%';

-- ��Ƽ �ε��� �����
CREATE INDEX name_i
ON members(first_name, last_name);

-- ������
EXPLAIN PLAN FOR -- ���� ������ select ���� �����Ͽ� ���� �ۼ�
SELECT * FROM members
WHERE first_name LIKE 'M%' and last_name LIKE 'A%';

select plan_table_output
from table (DBMS_XPLAN.DISPLAY());

--�ε��� �����ϱ�
drop index name_i;
