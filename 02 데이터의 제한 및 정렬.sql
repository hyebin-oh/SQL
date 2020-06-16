-- 1.테이블의 모든 데이터 가져오기
SELECT * FROM employees;

-- 2.Where 절에 가져올 조건에 맞는 행을 선택한다. 
--  위치는 From 절 다음에 위치
SELECT * 
FROM employees 
WHERE department_id = 90; --90번 부서만

SELECT * 
FROM employees 
WHERE salary = 24000; --월급이 24000인 직원
/*
where절을 사용할 때 주의점
문자(String)과 날짜(Date) 값은 항상 따옴표(*)로 표시
문자값은 대소문자를 구분한다.(Case-Sensitive)
날짜값은 날짜포맷에 벗어나지 않도록 (Format-Sensitive)
오라클의 날짜포맷은 RR/MM/DD(RR은 2자리 년도)
*/

--3. Where+문자열
SELECT employee_id, first_name, last_name, job_id
FROM employees
WHERE first_name = 'Steven';

--4. where+날짜
SELECT SYSDATE FROM DUAL; --dual은 샘플테이블, shsdate는 현재 날짜 시간

SELECT *
FROM employees
WHERE hire_date = '03/06/17'; --년도/월/날짜

--5. 비교 연산자
SELECT *
FROM employees
WHERE salary >= 10000; --숫자비교

SELECT *
FROM employees
WHERE hire_date = '03/06/17'; --날짜비교

SELECT *
FROM employees
Where first_name > 'King'; --문자비교(알파벳순)

--ex1
SELECT
    *
FROM employees
WHERE employee_id =100;

--ex2
SELECT
    *
FROM employees
WHERE first_name = 'David';

--ex3
SELECT
    *
FROM employees
WHERE employee_id <= 105;

--ex4
SELECT
    *
FROM job_history
WHERE start_date >= '06/03/03';

--ex5
SELECT
    *
FROM departments
WHERE location_id <> 1700;
--WHERE location_id != 1700;

-- 6. AND OR 
SELECT *
FROM employees
Where department_id = 60 or 
        (department_id = 80 and salary > 10000);
        
SELECT *
FROM employees
Where (department_id = 60 or 
        department_id = 80) and salary > 10000;
    
SELECT *
FROM employees
WHERE hire_date > '08/04/04' or salary > 13000 and job_id = 'AD_VP';

SELECT *
FROM employees
WHERE NOT (hire_date > '04/01/01' or salary > 5000);
-- (hire_date <= '04/0101' And salary<=5000);

--ex1
SELECT *
FROM employees
Where salary > 4000 and job_id = 'IT_PROG';

--ex2
SELECT *
From employees
WHERE salary>4000 and (job_id ='IT_PROG' or job_id ='FI_ACCOUNT');

-- In 연산자
SELECT *
FROM employees
WHERE salary = 4000 or salary = 3000 or salary =2700;

SELECT *
FROM employees
WHERE salary IN (4000,3000,2700);

--ex1
SELECT
    *
FROM employees
WHERE salary in (10000,17000,24000);

--ex2
SELECT
    *
FROM employees
WHERE department_id Not in (30,50,80,100,110);

-- Between 연산자
SELECT *
FROM employees
WHERE salary >= 9000 AND salary <= 10000;

SELECT *
FROM employees
WHERE salary BETWEEN 9000 and 10000;

--ex1
SELECT *
FROM employees
WHERE salary BETWEEN 10000 AND 20000;

--ex2
SELECT *
FROM employees
WHERE hire_date BETWEEN '04/01/01' AND '04/12/30';

--ex3
SELECT *
FROM employees
WHERE salary Not BETWEEN 7000 AND 17000;

/*
Like 연산자는 _와 %를 사용
%는  문자가 0개 또는 1개 이상
_는 문자가 1개
*/

SELECT *
From employees
where last_name like 'B%'; --대문자 B로 시작하는 이름

SELECT *
From employees
where last_name like '%b%'; -- 이름에 b가 있으면 출력

SELECT *
From employees
where first_name like '_d%'; -- 첫글자 뒤에 d가 나오는 사람 

SELECT *
From employees
where first_name like '__s%'; -- 세번째 문자가 s일때

--ex1
SELECT *
FROM employees
where job_id like '%AD%';

--ex2
SELECT *
FROM employees
WHERE job_id like '%AD___';

--ex3
SELECT *
FROM employees
WHERE phone_number like '%1234';

--ex4
SELECT *
FROM employees
WHERE phone_number not like '%3%' 
        AND phone_number like '%9'; 

--ex5
SELECT *
FROM employees
WHERE job_id like '%MGR%' 
        OR job_id like '%ASST%';


-- is null / is not null
SELECT *
FROM employees
WHERE commission_pct IS NULL;

SELECT *
FROM employees
WHERE commission_pct IS NOT NULL;

--ex
SELECT *
FROM employees
WHERE manager_id IS NULL;

--ORDER BY 정렬 순서
SELECT *
FROM employees
ORDER BY salary; --ASC 생략, 기본이 오름차순

SELECT *
FROM employees
ORDER BY salary DESC; -- 내림차순(큰것이 제일 위에)

SELECT *
FROM employees
ORDER BY last_name; -- 문자는 알파벳 순으로 정렬

--멀티 정렬
SELECT employee_id, last_name, department_id
FROM employees
ORDER BY department_id, employee_id;
--부서번호로 정렬 후 사원번호로 정렬

--열을 생성하여 정렬
SELECT employee_id, last_name, salary*12 연봉
FROM employees
ORDER BY 연봉 DESC;

--ORDER BY는 Where 절 다음에 위치
SELECT employee_id, last_name, salary*12 연봉
FROM employees
WHERE department_id = 90
ORDER BY 연봉 DESC;

--ex1
SELECT employee_id, first_name, last_name
FROM employees
ORDER BY employee_id DESC;

--ex2
SELECT *
FROM employees
WHERE job_id like '%CLERK%'
ORDER BY salary DESC;

--ex3
SELECT employee_id 직원번호, first_name 직원이름, department_id 부서번호, salary 월급
FROM employees
WHERE employee_id BETWEEN 120 and 150
ORDER BY department_id DESC, salary DESC;





