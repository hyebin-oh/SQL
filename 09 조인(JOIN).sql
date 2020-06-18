--�ܺ� ���� (OUTER JOIN)

--LEFT OUTER JOIN
SELECT e.last_name ����, e.department_id �μ���ȣ,
    d.department_name �μ���
FROM employees e
LEFT OUTER JOIN departments d
    ON e.department_id = d.department_id;
    
--RIGHT OUTER JOIN
SELECT e.last_name ����, e.department_id �μ���ȣ,
    d.department_name �μ���
FROM employees e
RIGHT OUTER JOIN departments d
    ON e.department_id = d.department_id;
    
--FULL OUTER JOIN
SELECT e.last_name ����, e.department_id �μ���ȣ,
    d.department_name �μ���
FROM employees e
FULL OUTER JOIN departments d
    ON e.department_id = d.department_id;   
    
--EX
SELECT c.country_name ����, c.country_id ������ȣ,
    l.location_id ������ȣ, l.city ����
FROM countries c
LEFT OUTER JOIN locations l
    ON c.country_id = l.country_id
ORDER BY ������ȣ DESC;

--cross join
SELECT c.country_name ����, r.region_name �����̸�
FROM countries c
CROSS JOIN regions r;

--���� ����
--1
SELECT d.department_name �μ���, d.manager_id �Ŵ�����ȣ,
    e.last_name ||' '||e.first_name "�Ŵ����̸�(�����̸�)",
    e.phone_number ��ȭ��ȣ
FROM departments d
JOIN employees e
    ON d.department_id = e.employee_id;
    
--2
SELECT e.employee_id ������ȣ, e.hire_date �������,
    j.job_id ����, j.job_title ��å
FROM employees e
JOIN jobs j
    on e.job_id = j.job_id;

--3
SELECT To_CHAR(e.hire_date,'YYYY') �Ի�⵵,
    ROUND(AVG(e.salary)) ��ձ޿�
FROM employees e
JOIN jobs j
    on e.job_id = j.job_id
WHERE j.job_title = 'Sales Manager'
GROUP BY To_CHAR(e.hire_date,'YYYY')
ORDER BY �Ի�⵵;

--4(������� ���� �� ���̺��� ���� ����� ���̺�� 2�� ����)
SELECT l.city, ROUND(AVG(e.salary)), count(*)
FROM departments d
JOIN employees e on e.department_id = d.department_id 
JOIN locations l on l.location_id = d.location_id
group by l.city
having count(*) < 10
ORDER BY 2;

--5(��ü����)
SELECT e.employee_id, e.last_name, e.salary,
    m.last_name, m.salary
FROM employees e
JOIN employees m 
    on e.manager_id = m.employee_id
WHERE e.salary > m.salary;

