--���̺� �����
CREATE TABLE ex_date( --���̺� �̸�
    ex_id       NUMBER(2), --���� �̸�, ������Ÿ��
    start_date  DATE    DEFAULT sysdate
    --����Ʈ�� �Է¾ȵ� �� ����Ʈ ���� ������
);
INSERT INTO ex_date(ex_id)
VALUES (1);
INSERT INTO ex_date(ex_id)
VALUES (2);
INSERT INTO ex_date(ex_id)
VALUES (3);
commit;
SELECT * from ex_date;
DESC ex_date;

--���̺� �����ϱ� DROP TABLE
DROP TABLE  comp;
DROP TABLE copy_emp;

--ex1
CREATE TABLE sample_product(
    product_id   NUMBER,
    product_name VARCHAR2(20),
    menu_date    Date
);

--ex2
DROP TABLE sample_product;
DESC sample_product;

