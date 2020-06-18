--Q1
SELECT empno, ename, sal
FROM emp
WHERE deptno=10;

--Q2
SELECT ename, hiredate, deptno
FROM emp
WHERE empno=7369;

--Q3
SELECT *
FROM emp
WHERE ename='ALLEN';

--Q4
SELECT ename, deptno, sal
FROM emp
WHERE hiredate ='81/02/20';

--Q5
SELECT *
FROM emp
WHERE job <>'MANAGER';

--Q6
SELECT *
FROM emp
WHERE hiredate >= '81/04/02';

--Q7
SELECT ename, sal, deptno
FROM emp
WHERE sal>=800;

--Q8
SELECT
    *
FROM emp
WHERE deptno>=20;

--Q9
SELECT *
FROM emp
WHERE ename>'L';

--Q10
SELECT
    *
FROM emp
WHERE hiredate < '81/12/09';

--Q11
SELECT empno, ename
FROM emp
WHERE empno <=7698;

--Q12
SELECT ename,sal,deptno
FROM emp
WHERE hiredate>='81/04/02' AND hiredate<='82/12/09';

--Q13
SELECT ename,job,sal
FROM emp
WHERE sal > 1600 AND SAL < 3000;

--Q14
SELECT
    *
FROM emp
WHERE empno NOT BETWEEN 7654 AND 7782;

--Q15
SELECT
    *
FROM emp
WHERE ename BETWEEN 'B' AND 'J';

--Q16
SELECT
    *
FROM emp
WHERE hiredate NOT BETWEEN '81/1/1' AND '81/12/31';

--Q17
SELECT
    *
FROM emp
WHERE job='MANAGER' OR job='SALESMAN';

--Q18
SELECT ename, empno, deptno
FROM emp
WHERE deptno NOT IN ( 20,30);

--Q19
SELECT empno, ename, hiredate, deptno
FROM emp
WHERE ename LIKE 'S%';

--Q20
SELECT
    *
FROM emp
WHERE hiredate BETWEEN '81/01/01' AND '81/12/31';

--Q21
SELECT
    *
FROM emp
WHERE ename LIKE '%S%';

--Q22
SELECT
    *
FROM emp
WHERE ename LIKE 'M____N';

--Q23
SELECT
    *
FROM emp
WHERE ename LIKE '_A%';

--Q24
SELECT
    *
FROM emp
WHERE comm IS NULL;

--Q25
SELECT
    *
FROM emp
WHERE comm IS NOT NULL;

--Q26
SELECT ename, deptno, sal
FROM emp
WHERE deptno=30 AND sal>=1500;

--Q27
SELECT empno,ename,deptno
FROM emp
WHERE ename LIKE 'K%' OR deptno=30;

--Q28
SELECT
    *
FROM emp
WHERE sal >= 1500 AND deptno=30 AND job='MANAGER';

--Q29
SELECT
    *
FROM emp
WHERE deptno=30
ORDER BY empno;

--Q30
SELECT
    *
FROM emp
ORDER BY sal DESC;