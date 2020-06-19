-- UPDATE : 데이터 수정하기
/*
UPDATE 테이블
SET 컬럼=값[,컬럼=값,   ,]
[WHERE 조건];
*/

-- 업데이트 사용시 WHERE 절에 항상 기본키를 활용한다.
CREATE TABLE copy_emp
as
SELECT * FROM employees;

UPDATE copy_emp
SET salary = 24100
WHERE employee_id = 100;
commit;

--의도치않게 이름이 같은 사람들이 업데이트됨
UPDATE copy_emp
SET salary = 24100
WHERE first_name = 'Steven';
commit;

--WHERE 절을 안 썼을 때
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


