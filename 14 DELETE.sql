--DELETE  데이터의 삭제

-- 71번부터 75번 부서번호 삭제
DELETE FROM departments
WHERE department_id between 71 and 75;
commit;

DELETE FROM departments
WHERE department_id =5;
commit;

--직원 테이블 ID 1,2 삭제
DELETE FROM employees
WHERE employee_id in(1,2);
commit;

--테이블 전체를 삭제 --rollback 가능
DELETE FROM copy_departments;
ROLLBACK;

--TRUNCATE TABLE : 전체 삭제인데 ROLLBACK이 아됨
TRUNCATE TABLE copy_departments;
ROLLBACK;

--DROP 테이블 : 테이블 삭제
DROP TABLE copy_departments;
DROP TABLE copy_dept;
DROP TABLE xx_emp;

--세이브 포인트
select * from copy_emp
where employee_id = 108; -- salary 12008

UPDATE copy_emp
SET salary = salary +10
WHERE employee_id=108;
-- salary 값이 12018
-- 세이브포인트 A만들기
SAVEPOINT A;

UPDATE copy_emp
SET salary = salary + 20
WHERE employee_id=108;
-- salary 값이 12038

--SAVEPOINT로 ROLLBACK
ROLLBACK TO SAVEPOINT A;
-- SALARY 값이 12018
--롤백
ROLLBACK;

