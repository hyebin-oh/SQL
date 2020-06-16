--NULL 관련 함수
--NVL : NULL 값을 다른 값으로 바꿀 때 사용
SELECT last_name, manager_id, NVL(manager_id,0) 매니저
FROM employees
WHERE last_name ='King';

--NVL2( ex, ex1, ex2) 
--ex값이 NULL값이 아니면 ex1, NULL값이면 ex2
SELECT last_name, manager_id, NVL2(manager_id,1,0) 매니저
FROM employees
WHERE last_name ='King';

--NULLIF(ex1, ex2): ex1과 ex2값이 동일하면 NULL
-- 동일하지 않으면 ex1으로 출력
SELECT NULLIF(1,1), NULLIF(1,2)
FROM DUAL;

--COALESCE(ex1, ex2, ex3, ...)
--ex1이 넓값이면 ex2 반환, ex2도 널값이면 ex3 반환 ....
SELECT last_name 이름, salary 월급,
    commission_pct 커미션pct,
    COALESCE((salary+(commission_pct*salary)), salary+2000) 월급인상
FROM EMPLOYEES
order by 3; 

--ex1
SELECT last_name 이름, salary 월급,
    NVL(commission_pct,0) 커미션,
    COALESCE(salary*12,(salary*12*NVL(commission_pct,0))) 연봉
FROM employees
ORDER BY 연봉 DESC;

--ex2
SELECT last_name 이름, salary 월급,
    NVL(commission_pct,0) 커미션,
    COALESCE(salary*12,(salary*12*NVL(commission_pct,0))) 연봉,
    NVL2(commission_pct,'SAL+COMM','SAL') 연봉계산
FROM employees
ORDER BY 연봉 DESC;

--ex3
SELECT first_name, LENGTH(first_name) 글자수1,
    last_name, length(last_name) 글자수2,
    NULLIF(LENGTH(first_name),length(last_name)) 결과    
FROM employees;

--DECODE 함수
SELECT last_name 이름, job_id,  salary,
    DECODE(job_id, 'IT_PROG',  salary*1.10,
                   'ST_CLERK', salary*1.15,
                   'SA_REP',   salary * 1.20,
                               salary) 수정월급 
FROM employees;

--ex
SELECT last_name 이름, job_id 직무, salary 월급,
    DECODE(TRUNC(salary/2000), 1, '0',
                               2, '0.09',
                               3, '0.2',
                               4, '0.3',
                               5, '0.4',
                               6, '0.42',
                               7, '0.44',
                                  '0.45') 세율
FROM employees;

--ex
SELECT employee_id, first_name, last_name,
        CASE WHEN salary>=9000 THEN '상위급여'
             WHEN salary>=6000 THEN '중위급여'
             ELSE                   '하위급여'
        END "급여등급" 
FROM employees
WHERE job_id = 'IT_PROG';