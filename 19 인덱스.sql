-- 인덱스 확인하기
SELECT
    TABLE_NAME 테이블명,
    INDEX_NAME 인덱스이름,
    COLUMN_NAME 컬럼이름
FROM ALL_IND_COLUMNS --오라클에서 자동 생성됨
WHERE TABLE_NAME = 'DEPARTMENTS'; --테이블 이름을 대문자로

DROP TABLE members;
-- 실습으로 테이블 만들기
CREATE TABLE members(
    member_id NUMBER,
    first_name VARCHAR2(100) NOT NULL,
    last_name VARCHAR2(100) NOT NULL,
    gender CHAR(1) NOT NULL, 
    dob DATE NOT NULL,
    email VARCHAR2(255) NOT NULL,
    PRIMARY KEY(member_id)
);

-- 인덱스 확인하기
SELECT
    TABLE_NAME 테이블명,
    INDEX_NAME 인덱스이름,
    COLUMN_NAME 컬럼이름
FROM ALL_IND_COLUMNS --오라클에서 자동 생성됨
WHERE TABLE_NAME = 'MEMBERS'; --테이블 이름을 대문자로

SELECT * FROM members
WHERE last_name = 'Harse'; --테이블 전체 검색

EXPLAIN PLAN FOR -- 다음 나오는 select 문을 실행하여 보고서 작성
SELECT * FROM members
WHERE last_name = 'Harse';

select plan_table_output --설명문 출력
from table (DBMS_XPLAN.DISPLAY());

-- 인덱스 만들기
CREATE INDEX members_last_name_i
ON members(last_name);

--인덱스 삭제하기
drop index members_last_name_i;

SELECT * FROM members
WHERE first_name LIKE 'M%' and last_name LIKE 'A%';

-- 멀티 인덱스 만들기
CREATE INDEX name_i
ON members(first_name, last_name);

-- 성능평가
EXPLAIN PLAN FOR -- 다음 나오는 select 문을 실행하여 보고서 작성
SELECT * FROM members
WHERE first_name LIKE 'M%' and last_name LIKE 'A%';

select plan_table_output
from table (DBMS_XPLAN.DISPLAY());

--인덱스 삭제하기
drop index name_i;
