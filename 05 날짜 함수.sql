--날짜형 함수
SELECT first_name, hire_date -- 날짜형식 데이터
FROM employees;

--sysdate 현재 날짜와 시간
SELECT SYSDATE 
FROM DUAL;

--날짜+숫자 => 날짜
SELECT SYSDATE, SYSDATE + 3, SYSDATE -3
FROM DUAL;

--날짜 - 날짜 = 총 일수
SELECT employee_id, SYSDATE, hire_date,
    SYSDATE - hire_date, ROUND(sysdate - hire_date)
FROM employees;

--시간계산
SELECT sysdate + 5/24 --시간 1(하루), 24는 24시간 -> 5/24는 5시간
FROM DUAL;

--months_between : 월을 계산
SELECT employee_id, first_name, 
    Round(MONTHS_BETWEEN(SYSDATE,hire_date)),
    Round((sysdate - hire_date)/30)
FROM employees;

--add_months: 달을 더함
SELECT employee_id, first_name, hire_date,
    ADD_MONTHS(hire_date,4) -- 4달 더하기
FROM employees;

--next_day(날짜, 다음번 나올 요일)
SELECT sysdate, NEXT_DAY(SYSDATE, '화요일')
FROM DUAL;

--last_day(날짜) 그 월의 마지막 날
SELECT LAST_DAY(SYSDATE)
FROM DUAL;

--날짜의 반올림
SELECT employee_id, hire_date ,
    round(hire_date,'MONTH') 월, --날에서 반올림 1일
    round(hire_date,'YEAR')  년 --월에서 반올림 1월 1일
FROM employees
WHERE MONTHS_BETWEEN(sysdate, hire_date)<150;

--ex1
SELECT sysdate, hire_date,
    Round(MONTHS_BETWEEN(SYSDATE,hire_date))
FROM employees
WHERE department_id = 100;

--ex2
SELECT hire_date, add_months(hire_date,3), add_months(hire_date,-3)
FROM employees
WHERE employee_id BETWEEN 100 and 106;



