 -- 숫자형 함수
 
 --Round : 반올림
 SELECT ROUND(15.193,1) 소수첫째자리,
        ROUND(15.193,0) 정수,
        ROUND(15.193) 디폴트,-- 정수와 동일
        ROUND(15.193,-1) "10의 자리",
        ROUND(15.193,-2) "100의 자리"
FROM DUAL;

--TRUNC : 버림
SELECT TRUNC(15.79,1)소수첫째자리,
        TRUNC(15.79,0)정수,
        TRUNC(15.79)디폴트,
        TRUNC(15.79,-1) "10의 자리"
FROM DUAL;

--Mod : 
SELECT employee_id 짝수번, last_name
FROM employees
WHERE MOD(employee_id,2) = 0
ORDER BY 1; -- 1번째 열로 정렬(오름차순)

--ex
SELECT salary,
        Round(salary/30,0) 정수,
        Round(salary/30,1) 소수1,
        Round(salary/30,-1) "10의자리"
FROM employees;