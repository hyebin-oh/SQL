--테이블 만들기
CREATE TABLE ex_date( --테이블 이름
    ex_id       NUMBER(2), --열의 이름, 데이터타입
    start_date  DATE    DEFAULT sysdate
    --디폴트는 입력안될 시 디폴트 뒤의 값으로
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

--테이블 삭제하기 DROP TABLE
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

