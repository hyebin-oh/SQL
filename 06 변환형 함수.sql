--변환형 함수

--TO_CHAR
--숫자를 문자로 변환
--콤마(,)
SELECT to_char(12345678, '999,999,999') 콤마
FROM dual;

--소수점(.)
SELECT to_char(123.45678, '999,999,999.99') 소수점
FROM dual;

--$표시
SELECT to_char(12345678, '$999,999,999') 달러표시
FROM dual;

--L표시
SELECT to_char(12345678, 'L999,999,999') 현지통화
FROM dual;

--왼쪽에 0을 삽입
SELECT to_char(123, '09999') 제로표시 -- 남는 공간에 0을 표시
FROM dual;

--날짜를 문자로 변환
--년,월,일,시,분,초
SELECT to_char(sysdate, 'YYYY/MM/DD HH24:MI:SS') 현재 날짜
FROM dual;

--365일 중 오늘이 몇일?
SELECT to_char(sysdate, 'DDD') 날짜
FROM dual;

--오늘의 월?
SELECT to_char(sysdate, 'MONTH') 몇월
FROM dual;

--ex1
SELECT employee_id, TO_CHAR(hire_date, 'YY/DD') 입사월
FROM employees
WHERE department_id =100;

--ex2
SELECT last_name 이름, TO_CHAR(salary, '$999,999,999.99') 월급
FROM employees
WHERE salary > 1000
order by salary desc;

-- 문자를 날짜로 TO_DATE
SELECT TO_DATE('2011-01-01', 'YYYY-MM-DD')
FROM DUAL;

-- 문자를 숫자로 TO_NUMBER
SELECT to_number('0123123') + 100
FROM DUAL;


