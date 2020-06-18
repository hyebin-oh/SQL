--외부 조인 (OUTER JOIN)

--LEFT OUTER JOIN
SELECT e.last_name 직원, e.department_id 부서번호,
    d.department_name 부서명
FROM employees e
LEFT OUTER JOIN departments d
    ON e.department_id = d.department_id;
    
--RIGHT OUTER JOIN
SELECT e.last_name 직원, e.department_id 부서번호,
    d.department_name 부서명
FROM employees e
RIGHT OUTER JOIN departments d
    ON e.department_id = d.department_id;
    
--FULL OUTER JOIN
SELECT e.last_name 직원, e.department_id 부서번호,
    d.department_name 부서명
FROM employees e
FULL OUTER JOIN departments d
    ON e.department_id = d.department_id;   
    
--EX
SELECT c.country_name 국가, c.country_id 국가번호,
    l.location_id 지역번호, l.city 도시
FROM countries c
LEFT OUTER JOIN locations l
    ON c.country_id = l.country_id
ORDER BY 지역번호 DESC;

--cross join
SELECT c.country_name 국가, r.region_name 지역이름
FROM countries c
CROSS JOIN regions r;

--리뷰 예제
--1
SELECT d.department_name 부서명, d.manager_id 매니저번호,
    e.last_name ||' '||e.first_name "매니저이름(직원이름)",
    e.phone_number 전화번호
FROM departments d
JOIN employees e
    ON d.department_id = e.employee_id;
    
--2
SELECT e.employee_id 직원번호, e.hire_date 고용일자,
    j.job_id 직종, j.job_title 직책
FROM employees e
JOIN jobs j
    on e.job_id = j.job_id;

--3
SELECT To_CHAR(e.hire_date,'YYYY') 입사년도,
    ROUND(AVG(e.salary)) 평균급여
FROM employees e
JOIN jobs j
    on e.job_id = j.job_id
WHERE j.job_title = 'Sales Manager'
GROUP BY To_CHAR(e.hire_date,'YYYY')
ORDER BY 입사년도;

--4(연결되지 않은 두 테이블을 각각 연결된 테이블과 2번 조인)
SELECT l.city, ROUND(AVG(e.salary)), count(*)
FROM departments d
JOIN employees e on e.department_id = d.department_id 
JOIN locations l on l.location_id = d.location_id
group by l.city
having count(*) < 10
ORDER BY 2;

--5(자체조인)
SELECT e.employee_id, e.last_name, e.salary,
    m.last_name, m.salary
FROM employees e
JOIN employees m 
    on e.manager_id = m.employee_id
WHERE e.salary > m.salary;

