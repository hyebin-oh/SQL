-- 한줄의 주석, 단축키 CTRL+/
/*
여러줄 주석
을 다는 방법
*/
-- 1.테이블의 모든 행과 열을 읽어오기 *
SELECT * 
FROM departments;

-- 2.특정 열만 읽어오기
SELECT department_id, department_name 
FROM departments;

-- 3.산술연산자 사용(+,-,*,/)
SELECT employee_id, first_name, salary, salary+100, salary+(salary*0.1)
FROM employees;

-- 4.널(null)이란?
-- 널은 입력되지 않은, 사용가능하지 않은, 알수없는 값
-- 널 값은 제로(0) 또는 공백("")과는 다르다
SELECT last_name, job_id, salary, commission_pct
FROM employees;

SELECT last_name, job_id, salary, 
commission_pct, commission_pct+10
FROM employees;

-- 5.중복된 값 제거 : distinct
SELECT DISTINCT job_id
FROM employees;

--ex1
SELECT
employee_id, first_name, last_name
FROM employees;

--ex2
SELECT
first_name, salary, salary*1.1 AS 뉴셀러리
FROM employees;

--ex3
SELECT
employee_id 사원번호, first_name 이름, last_name 성
FROM employees;

--연결연산자(||)
SELECT last_name ||' is a '|| job_id as "직업 정보"
FROM employees;

--ex4
SELECT employee_id, first_name||' '||last_name,
email||'@company.com'
From employees;

SELECT employee_id, first_name||' '||last_name
FROM employees;


