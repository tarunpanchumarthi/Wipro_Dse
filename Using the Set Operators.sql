1.Create a matrix query to display the job, the salary for that job based on department number, and the total salary for that job, for departments 10, 20, and 30, giving each column an appropriate heading.

SQL> SELECT job_id AS "JOB",
  2         SUM(CASE WHEN department_id = 10 THEN salary ELSE 0 END) AS "Dept 10",
  3         SUM(CASE WHEN department_id = 20 THEN salary ELSE 0 END) AS "Dept 20",
  4         SUM(CASE WHEN department_id = 30 THEN salary ELSE 0 END) AS "Dept 30",
  5         SUM(salary) AS "Total"
  6  FROM employees
  7  WHERE department_id IN (10, 20, 30)
  8  GROUP BY job_id
  9  ORDER BY job_id;

JOB           Dept 10    Dept 20    Dept 30      Total
---------- ---------- ---------- ---------- ----------
AD_ASST          4400          0          0       4400
MK_MAN              0      13000          0      13000
MK_REP              0       6000          0       6000
PU_CLERK            0          0      13900      13900
PU_MAN              0          0      11000      11000

2.Using set operator display the DEPTNO,SUM(SAL) for each dept,  JOB,SUM(SAL) for each Job and Total Salary.

SQL> SELECT TO_CHAR(department_id) AS "DEPTNO/JOB",
  2         SUM(salary) AS "TOTAL_SALARY"
  3  FROM employees
  4  GROUP BY department_id
  5
SQL> UNION ALL
SP2-0042: unknown command "UNION ALL" - rest of line ignored.
SQL>
SQL> SELECT job_id,
  2         SUM(salary)
  3  FROM employees
  4  GROUP BY job_id
  5
SQL> UNION ALL
SP2-0042: unknown command "UNION ALL" - rest of line ignored.
SQL>
SQL> SELECT 'TOTAL',
  2         SUM(salary)
  3  FROM employees;

'TOTA SUM(SALARY)
----- -----------
TOTAL      691416

SQL> select job_id,sum(salary) from employees group by job_id uninon all select 'total',sum(salary) from employees;
select job_id,sum(salary) from employees group by job_id uninon all select 'total',sum(salary) from employees
                                                         *
ERROR at line 1:
ORA-00933: SQL command not properly ended


SQL> select job_id,sum(salary) from employees group by job_id union all select 'total',sum(salary) from employees;

JOB_ID     SUM(SALARY)
---------- -----------
SH_CLERK         64300
AD_ASST           4400
MK_MAN           13000
MK_REP            6000
HR_REP            6500
PR_REP           10000
AC_MGR           12008
AC_ACCOUNT        8300
AD_PRES          24000
AD_VP            34000
IT_PROG          28800

JOB_ID     SUM(SALARY)
---------- -----------
FI_MGR           12008
FI_ACCOUNT       39600
PU_MAN           11000
PU_CLERK         13900
ST_MAN           36400
ST_CLERK         55700
SA_MAN           61000
SA_REP          250500
total           691416

20 rows selected.

SQL> ^ASP2-0042: unknown command "s" - rest of line ignored.
SQL>

3.Using Set Operator display the JOB and Deptno  in employees working in deptno 20,10,30 in that order.
SQL> select job_id,department_id from employees where department_id=20 UNION ALL select job_id,department_id from employees where department_id=30 UNION ALL select job_id,department_id from employees where department_id=30;

JOB_ID     DEPARTMENT_ID
---------- -------------
MK_MAN                20
MK_REP                20
PU_MAN                30
PU_CLERK              30
PU_CLERK              30
PU_CLERK              30
PU_CLERK              30
PU_CLERK              30
PU_MAN                30
PU_CLERK              30
PU_CLERK              30

JOB_ID     DEPARTMENT_ID
---------- -------------
PU_CLERK              30
PU_CLERK              30
PU_CLERK              30

14 rows selected.