1.Write a query for the HR department to produce the addresses of all the departments. Use the EMP and DEPT tables. Show the EMPNO, ENAME,SAL, DNAME and LOC in the output. Use a NATURAL JOIN to produce the results.


SQL> select employee_id,last_name,salary,department_name,location_id from employees natural join department;
select employee_id,last_name,salary,department_name,location_id from employees natural join department
                                                                                            *
ERROR at line 1:
ORA-00942: table or view does not exist


SQL> select employee_id,last_name,salary,department_name,location_id from employees natural join departments;

EMPLOYEE_ID LAST_NAME                     SALARY DEPARTMENT_NAME
----------- ------------------------- ---------- ------------------------------
LOCATION_ID
-----------
        202 Davis                           6000 Marketing
       1800

        206 Gietz                           8300 Accounting
       1700

        101 Yang                           17000 Executive
       1700


EMPLOYEE_ID LAST_NAME                     SALARY DEPARTMENT_NAME
----------- ------------------------- ---------- ------------------------------
LOCATION_ID
-----------
        102 Garcia                         17000 Executive
       1700

        104 Miller                          6000 IT
       1400

        105 Williams                        4800 IT
       1400


EMPLOYEE_ID LAST_NAME                     SALARY DEPARTMENT_NAME
----------- ------------------------- ---------- ------------------------------
LOCATION_ID
-----------
        106 Jackson                         4800 IT
       1400

        107 Nguyen                          4200 IT
       1400

        109 Faviet                          9000 Finance
       1700


EMPLOYEE_ID LAST_NAME                     SALARY DEPARTMENT_NAME
----------- ------------------------- ---------- ------------------------------
LOCATION_ID
-----------
        110 Chen                            8200 Finance
       1700

        111 Sciarra                         7700 Finance
       1700

        112 Urman                           7800 Finance
       1700


EMPLOYEE_ID LAST_NAME                     SALARY DEPARTMENT_NAME
----------- ------------------------- ---------- ------------------------------
LOCATION_ID
-----------
        113 Popp                            6900 Finance
       1700

        115 Khoo                            3100 Purchasing
       1700

        116 Baida                           2900 Purchasing
       1700


EMPLOYEE_ID LAST_NAME                     SALARY DEPARTMENT_NAME
----------- ------------------------- ---------- ------------------------------
LOCATION_ID
-----------
        117 Tobias                          2800 Purchasing
       1700

        118 Himuro                          2600 Purchasing
       1700

        119 Colmenares                      2500 Purchasing
       1700


EMPLOYEE_ID LAST_NAME                     SALARY DEPARTMENT_NAME
----------- ------------------------- ---------- ------------------------------
LOCATION_ID
-----------
        129 Bissot                          3300 Shipping
       1500

        130 Atkinson                        2800 Shipping
       1500

        131 Marlow                          2500 Shipping
       1500


EMPLOYEE_ID LAST_NAME                     SALARY DEPARTMENT_NAME
----------- ------------------------- ---------- ------------------------------
LOCATION_ID
-----------
        132 Olson                           2100 Shipping
       1500

        150 Tucker                         10000 Sales
       2500

        151 Bernstein                       9500 Sales
       2500


EMPLOYEE_ID LAST_NAME                     SALARY DEPARTMENT_NAME
----------- ------------------------- ---------- ------------------------------
LOCATION_ID
-----------
        152 Hall                            9000 Sales
       2500

        153 Olsen                           8000 Sales
       2500

        154 Cambrault                       7500 Sales
       2500


EMPLOYEE_ID LAST_NAME                     SALARY DEPARTMENT_NAME
----------- ------------------------- ---------- ------------------------------
LOCATION_ID
-----------
        155 Tuvault                         7000 Sales
       2500

        184 Sarchand                        4200 Shipping
       1500

        185 Bull                            4100 Shipping
       1500


EMPLOYEE_ID LAST_NAME                     SALARY DEPARTMENT_NAME
----------- ------------------------- ---------- ------------------------------
LOCATION_ID
-----------
        186 Dellinger                       3400 Shipping
       1500

        187 Cabrio                          3000 Shipping
       1500


32 rows selected.

2.The HR department needs a report of all employees. Write a query to display the JOB,MGR,SAL,COMM,DNAME of employees whose JOB is SALESMAN.


SQL> select job_id,manager_id,salary,commission_pct,department_name from employees natural join department where job_id='SA_REP';
select job_id,manager_id,salary,commission_pct,department_name from employees natural join department where job_id='SA_REP'
                                                                                           *
ERROR at line 1:
ORA-00942: table or view does not exist


SQL> select job_id,manager_id,salary,commission_pct,department_name from employees natural join departments where job_id='SA_REP';

JOB_ID     MANAGER_ID     SALARY COMMISSION_PCT DEPARTMENT_NAME
---------- ---------- ---------- -------------- ------------------------------
SA_REP            145      10000             .3 Sales
SA_REP            145       9500            .25 Sales
SA_REP            145       9000            .25 Sales
SA_REP            145       8000             .2 Sales
SA_REP            145       7500             .2 Sales
SA_REP            145       7000            .15 Sales

6 rows selected.

3.The HR department needs a report of employees in LOC  DALLAS. Display the ENAME, job, DEPTNO, and DNAME for all employees who work in DALLAS.


SQL> SELECT e.last_name,
  2         e.job_id,
  3         e.department_id,
  4         d.department_name
  5  FROM employees e
  6  JOIN departments d
  7    ON e.department_id = d.department_id
  8  JOIN locations l
  9    ON d.location_id = l.location_id
 10  WHERE UPPER(l.city) = 'DALLAS';

no rows selected

4.Create a report to display employees’ ename and employee number along with their manager’s name and manager number. Label the columns Employee, Emp#, Manager, and Mgr#, respectively.

SQL> select last_name as "employee",employee_id as "emp#",last_name as "manager",employee_id as "mgr#" from employees left outer join employees on manager_id=employee_id;
select last_name as "employee",employee_id as "emp#",last_name as "manager",employee_id as "mgr#" from employees left outer join employees on manager_id=employee_id
                                                                                                                                                         *
ERROR at line 1:
ORA-00918: column ambiguously defined


SQL> SELECT e.last_name AS "Employee",
  2         e.employee_id AS "Emp#",
  3         m.last_name AS "Manager",
  4         m.employee_id AS "Mgr#"
  5  FROM employees e
  6  LEFT OUTER JOIN employees m
  7  ON e.manager_id = m.employee_id;

Employee                        Emp# Manager                         Mgr#
------------------------- ---------- ------------------------- ----------
Ozer                             168 Cambrault                        148
Bloom                            169 Cambrault                        148
Fox                              170 Cambrault                        148
Smith                            171 Cambrault                        148
Bates                            172 Cambrault                        148
Kumar                            173 Cambrault                        148
Vishney                          162 Errazuriz                        147
Greene                           163 Errazuriz                        147
Marvins                          164 Errazuriz                        147
Lee                              165 Errazuriz                        147
Ande                             166 Errazuriz                        147

Employee                        Emp# Manager                         Mgr#
------------------------- ---------- ------------------------- ----------
Banda                            167 Errazuriz                        147
Bissot                           129 Fripp                            121
Atkinson                         130 Fripp                            121
Marlow                           131 Fripp                            121
Olson                            132 Fripp                            121
Sarchand                         184 Fripp                            121
Bull                             185 Fripp                            121
Dellinger                        186 Fripp                            121
Cabrio                           187 Fripp                            121
James                            103 Garcia                           102
Faviet                           109 Gruenberg                        108

Employee                        Emp# Manager                         Mgr#
------------------------- ---------- ------------------------- ----------
Chen                             110 Gruenberg                        108
Sciarra                          111 Gruenberg                        108
Urman                            112 Gruenberg                        108
Popp                             113 Gruenberg                        108
Gietz                            206 Higgins                          205
Miller                           104 James                            103
Williams                         105 James                            103
Jackson                          106 James                            103
Nguyen                           107 James                            103
Mallin                           133 Kaufling                         122
Rogers                           134 Kaufling                         122

Employee                        Emp# Manager                         Mgr#
------------------------- ---------- ------------------------- ----------
Gee                              135 Kaufling                         122
Philtanker                       136 Kaufling                         122
Chung                            188 Kaufling                         122
Dilly                            189 Kaufling                         122
Venzl                            190 Kaufling                         122
Perkins                          191 Kaufling                         122
Martinez                         201 King                             100
Yang                             101 King                             100
Garcia                           102 King                             100
Li                               114 King                             100
Weiss                            120 King                             100

Employee                        Emp# Manager                         Mgr#
------------------------- ---------- ------------------------- ----------
Fripp                            121 King                             100
Kaufling                         122 King                             100
Vollman                          123 King                             100
Mourgos                          124 King                             100
Singh                            145 King                             100
Partners                         146 King                             100
Errazuriz                        147 King                             100
Cambrault                        148 King                             100
Zlotkey                          149 King                             100
Khoo                             115 Li                               114
Baida                            116 Li                               114

Employee                        Emp# Manager                         Mgr#
------------------------- ---------- ------------------------- ----------
Tobias                           117 Li                               114
Himuro                           118 Li                               114
Colmenares                       119 Li                               114
Davis                            202 Martinez                         201
Grant                            199 Mourgos                          124
Rajs                             141 Mourgos                          124
Davies                           142 Mourgos                          124
Matos                            143 Mourgos                          124
Vargas                           144 Mourgos                          124
Walsh                            196 Mourgos                          124
Feeney                           197 Mourgos                          124

Employee                        Emp# Manager                         Mgr#
------------------------- ---------- ------------------------- ----------
OConnell                         198 Mourgos                          124
King                             156 Partners                         146
Sully                            157 Partners                         146
McEwen                           158 Partners                         146
Smith                            159 Partners                         146
Doran                            160 Partners                         146
Sewall                           161 Partners                         146
Tucker                           150 Singh                            145
Bernstein                        151 Singh                            145
Hall                             152 Singh                            145
Olsen                            153 Singh                            145

Employee                        Emp# Manager                         Mgr#
------------------------- ---------- ------------------------- ----------
Cambrault                        154 Singh                            145
Tuvault                          155 Singh                            145
Ladwig                           137 Vollman                          123
Stiles                           138 Vollman                          123
Seo                              139 Vollman                          123
Patel                            140 Vollman                          123
Bell                             192 Vollman                          123
Everett                          193 Vollman                          123
McLeod                           194 Vollman                          123
Jones                            195 Vollman                          123
Nayer                            125 Weiss                            120

Employee                        Emp# Manager                         Mgr#
------------------------- ---------- ------------------------- ----------
Mikkilineni                      126 Weiss                            120
Landry                           127 Weiss                            120
Markle                           128 Weiss                            120
Taylor                           180 Weiss                            120
Fleaur                           181 Weiss                            120
Sullivan                         182 Weiss                            120
Geoni                            183 Weiss                            120
Whalen                           200 Yang                             101
Jacobs                           203 Yang                             101
Brown                            204 Yang                             101
Higgins                          205 Yang                             101

Employee                        Emp# Manager                         Mgr#
------------------------- ---------- ------------------------- ----------
Gruenberg                        108 Yang                             101
Abel                             174 Zlotkey                          149
Hutton                           175 Zlotkey                          149
Taylor                           176 Zlotkey                          149
Livingston                       177 Zlotkey                          149
Grant                            178 Zlotkey                          149
Johnson                          179 Zlotkey                          149
King                             100

107 rows selected.

5.Modify the previous Query to display all employees including King, who has no manager. Order the results by the employee number.

SQL> SELECT e.last_name AS "Employee",
  2         e.employee_id AS "Emp#",
  3         m.last_name AS "Manager",
  4         m.employee_id AS "Mgr#"
  5  FROM employees e
  6  LEFT OUTER JOIN employees m
  7  ON e.manager_id = m.employee_id
  8  ORDER BY e.employee_id;

Employee                        Emp# Manager                         Mgr#
------------------------- ---------- ------------------------- ----------
King                             100
Yang                             101 King                             100
Garcia                           102 King                             100
James                            103 Garcia                           102
Miller                           104 James                            103
Williams                         105 James                            103
Jackson                          106 James                            103
Nguyen                           107 James                            103
Gruenberg                        108 Yang                             101
Faviet                           109 Gruenberg                        108
Chen                             110 Gruenberg                        108

Employee                        Emp# Manager                         Mgr#
------------------------- ---------- ------------------------- ----------
Sciarra                          111 Gruenberg                        108
Urman                            112 Gruenberg                        108
Popp                             113 Gruenberg                        108
Li                               114 King                             100
Khoo                             115 Li                               114
Baida                            116 Li                               114
Tobias                           117 Li                               114
Himuro                           118 Li                               114
Colmenares                       119 Li                               114
Weiss                            120 King                             100
Fripp                            121 King                             100

Employee                        Emp# Manager                         Mgr#
------------------------- ---------- ------------------------- ----------
Kaufling                         122 King                             100
Vollman                          123 King                             100
Mourgos                          124 King                             100
Nayer                            125 Weiss                            120
Mikkilineni                      126 Weiss                            120
Landry                           127 Weiss                            120
Markle                           128 Weiss                            120
Bissot                           129 Fripp                            121
Atkinson                         130 Fripp                            121
Marlow                           131 Fripp                            121
Olson                            132 Fripp                            121

Employee                        Emp# Manager                         Mgr#
------------------------- ---------- ------------------------- ----------
Mallin                           133 Kaufling                         122
Rogers                           134 Kaufling                         122
Gee                              135 Kaufling                         122
Philtanker                       136 Kaufling                         122
Ladwig                           137 Vollman                          123
Stiles                           138 Vollman                          123
Seo                              139 Vollman                          123
Patel                            140 Vollman                          123
Rajs                             141 Mourgos                          124
Davies                           142 Mourgos                          124
Matos                            143 Mourgos                          124

Employee                        Emp# Manager                         Mgr#
------------------------- ---------- ------------------------- ----------
Vargas                           144 Mourgos                          124
Singh                            145 King                             100
Partners                         146 King                             100
Errazuriz                        147 King                             100
Cambrault                        148 King                             100
Zlotkey                          149 King                             100
Tucker                           150 Singh                            145
Bernstein                        151 Singh                            145
Hall                             152 Singh                            145
Olsen                            153 Singh                            145
Cambrault                        154 Singh                            145

Employee                        Emp# Manager                         Mgr#
------------------------- ---------- ------------------------- ----------
Tuvault                          155 Singh                            145
King                             156 Partners                         146
Sully                            157 Partners                         146
McEwen                           158 Partners                         146
Smith                            159 Partners                         146
Doran                            160 Partners                         146
Sewall                           161 Partners                         146
Vishney                          162 Errazuriz                        147
Greene                           163 Errazuriz                        147
Marvins                          164 Errazuriz                        147
Lee                              165 Errazuriz                        147

Employee                        Emp# Manager                         Mgr#
------------------------- ---------- ------------------------- ----------
Ande                             166 Errazuriz                        147
Banda                            167 Errazuriz                        147
Ozer                             168 Cambrault                        148
Bloom                            169 Cambrault                        148
Fox                              170 Cambrault                        148
Smith                            171 Cambrault                        148
Bates                            172 Cambrault                        148
Kumar                            173 Cambrault                        148
Abel                             174 Zlotkey                          149
Hutton                           175 Zlotkey                          149
Taylor                           176 Zlotkey                          149

Employee                        Emp# Manager                         Mgr#
------------------------- ---------- ------------------------- ----------
Livingston                       177 Zlotkey                          149
Grant                            178 Zlotkey                          149
Johnson                          179 Zlotkey                          149
Taylor                           180 Weiss                            120
Fleaur                           181 Weiss                            120
Sullivan                         182 Weiss                            120
Geoni                            183 Weiss                            120
Sarchand                         184 Fripp                            121
Bull                             185 Fripp                            121
Dellinger                        186 Fripp                            121
Cabrio                           187 Fripp                            121

Employee                        Emp# Manager                         Mgr#
------------------------- ---------- ------------------------- ----------
Chung                            188 Kaufling                         122
Dilly                            189 Kaufling                         122
Venzl                            190 Kaufling                         122
Perkins                          191 Kaufling                         122
Bell                             192 Vollman                          123
Everett                          193 Vollman                          123
McLeod                           194 Vollman                          123
Jones                            195 Vollman                          123
Walsh                            196 Mourgos                          124
Feeney                           197 Mourgos                          124
OConnell                         198 Mourgos                          124

Employee                        Emp# Manager                         Mgr#
------------------------- ---------- ------------------------- ----------
Grant                            199 Mourgos                          124
Whalen                           200 Yang                             101
Martinez                         201 King                             100
Davis                            202 Martinez                         201
Jacobs                           203 Yang                             101
Brown                            204 Yang                             101
Higgins                          205 Yang                             101
Gietz                            206 Higgins                          205

107 rows selected.

6. The HR department needs a report on job grades and salaries. To familiarize yourself with the SALGRADE table, first show the structure of the SALGRADE table. Then create a query that displays the name, job, department name, salary, and grade for all employees.

SQL> DESC salgrade;
ERROR:
ORA-04043: object salgrade does not exist


SQL> SELECT table_name
  2  FROM user_tables
  3  ORDER BY table_name;

TABLE_NAME
--------------------------------------------------------------------------------
COUNTRIES
DEPARTMENTS
EMPLOYEES
JOBS
JOB_HISTORY
LOCATIONS
REGIONS

7 rows selected.

SQL> SELECT e.last_name,
  2         e.job_id,
  3         d.department_name,
  4         e.salary
  5  FROM employees e
  6  JOIN departments d
  7  ON e.department_id = d.department_id
  8  ORDER BY e.salary;

LAST_NAME                 JOB_ID     DEPARTMENT_NAME                    SALARY
------------------------- ---------- ------------------------------ ----------
Olson                     ST_CLERK   Shipping                             2100
Philtanker                ST_CLERK   Shipping                             2200
Markle                    ST_CLERK   Shipping                             2200
Landry                    ST_CLERK   Shipping                             2400
Gee                       ST_CLERK   Shipping                             2400
Vargas                    ST_CLERK   Shipping                             2500
Sullivan                  SH_CLERK   Shipping                             2500
Colmenares                PU_CLERK   Purchasing                           2500
Patel                     ST_CLERK   Shipping                             2500
Perkins                   SH_CLERK   Shipping                             2500
Marlow                    ST_CLERK   Shipping                             2500

LAST_NAME                 JOB_ID     DEPARTMENT_NAME                    SALARY
------------------------- ---------- ------------------------------ ----------
Grant                     SH_CLERK   Shipping                             2600
Matos                     ST_CLERK   Shipping                             2600
Himuro                    PU_CLERK   Purchasing                           2600
OConnell                  SH_CLERK   Shipping                             2600
Mikkilineni               ST_CLERK   Shipping                             2700
Seo                       ST_CLERK   Shipping                             2700
Geoni                     SH_CLERK   Shipping                             2800
Jones                     SH_CLERK   Shipping                             2800
Atkinson                  ST_CLERK   Shipping                             2800
Tobias                    PU_CLERK   Purchasing                           2800
Rogers                    ST_CLERK   Shipping                             2900

LAST_NAME                 JOB_ID     DEPARTMENT_NAME                    SALARY
------------------------- ---------- ------------------------------ ----------
Baida                     PU_CLERK   Purchasing                           2900
Venzl                     SH_CLERK   Shipping                             2900
Feeney                    SH_CLERK   Shipping                             3000
Cabrio                    SH_CLERK   Shipping                             3000
Fleaur                    SH_CLERK   Shipping                             3100
Davies                    ST_CLERK   Shipping                             3100
Khoo                      PU_CLERK   Purchasing                           3100
Walsh                     SH_CLERK   Shipping                             3100
Taylor                    SH_CLERK   Shipping                             3200
Nayer                     ST_CLERK   Shipping                             3200
Stiles                    ST_CLERK   Shipping                             3200

LAST_NAME                 JOB_ID     DEPARTMENT_NAME                    SALARY
------------------------- ---------- ------------------------------ ----------
McLeod                    SH_CLERK   Shipping                             3200
Bissot                    ST_CLERK   Shipping                             3300
Mallin                    ST_CLERK   Shipping                             3300
Dellinger                 SH_CLERK   Shipping                             3400
Rajs                      ST_CLERK   Shipping                             3500
Dilly                     SH_CLERK   Shipping                             3600
Ladwig                    ST_CLERK   Shipping                             3600
Chung                     SH_CLERK   Shipping                             3800
Everett                   SH_CLERK   Shipping                             3900
Bell                      SH_CLERK   Shipping                             4000
Bull                      SH_CLERK   Shipping                             4100

LAST_NAME                 JOB_ID     DEPARTMENT_NAME                    SALARY
------------------------- ---------- ------------------------------ ----------
Nguyen                    IT_PROG    IT                                   4200
Sarchand                  SH_CLERK   Shipping                             4200
Whalen                    AD_ASST    Administration                       4400
Williams                  IT_PROG    IT                                   4800
Jackson                   IT_PROG    IT                                   4800
Mourgos                   ST_MAN     Shipping                             5800
Davis                     MK_REP     Marketing                            6000
Miller                    IT_PROG    IT                                   6000
Kumar                     SA_REP     Sales                                6100
Banda                     SA_REP     Sales                                6200
Johnson                   SA_REP     Sales                                6200

LAST_NAME                 JOB_ID     DEPARTMENT_NAME                    SALARY
------------------------- ---------- ------------------------------ ----------
Ande                      SA_REP     Sales                                6400
Vollman                   ST_MAN     Shipping                             6500
Jacobs                    HR_REP     Human Resources                      6500
Lee                       SA_REP     Sales                                6800
Popp                      FI_ACCOUNT Finance                              6900
Sewall                    SA_REP     Sales                                7000
Tuvault                   SA_REP     Sales                                7000
Marvins                   SA_REP     Sales                                7200
Bates                     SA_REP     Sales                                7300
Smith                     SA_REP     Sales                                7400
Cambrault                 SA_REP     Sales                                7500

LAST_NAME                 JOB_ID     DEPARTMENT_NAME                    SALARY
------------------------- ---------- ------------------------------ ----------
Doran                     SA_REP     Sales                                7500
Sciarra                   FI_ACCOUNT Finance                              7700
Urman                     FI_ACCOUNT Finance                              7800
Kaufling                  ST_MAN     Shipping                             7900
Weiss                     ST_MAN     Shipping                             8000
Olsen                     SA_REP     Sales                                8000
Smith                     SA_REP     Sales                                8000
Fripp                     ST_MAN     Shipping                             8200
Chen                      FI_ACCOUNT Finance                              8200
Gietz                     AC_ACCOUNT Accounting                           8300
Livingston                SA_REP     Sales                                8400

LAST_NAME                 JOB_ID     DEPARTMENT_NAME                    SALARY
------------------------- ---------- ------------------------------ ----------
Taylor                    SA_REP     Sales                                8600
Hutton                    SA_REP     Sales                                8800
James                     IT_PROG    IT                                   9000
Faviet                    FI_ACCOUNT Finance                              9000
Hall                      SA_REP     Sales                                9000
McEwen                    SA_REP     Sales                                9000
Sully                     SA_REP     Sales                                9500
Bernstein                 SA_REP     Sales                                9500
Greene                    SA_REP     Sales                                9500
Fox                       SA_REP     Sales                                9600
Bloom                     SA_REP     Sales                               10000

LAST_NAME                 JOB_ID     DEPARTMENT_NAME                    SALARY
------------------------- ---------- ------------------------------ ----------
King                      SA_REP     Sales                               10000
Tucker                    SA_REP     Sales                               10000
Brown                     PR_REP     Public Relations                    10000
Zlotkey                   SA_MAN     Sales                               10500
Vishney                   SA_REP     Sales                               10500
Abel                      SA_REP     Sales                               11000
Li                        PU_MAN     Purchasing                          11000
Cambrault                 SA_MAN     Sales                               11000
Ozer                      SA_REP     Sales                               11500
Errazuriz                 SA_MAN     Sales                               12000
Higgins                   AC_MGR     Accounting                          12008

LAST_NAME                 JOB_ID     DEPARTMENT_NAME                    SALARY
------------------------- ---------- ------------------------------ ----------
Gruenberg                 FI_MGR     Finance                             12008
Martinez                  MK_MAN     Marketing                           13000
Partners                  SA_MAN     Sales                               13500
Singh                     SA_MAN     Sales                               14000
Yang                      AD_VP      Executive                           17000
Garcia                    AD_VP      Executive                           17000
King                      AD_PRES    Executive                           24000

106 rows selected.

7. Display the ENAME,DNAME of all the employees. Also display those department name which do not have any employees working.

SQL> SELECT e.last_name,
  2         d.department_name
  3  FROM employees e
  4  RIGHT OUTER JOIN departments d
  5  ON e.department_id = d.department_id
  6  ORDER BY d.department_name, e.last_name;

LAST_NAME                 DEPARTMENT_NAME
------------------------- ------------------------------
Gietz                     Accounting
Higgins                   Accounting
Whalen                    Administration
                          Benefits
                          Construction
                          Contracting
                          Control And Credit
                          Corporate Tax
Garcia                    Executive
King                      Executive
Yang                      Executive

LAST_NAME                 DEPARTMENT_NAME
------------------------- ------------------------------
Chen                      Finance
Faviet                    Finance
Gruenberg                 Finance
Popp                      Finance
Sciarra                   Finance
Urman                     Finance
                          Government Sales
Jacobs                    Human Resources
Jackson                   IT
James                     IT
Miller                    IT

LAST_NAME                 DEPARTMENT_NAME
------------------------- ------------------------------
Nguyen                    IT
Williams                  IT
                          IT Helpdesk
                          IT Support
                          Manufacturing
Davis                     Marketing
Martinez                  Marketing
                          NOC
                          Operations
                          Payroll
Brown                     Public Relations

LAST_NAME                 DEPARTMENT_NAME
------------------------- ------------------------------
Baida                     Purchasing
Colmenares                Purchasing
Himuro                    Purchasing
Khoo                      Purchasing
Li                        Purchasing
Tobias                    Purchasing
                          Recruiting
                          Retail Sales
Abel                      Sales
Ande                      Sales
Banda                     Sales

LAST_NAME                 DEPARTMENT_NAME
------------------------- ------------------------------
Bates                     Sales
Bernstein                 Sales
Bloom                     Sales
Cambrault                 Sales
Cambrault                 Sales
Doran                     Sales
Errazuriz                 Sales
Fox                       Sales
Greene                    Sales
Hall                      Sales
Hutton                    Sales

LAST_NAME                 DEPARTMENT_NAME
------------------------- ------------------------------
Johnson                   Sales
King                      Sales
Kumar                     Sales
Lee                       Sales
Livingston                Sales
Marvins                   Sales
McEwen                    Sales
Olsen                     Sales
Ozer                      Sales
Partners                  Sales
Sewall                    Sales

LAST_NAME                 DEPARTMENT_NAME
------------------------- ------------------------------
Singh                     Sales
Smith                     Sales
Smith                     Sales
Sully                     Sales
Taylor                    Sales
Tucker                    Sales
Tuvault                   Sales
Vishney                   Sales
Zlotkey                   Sales
                          Shareholder Services
Atkinson                  Shipping

LAST_NAME                 DEPARTMENT_NAME
------------------------- ------------------------------
Bell                      Shipping
Bissot                    Shipping
Bull                      Shipping
Cabrio                    Shipping
Chung                     Shipping
Davies                    Shipping
Dellinger                 Shipping
Dilly                     Shipping
Everett                   Shipping
Feeney                    Shipping
Fleaur                    Shipping

LAST_NAME                 DEPARTMENT_NAME
------------------------- ------------------------------
Fripp                     Shipping
Gee                       Shipping
Geoni                     Shipping
Grant                     Shipping
Jones                     Shipping
Kaufling                  Shipping
Ladwig                    Shipping
Landry                    Shipping
Mallin                    Shipping
Markle                    Shipping
Marlow                    Shipping

LAST_NAME                 DEPARTMENT_NAME
------------------------- ------------------------------
Matos                     Shipping
McLeod                    Shipping
Mikkilineni               Shipping
Mourgos                   Shipping
Nayer                     Shipping
OConnell                  Shipping
Olson                     Shipping
Patel                     Shipping
Perkins                   Shipping
Philtanker                Shipping
Rajs                      Shipping

LAST_NAME                 DEPARTMENT_NAME
------------------------- ------------------------------
Rogers                    Shipping
Sarchand                  Shipping
Seo                       Shipping
Stiles                    Shipping
Sullivan                  Shipping
Taylor                    Shipping
Vargas                    Shipping
Venzl                     Shipping
Vollman                   Shipping
Walsh                     Shipping
Weiss                     Shipping

LAST_NAME                 DEPARTMENT_NAME
------------------------- ------------------------------
                          Treasury

122 rows selected.

8.The HR department needs to find the names and hire dates for all employees who were hired before their managers, along with their managers’ names and hire dates.

SQL> SELECT e.last_name AS "Employee",
  2         e.hire_date AS "Emp Hire Date",
  3         m.last_name AS "Manager",
  4         m.hire_date AS "Mgr Hire Date"
  5  FROM employees e
  6  JOIN employees m
  7  ON e.manager_id = m.employee_id
  8  WHERE e.hire_date < m.hire_date
  9  ORDER BY e.hire_date;

Employee                  Emp Hire  Manager                   Mgr Hire
------------------------- --------- ------------------------- ---------
Garcia                    13-JAN-11 King                      17-JUN-13
Brown                     07-JUN-12 Yang                      21-SEP-15
Higgins                   07-JUN-12 Yang                      21-SEP-15
Jacobs                    07-JUN-12 Yang                      21-SEP-15
Faviet                    16-AUG-12 Gruenberg                 17-AUG-12
Gruenberg                 17-AUG-12 Yang                      21-SEP-15
Li                        07-DEC-12 King                      17-JUN-13
Kaufling                  01-MAY-13 King                      17-JUN-13
Ladwig                    14-JUL-13 Vollman                   10-OCT-15
Whalen                    17-SEP-13 Yang                      21-SEP-15
Rajs                      17-OCT-13 Mourgos                   16-NOV-17

Employee                  Emp Hire  Manager                   Mgr Hire
------------------------- --------- ------------------------- ---------
Sarchand                  27-JAN-14 Fripp                     10-APR-15
King                      30-JAN-14 Partners                  05-JAN-15
Bell                      04-FEB-14 Vollman                   10-OCT-15
Sully                     04-MAR-14 Partners                  05-JAN-15
Abel                      11-MAY-14 Zlotkey                   29-JAN-18
McEwen                    01-AUG-14 Partners                  05-JAN-15
Davies                    29-JAN-15 Mourgos                   16-NOV-17
Marlow                    16-FEB-15 Fripp                     10-APR-15
Bull                      20-FEB-15 Fripp                     10-APR-15
Everett                   03-MAR-15 Vollman                   10-OCT-15
Ozer                      11-MAR-15 Cambrault                 15-OCT-17

Employee                  Emp Hire  Manager                   Mgr Hire
------------------------- --------- ------------------------- ---------
Hutton                    19-MAR-15 Zlotkey                   29-JAN-18
Williams                  25-JUN-15 James                     03-JAN-16
Fox                       24-JAN-16 Cambrault                 15-OCT-17
Matos                     15-MAR-16 Mourgos                   16-NOV-17
Bloom                     23-MAR-16 Cambrault                 15-OCT-17
Taylor                    24-MAR-16 Zlotkey                   29-JAN-18
Livingston                23-APR-16 Zlotkey                   29-JAN-18
Walsh                     24-APR-16 Mourgos                   16-NOV-17
Feeney                    23-MAY-16 Mourgos                   16-NOV-17
Vargas                    09-JUL-16 Mourgos                   16-NOV-17
Smith                     23-FEB-17 Cambrault                 15-OCT-17

Employee                  Emp Hire  Manager                   Mgr Hire
------------------------- --------- ------------------------- ---------
Bates                     24-MAR-17 Cambrault                 15-OCT-17
Grant                     24-MAY-17 Zlotkey                   29-JAN-18
OConnell                  21-JUN-17 Mourgos                   16-NOV-17
Johnson                   04-JAN-18 Zlotkey                   29-JAN-18

37 rows selected.

9.Display the EMPNO,ENAME,DNAME,LOC  of those employees who are working as CLERK. Use the USING clause.

SQL> SELECT employee_id,
  2         last_name,
  3         department_name,
  4         city
  5  FROM employees
  6  JOIN departments
  7  USING (department_id)
  8  JOIN locations
  9  USING (location_id)
 10  WHERE job_id = 'ST_CLERK';

EMPLOYEE_ID LAST_NAME                 DEPARTMENT_NAME
----------- ------------------------- ------------------------------
CITY
------------------------------
        125 Nayer                     Shipping
South San Francisco

        144 Vargas                    Shipping
South San Francisco

        127 Landry                    Shipping
South San Francisco


EMPLOYEE_ID LAST_NAME                 DEPARTMENT_NAME
----------- ------------------------- ------------------------------
CITY
------------------------------
        128 Markle                    Shipping
South San Francisco

        129 Bissot                    Shipping
South San Francisco

        130 Atkinson                  Shipping
South San Francisco


EMPLOYEE_ID LAST_NAME                 DEPARTMENT_NAME
----------- ------------------------- ------------------------------
CITY
------------------------------
        131 Marlow                    Shipping
South San Francisco

        132 Olson                     Shipping
South San Francisco

        133 Mallin                    Shipping
South San Francisco


EMPLOYEE_ID LAST_NAME                 DEPARTMENT_NAME
----------- ------------------------- ------------------------------
CITY
------------------------------
        134 Rogers                    Shipping
South San Francisco

        135 Gee                       Shipping
South San Francisco

        136 Philtanker                Shipping
South San Francisco


EMPLOYEE_ID LAST_NAME                 DEPARTMENT_NAME
----------- ------------------------- ------------------------------
CITY
------------------------------
        137 Ladwig                    Shipping
South San Francisco

        138 Stiles                    Shipping
South San Francisco

        139 Seo                       Shipping
South San Francisco


EMPLOYEE_ID LAST_NAME                 DEPARTMENT_NAME
----------- ------------------------- ------------------------------
CITY
------------------------------
        140 Patel                     Shipping
South San Francisco

        141 Rajs                      Shipping
South San Francisco

        142 Davies                    Shipping
South San Francisco


EMPLOYEE_ID LAST_NAME                 DEPARTMENT_NAME
----------- ------------------------- ------------------------------
CITY
------------------------------
        143 Matos                     Shipping
South San Francisco

        126 Mikkilineni               Shipping
South San Francisco


20 rows selected.

10.Display the ENAME,SAL,MGR,DNAME of employees whose salary is more than 2000. Use the ON clause.

SQL> SELECT e.last_name,
  2         e.salary,
  3         e.manager_id,
  4         d.department_name
  5  FROM employees e
  6  JOIN departments d
  7  ON e.department_id = d.department_id
  8  WHERE e.salary > 2000;

LAST_NAME                     SALARY MANAGER_ID DEPARTMENT_NAME
------------------------- ---------- ---------- ------------------------------
Whalen                          4400        101 Administration
Martinez                       13000        100 Marketing
Davis                           6000        201 Marketing
Li                             11000        100 Purchasing
Colmenares                      2500        114 Purchasing
Khoo                            3100        114 Purchasing
Baida                           2900        114 Purchasing
Tobias                          2800        114 Purchasing
Himuro                          2600        114 Purchasing
Jacobs                          6500        101 Human Resources
Grant                           2600        124 Shipping

LAST_NAME                     SALARY MANAGER_ID DEPARTMENT_NAME
------------------------- ---------- ---------- ------------------------------
Weiss                           8000        100 Shipping
Fripp                           8200        100 Shipping
Kaufling                        7900        100 Shipping
Vollman                         6500        100 Shipping
Mourgos                         5800        100 Shipping
Nayer                           3200        120 Shipping
Mikkilineni                     2700        120 Shipping
Landry                          2400        120 Shipping
Markle                          2200        120 Shipping
Bissot                          3300        121 Shipping
Atkinson                        2800        121 Shipping

LAST_NAME                     SALARY MANAGER_ID DEPARTMENT_NAME
------------------------- ---------- ---------- ------------------------------
Marlow                          2500        121 Shipping
Olson                           2100        121 Shipping
Mallin                          3300        122 Shipping
Rogers                          2900        122 Shipping
Gee                             2400        122 Shipping
Philtanker                      2200        122 Shipping
Ladwig                          3600        123 Shipping
Stiles                          3200        123 Shipping
Seo                             2700        123 Shipping
Patel                           2500        123 Shipping
Rajs                            3500        124 Shipping

LAST_NAME                     SALARY MANAGER_ID DEPARTMENT_NAME
------------------------- ---------- ---------- ------------------------------
Davies                          3100        124 Shipping
Matos                           2600        124 Shipping
Vargas                          2500        124 Shipping
Taylor                          3200        120 Shipping
Fleaur                          3100        120 Shipping
Sullivan                        2500        120 Shipping
Geoni                           2800        120 Shipping
Sarchand                        4200        121 Shipping
Bull                            4100        121 Shipping
Dellinger                       3400        121 Shipping
Cabrio                          3000        121 Shipping

LAST_NAME                     SALARY MANAGER_ID DEPARTMENT_NAME
------------------------- ---------- ---------- ------------------------------
Chung                           3800        122 Shipping
Dilly                           3600        122 Shipping
Venzl                           2900        122 Shipping
Perkins                         2500        122 Shipping
Bell                            4000        123 Shipping
Everett                         3900        123 Shipping
McLeod                          3200        123 Shipping
Jones                           2800        123 Shipping
Walsh                           3100        124 Shipping
Feeney                          3000        124 Shipping
OConnell                        2600        124 Shipping

LAST_NAME                     SALARY MANAGER_ID DEPARTMENT_NAME
------------------------- ---------- ---------- ------------------------------
Miller                          6000        103 IT
James                           9000        102 IT
Nguyen                          4200        103 IT
Jackson                         4800        103 IT
Williams                        4800        103 IT
Brown                          10000        101 Public Relations
Taylor                          8600        149 Sales
Livingston                      8400        149 Sales
Johnson                         6200        149 Sales
Hutton                          8800        149 Sales
Abel                           11000        149 Sales

LAST_NAME                     SALARY MANAGER_ID DEPARTMENT_NAME
------------------------- ---------- ---------- ------------------------------
Kumar                           6100        148 Sales
Bates                           7300        148 Sales
Smith                           7400        148 Sales
Fox                             9600        148 Sales
Bloom                          10000        148 Sales
Ozer                           11500        148 Sales
Singh                          14000        100 Sales
Partners                       13500        100 Sales
Errazuriz                      12000        100 Sales
Cambrault                      11000        100 Sales
Zlotkey                        10500        100 Sales

LAST_NAME                     SALARY MANAGER_ID DEPARTMENT_NAME
------------------------- ---------- ---------- ------------------------------
Tucker                         10000        145 Sales
Bernstein                       9500        145 Sales
Hall                            9000        145 Sales
Olsen                           8000        145 Sales
Cambrault                       7500        145 Sales
Tuvault                         7000        145 Sales
King                           10000        146 Sales
Sully                           9500        146 Sales
McEwen                          9000        146 Sales
Smith                           8000        146 Sales
Doran                           7500        146 Sales

LAST_NAME                     SALARY MANAGER_ID DEPARTMENT_NAME
------------------------- ---------- ---------- ------------------------------
Sewall                          7000        146 Sales
Vishney                        10500        147 Sales
Greene                          9500        147 Sales
Marvins                         7200        147 Sales
Lee                             6800        147 Sales
Ande                            6400        147 Sales
Banda                           6200        147 Sales
Yang                           17000        100 Executive
King                           24000            Executive
Garcia                         17000        100 Executive
Chen                            8200        108 Finance

LAST_NAME                     SALARY MANAGER_ID DEPARTMENT_NAME
------------------------- ---------- ---------- ------------------------------
Gruenberg                      12008        101 Finance
Sciarra                         7700        108 Finance
Urman                           7800        108 Finance
Popp                            6900        108 Finance
Faviet                          9000        108 Finance
Gietz                           8300        205 Accounting
Higgins                        12008        101 Accounting

106 rows selected.

11.Display the EMPNO,ENAME,JOB,DEPTNO,DNAME,LOC of employees. Use LEFT OUTER JOIN.

SQL> SELECT e.employee_id,
  2         e.last_name,
  3         e.job_id,
  4         e.department_id,
  5         d.department_name,
  6         l.city
  7  FROM employees e
  8  LEFT OUTER JOIN departments d
  9  ON e.department_id = d.department_id
 10  LEFT OUTER JOIN locations l
 11  ON d.location_id = l.location_id;

EMPLOYEE_ID LAST_NAME                 JOB_ID     DEPARTMENT_ID
----------- ------------------------- ---------- -------------
DEPARTMENT_NAME                CITY
------------------------------ ------------------------------
        103 James                     IT_PROG               60
IT                             Southlake

        104 Miller                    IT_PROG               60
IT                             Southlake

        105 Williams                  IT_PROG               60
IT                             Southlake


EMPLOYEE_ID LAST_NAME                 JOB_ID     DEPARTMENT_ID
----------- ------------------------- ---------- -------------
DEPARTMENT_NAME                CITY
------------------------------ ------------------------------
        106 Jackson                   IT_PROG               60
IT                             Southlake

        107 Nguyen                    IT_PROG               60
IT                             Southlake

        199 Grant                     SH_CLERK              50
Shipping                       South San Francisco


EMPLOYEE_ID LAST_NAME                 JOB_ID     DEPARTMENT_ID
----------- ------------------------- ---------- -------------
DEPARTMENT_NAME                CITY
------------------------------ ------------------------------
        120 Weiss                     ST_MAN                50
Shipping                       South San Francisco

        121 Fripp                     ST_MAN                50
Shipping                       South San Francisco

        122 Kaufling                  ST_MAN                50
Shipping                       South San Francisco


EMPLOYEE_ID LAST_NAME                 JOB_ID     DEPARTMENT_ID
----------- ------------------------- ---------- -------------
DEPARTMENT_NAME                CITY
------------------------------ ------------------------------
        123 Vollman                   ST_MAN                50
Shipping                       South San Francisco

        124 Mourgos                   ST_MAN                50
Shipping                       South San Francisco

        125 Nayer                     ST_CLERK              50
Shipping                       South San Francisco


EMPLOYEE_ID LAST_NAME                 JOB_ID     DEPARTMENT_ID
----------- ------------------------- ---------- -------------
DEPARTMENT_NAME                CITY
------------------------------ ------------------------------
        126 Mikkilineni               ST_CLERK              50
Shipping                       South San Francisco

        127 Landry                    ST_CLERK              50
Shipping                       South San Francisco

        128 Markle                    ST_CLERK              50
Shipping                       South San Francisco


EMPLOYEE_ID LAST_NAME                 JOB_ID     DEPARTMENT_ID
----------- ------------------------- ---------- -------------
DEPARTMENT_NAME                CITY
------------------------------ ------------------------------
        129 Bissot                    ST_CLERK              50
Shipping                       South San Francisco

        130 Atkinson                  ST_CLERK              50
Shipping                       South San Francisco

        131 Marlow                    ST_CLERK              50
Shipping                       South San Francisco


EMPLOYEE_ID LAST_NAME                 JOB_ID     DEPARTMENT_ID
----------- ------------------------- ---------- -------------
DEPARTMENT_NAME                CITY
------------------------------ ------------------------------
        132 Olson                     ST_CLERK              50
Shipping                       South San Francisco

        133 Mallin                    ST_CLERK              50
Shipping                       South San Francisco

        134 Rogers                    ST_CLERK              50
Shipping                       South San Francisco


EMPLOYEE_ID LAST_NAME                 JOB_ID     DEPARTMENT_ID
----------- ------------------------- ---------- -------------
DEPARTMENT_NAME                CITY
------------------------------ ------------------------------
        135 Gee                       ST_CLERK              50
Shipping                       South San Francisco

        136 Philtanker                ST_CLERK              50
Shipping                       South San Francisco

        137 Ladwig                    ST_CLERK              50
Shipping                       South San Francisco


EMPLOYEE_ID LAST_NAME                 JOB_ID     DEPARTMENT_ID
----------- ------------------------- ---------- -------------
DEPARTMENT_NAME                CITY
------------------------------ ------------------------------
        138 Stiles                    ST_CLERK              50
Shipping                       South San Francisco

        139 Seo                       ST_CLERK              50
Shipping                       South San Francisco

        140 Patel                     ST_CLERK              50
Shipping                       South San Francisco


EMPLOYEE_ID LAST_NAME                 JOB_ID     DEPARTMENT_ID
----------- ------------------------- ---------- -------------
DEPARTMENT_NAME                CITY
------------------------------ ------------------------------
        141 Rajs                      ST_CLERK              50
Shipping                       South San Francisco

        142 Davies                    ST_CLERK              50
Shipping                       South San Francisco

        143 Matos                     ST_CLERK              50
Shipping                       South San Francisco


EMPLOYEE_ID LAST_NAME                 JOB_ID     DEPARTMENT_ID
----------- ------------------------- ---------- -------------
DEPARTMENT_NAME                CITY
------------------------------ ------------------------------
        144 Vargas                    ST_CLERK              50
Shipping                       South San Francisco

        180 Taylor                    SH_CLERK              50
Shipping                       South San Francisco

        181 Fleaur                    SH_CLERK              50
Shipping                       South San Francisco


EMPLOYEE_ID LAST_NAME                 JOB_ID     DEPARTMENT_ID
----------- ------------------------- ---------- -------------
DEPARTMENT_NAME                CITY
------------------------------ ------------------------------
        182 Sullivan                  SH_CLERK              50
Shipping                       South San Francisco

        183 Geoni                     SH_CLERK              50
Shipping                       South San Francisco

        184 Sarchand                  SH_CLERK              50
Shipping                       South San Francisco


EMPLOYEE_ID LAST_NAME                 JOB_ID     DEPARTMENT_ID
----------- ------------------------- ---------- -------------
DEPARTMENT_NAME                CITY
------------------------------ ------------------------------
        185 Bull                      SH_CLERK              50
Shipping                       South San Francisco

        186 Dellinger                 SH_CLERK              50
Shipping                       South San Francisco

        187 Cabrio                    SH_CLERK              50
Shipping                       South San Francisco


EMPLOYEE_ID LAST_NAME                 JOB_ID     DEPARTMENT_ID
----------- ------------------------- ---------- -------------
DEPARTMENT_NAME                CITY
------------------------------ ------------------------------
        188 Chung                     SH_CLERK              50
Shipping                       South San Francisco

        189 Dilly                     SH_CLERK              50
Shipping                       South San Francisco

        190 Venzl                     SH_CLERK              50
Shipping                       South San Francisco


EMPLOYEE_ID LAST_NAME                 JOB_ID     DEPARTMENT_ID
----------- ------------------------- ---------- -------------
DEPARTMENT_NAME                CITY
------------------------------ ------------------------------
        191 Perkins                   SH_CLERK              50
Shipping                       South San Francisco

        192 Bell                      SH_CLERK              50
Shipping                       South San Francisco

        193 Everett                   SH_CLERK              50
Shipping                       South San Francisco


EMPLOYEE_ID LAST_NAME                 JOB_ID     DEPARTMENT_ID
----------- ------------------------- ---------- -------------
DEPARTMENT_NAME                CITY
------------------------------ ------------------------------
        194 McLeod                    SH_CLERK              50
Shipping                       South San Francisco

        195 Jones                     SH_CLERK              50
Shipping                       South San Francisco

        196 Walsh                     SH_CLERK              50
Shipping                       South San Francisco


EMPLOYEE_ID LAST_NAME                 JOB_ID     DEPARTMENT_ID
----------- ------------------------- ---------- -------------
DEPARTMENT_NAME                CITY
------------------------------ ------------------------------
        197 Feeney                    SH_CLERK              50
Shipping                       South San Francisco

        198 OConnell                  SH_CLERK              50
Shipping                       South San Francisco

        200 Whalen                    AD_ASST               10
Administration                 Seattle


EMPLOYEE_ID LAST_NAME                 JOB_ID     DEPARTMENT_ID
----------- ------------------------- ---------- -------------
DEPARTMENT_NAME                CITY
------------------------------ ------------------------------
        114 Li                        PU_MAN                30
Purchasing                     Seattle

        115 Khoo                      PU_CLERK              30
Purchasing                     Seattle

        116 Baida                     PU_CLERK              30
Purchasing                     Seattle


EMPLOYEE_ID LAST_NAME                 JOB_ID     DEPARTMENT_ID
----------- ------------------------- ---------- -------------
DEPARTMENT_NAME                CITY
------------------------------ ------------------------------
        117 Tobias                    PU_CLERK              30
Purchasing                     Seattle

        118 Himuro                    PU_CLERK              30
Purchasing                     Seattle

        119 Colmenares                PU_CLERK              30
Purchasing                     Seattle


EMPLOYEE_ID LAST_NAME                 JOB_ID     DEPARTMENT_ID
----------- ------------------------- ---------- -------------
DEPARTMENT_NAME                CITY
------------------------------ ------------------------------
        100 King                      AD_PRES               90
Executive                      Seattle

        101 Yang                      AD_VP                 90
Executive                      Seattle

        102 Garcia                    AD_VP                 90
Executive                      Seattle


EMPLOYEE_ID LAST_NAME                 JOB_ID     DEPARTMENT_ID
----------- ------------------------- ---------- -------------
DEPARTMENT_NAME                CITY
------------------------------ ------------------------------
        108 Gruenberg                 FI_MGR               100
Finance                        Seattle

        109 Faviet                    FI_ACCOUNT           100
Finance                        Seattle

        110 Chen                      FI_ACCOUNT           100
Finance                        Seattle


EMPLOYEE_ID LAST_NAME                 JOB_ID     DEPARTMENT_ID
----------- ------------------------- ---------- -------------
DEPARTMENT_NAME                CITY
------------------------------ ------------------------------
        111 Sciarra                   FI_ACCOUNT           100
Finance                        Seattle

        112 Urman                     FI_ACCOUNT           100
Finance                        Seattle

        113 Popp                      FI_ACCOUNT           100
Finance                        Seattle


EMPLOYEE_ID LAST_NAME                 JOB_ID     DEPARTMENT_ID
----------- ------------------------- ---------- -------------
DEPARTMENT_NAME                CITY
------------------------------ ------------------------------
        205 Higgins                   AC_MGR               110
Accounting                     Seattle

        206 Gietz                     AC_ACCOUNT           110
Accounting                     Seattle

        201 Martinez                  MK_MAN                20
Marketing                      Toronto


EMPLOYEE_ID LAST_NAME                 JOB_ID     DEPARTMENT_ID
----------- ------------------------- ---------- -------------
DEPARTMENT_NAME                CITY
------------------------------ ------------------------------
        202 Davis                     MK_REP                20
Marketing                      Toronto

        203 Jacobs                    HR_REP                40
Human Resources                London

        145 Singh                     SA_MAN                80
Sales                          Oxford


EMPLOYEE_ID LAST_NAME                 JOB_ID     DEPARTMENT_ID
----------- ------------------------- ---------- -------------
DEPARTMENT_NAME                CITY
------------------------------ ------------------------------
        146 Partners                  SA_MAN                80
Sales                          Oxford

        147 Errazuriz                 SA_MAN                80
Sales                          Oxford

        148 Cambrault                 SA_MAN                80
Sales                          Oxford


EMPLOYEE_ID LAST_NAME                 JOB_ID     DEPARTMENT_ID
----------- ------------------------- ---------- -------------
DEPARTMENT_NAME                CITY
------------------------------ ------------------------------
        149 Zlotkey                   SA_MAN                80
Sales                          Oxford

        150 Tucker                    SA_REP                80
Sales                          Oxford

        151 Bernstein                 SA_REP                80
Sales                          Oxford


EMPLOYEE_ID LAST_NAME                 JOB_ID     DEPARTMENT_ID
----------- ------------------------- ---------- -------------
DEPARTMENT_NAME                CITY
------------------------------ ------------------------------
        152 Hall                      SA_REP                80
Sales                          Oxford

        153 Olsen                     SA_REP                80
Sales                          Oxford

        154 Cambrault                 SA_REP                80
Sales                          Oxford


EMPLOYEE_ID LAST_NAME                 JOB_ID     DEPARTMENT_ID
----------- ------------------------- ---------- -------------
DEPARTMENT_NAME                CITY
------------------------------ ------------------------------
        155 Tuvault                   SA_REP                80
Sales                          Oxford

        156 King                      SA_REP                80
Sales                          Oxford

        157 Sully                     SA_REP                80
Sales                          Oxford


EMPLOYEE_ID LAST_NAME                 JOB_ID     DEPARTMENT_ID
----------- ------------------------- ---------- -------------
DEPARTMENT_NAME                CITY
------------------------------ ------------------------------
        158 McEwen                    SA_REP                80
Sales                          Oxford

        159 Smith                     SA_REP                80
Sales                          Oxford

        160 Doran                     SA_REP                80
Sales                          Oxford


EMPLOYEE_ID LAST_NAME                 JOB_ID     DEPARTMENT_ID
----------- ------------------------- ---------- -------------
DEPARTMENT_NAME                CITY
------------------------------ ------------------------------
        161 Sewall                    SA_REP                80
Sales                          Oxford

        162 Vishney                   SA_REP                80
Sales                          Oxford

        163 Greene                    SA_REP                80
Sales                          Oxford


EMPLOYEE_ID LAST_NAME                 JOB_ID     DEPARTMENT_ID
----------- ------------------------- ---------- -------------
DEPARTMENT_NAME                CITY
------------------------------ ------------------------------
        164 Marvins                   SA_REP                80
Sales                          Oxford

        165 Lee                       SA_REP                80
Sales                          Oxford

        166 Ande                      SA_REP                80
Sales                          Oxford


EMPLOYEE_ID LAST_NAME                 JOB_ID     DEPARTMENT_ID
----------- ------------------------- ---------- -------------
DEPARTMENT_NAME                CITY
------------------------------ ------------------------------
        167 Banda                     SA_REP                80
Sales                          Oxford

        168 Ozer                      SA_REP                80
Sales                          Oxford

        169 Bloom                     SA_REP                80
Sales                          Oxford


EMPLOYEE_ID LAST_NAME                 JOB_ID     DEPARTMENT_ID
----------- ------------------------- ---------- -------------
DEPARTMENT_NAME                CITY
------------------------------ ------------------------------
        170 Fox                       SA_REP                80
Sales                          Oxford

        171 Smith                     SA_REP                80
Sales                          Oxford

        172 Bates                     SA_REP                80
Sales                          Oxford


EMPLOYEE_ID LAST_NAME                 JOB_ID     DEPARTMENT_ID
----------- ------------------------- ---------- -------------
DEPARTMENT_NAME                CITY
------------------------------ ------------------------------
        173 Kumar                     SA_REP                80
Sales                          Oxford

        174 Abel                      SA_REP                80
Sales                          Oxford

        175 Hutton                    SA_REP                80
Sales                          Oxford


EMPLOYEE_ID LAST_NAME                 JOB_ID     DEPARTMENT_ID
----------- ------------------------- ---------- -------------
DEPARTMENT_NAME                CITY
------------------------------ ------------------------------
        176 Taylor                    SA_REP                80
Sales                          Oxford

        177 Livingston                SA_REP                80
Sales                          Oxford

        179 Johnson                   SA_REP                80
Sales                          Oxford


EMPLOYEE_ID LAST_NAME                 JOB_ID     DEPARTMENT_ID
----------- ------------------------- ---------- -------------
DEPARTMENT_NAME                CITY
------------------------------ ------------------------------
        204 Brown                     PR_REP                70
Public Relations               Munich

        178 Grant                     SA_REP



107 rows selected.

12.Display the ENAME,DNAME of employees. Use RIGHT OUTER JOIN.

SQL> SELECT e.last_name,
  2         d.department_name
  3  FROM employees e
  4  RIGHT OUTER JOIN departments d
  5  ON e.department_id = d.department_id;

LAST_NAME                 DEPARTMENT_NAME
------------------------- ------------------------------
Whalen                    Administration
Martinez                  Marketing
Davis                     Marketing
Baida                     Purchasing
Tobias                    Purchasing
Li                        Purchasing
Khoo                      Purchasing
Himuro                    Purchasing
Colmenares                Purchasing
Jacobs                    Human Resources
Bissot                    Shipping

LAST_NAME                 DEPARTMENT_NAME
------------------------- ------------------------------
Dellinger                 Shipping
Dilly                     Shipping
Everett                   Shipping
Feeney                    Shipping
Fleaur                    Shipping
Fripp                     Shipping
Gee                       Shipping
Geoni                     Shipping
Grant                     Shipping
Vollman                   Shipping
Davies                    Shipping

LAST_NAME                 DEPARTMENT_NAME
------------------------- ------------------------------
Bell                      Shipping
Bull                      Shipping
Cabrio                    Shipping
Chung                     Shipping
Venzl                     Shipping
Vargas                    Shipping
Jones                     Shipping
Kaufling                  Shipping
Walsh                     Shipping
Ladwig                    Shipping
Landry                    Shipping

LAST_NAME                 DEPARTMENT_NAME
------------------------- ------------------------------
Weiss                     Shipping
Mallin                    Shipping
Markle                    Shipping
Marlow                    Shipping
Matos                     Shipping
McLeod                    Shipping
Mikkilineni               Shipping
Mourgos                   Shipping
Nayer                     Shipping
OConnell                  Shipping
Olson                     Shipping

LAST_NAME                 DEPARTMENT_NAME
------------------------- ------------------------------
Patel                     Shipping
Perkins                   Shipping
Philtanker                Shipping
Rajs                      Shipping
Rogers                    Shipping
Sarchand                  Shipping
Seo                       Shipping
Stiles                    Shipping
Sullivan                  Shipping
Taylor                    Shipping
Atkinson                  Shipping

LAST_NAME                 DEPARTMENT_NAME
------------------------- ------------------------------
Nguyen                    IT
Miller                    IT
Williams                  IT
James                     IT
Jackson                   IT
Brown                     Public Relations
Abel                      Sales
Ande                      Sales
Banda                     Sales
Bates                     Sales
Bernstein                 Sales

LAST_NAME                 DEPARTMENT_NAME
------------------------- ------------------------------
Bloom                     Sales
Cambrault                 Sales
Cambrault                 Sales
Doran                     Sales
Errazuriz                 Sales
Fox                       Sales
Greene                    Sales
Hall                      Sales
Hutton                    Sales
Johnson                   Sales
King                      Sales

LAST_NAME                 DEPARTMENT_NAME
------------------------- ------------------------------
Kumar                     Sales
Lee                       Sales
Livingston                Sales
Marvins                   Sales
McEwen                    Sales
Olsen                     Sales
Ozer                      Sales
Partners                  Sales
Sewall                    Sales
Singh                     Sales
Smith                     Sales

LAST_NAME                 DEPARTMENT_NAME
------------------------- ------------------------------
Smith                     Sales
Sully                     Sales
Taylor                    Sales
Tucker                    Sales
Tuvault                   Sales
Vishney                   Sales
Zlotkey                   Sales
Garcia                    Executive
King                      Executive
Yang                      Executive
Sciarra                   Finance

LAST_NAME                 DEPARTMENT_NAME
------------------------- ------------------------------
Popp                      Finance
Chen                      Finance
Faviet                    Finance
Urman                     Finance
Gruenberg                 Finance
Gietz                     Accounting
Higgins                   Accounting
                          Treasury
                          Corporate Tax
                          Control And Credit
                          Shareholder Services

LAST_NAME                 DEPARTMENT_NAME
------------------------- ------------------------------
                          Benefits
                          Manufacturing
                          Construction
                          Contracting
                          Operations
                          IT Support
                          NOC
                          IT Helpdesk
                          Government Sales
                          Retail Sales
                          Recruiting

LAST_NAME                 DEPARTMENT_NAME
------------------------- ------------------------------
                          Payroll

122 rows selected.

13.Display the EMPNO,DNAME,LOC of employees. Use FULL OUTER JOIN.

SQL> SELECT e.employee_id,
  2         d.department_name,
  3         l.city
  4  FROM employees e
  5  FULL OUTER JOIN departments d
  6  ON e.department_id = d.department_id
  7  LEFT OUTER JOIN locations l
  8  ON d.location_id = l.location_id;

EMPLOYEE_ID DEPARTMENT_NAME                CITY
----------- ------------------------------ ------------------------------
        103 IT                             Southlake
        104 IT                             Southlake
        105 IT                             Southlake
        106 IT                             Southlake
        107 IT                             Southlake
        199 Shipping                       South San Francisco
        120 Shipping                       South San Francisco
        121 Shipping                       South San Francisco
        122 Shipping                       South San Francisco
        123 Shipping                       South San Francisco
        124 Shipping                       South San Francisco

EMPLOYEE_ID DEPARTMENT_NAME                CITY
----------- ------------------------------ ------------------------------
        125 Shipping                       South San Francisco
        126 Shipping                       South San Francisco
        127 Shipping                       South San Francisco
        128 Shipping                       South San Francisco
        129 Shipping                       South San Francisco
        130 Shipping                       South San Francisco
        131 Shipping                       South San Francisco
        132 Shipping                       South San Francisco
        133 Shipping                       South San Francisco
        134 Shipping                       South San Francisco
        135 Shipping                       South San Francisco

EMPLOYEE_ID DEPARTMENT_NAME                CITY
----------- ------------------------------ ------------------------------
        136 Shipping                       South San Francisco
        137 Shipping                       South San Francisco
        138 Shipping                       South San Francisco
        139 Shipping                       South San Francisco
        140 Shipping                       South San Francisco
        141 Shipping                       South San Francisco
        142 Shipping                       South San Francisco
        143 Shipping                       South San Francisco
        144 Shipping                       South San Francisco
        180 Shipping                       South San Francisco
        181 Shipping                       South San Francisco

EMPLOYEE_ID DEPARTMENT_NAME                CITY
----------- ------------------------------ ------------------------------
        182 Shipping                       South San Francisco
        183 Shipping                       South San Francisco
        184 Shipping                       South San Francisco
        185 Shipping                       South San Francisco
        186 Shipping                       South San Francisco
        187 Shipping                       South San Francisco
        188 Shipping                       South San Francisco
        189 Shipping                       South San Francisco
        190 Shipping                       South San Francisco
        191 Shipping                       South San Francisco
        192 Shipping                       South San Francisco

EMPLOYEE_ID DEPARTMENT_NAME                CITY
----------- ------------------------------ ------------------------------
        193 Shipping                       South San Francisco
        194 Shipping                       South San Francisco
        195 Shipping                       South San Francisco
        196 Shipping                       South San Francisco
        197 Shipping                       South San Francisco
        198 Shipping                       South San Francisco
        200 Administration                 Seattle
        205 Accounting                     Seattle
        206 Accounting                     Seattle
        100 Executive                      Seattle
        101 Executive                      Seattle

EMPLOYEE_ID DEPARTMENT_NAME                CITY
----------- ------------------------------ ------------------------------
        102 Executive                      Seattle
        108 Finance                        Seattle
        109 Finance                        Seattle
        110 Finance                        Seattle
        111 Finance                        Seattle
        112 Finance                        Seattle
        113 Finance                        Seattle
        114 Purchasing                     Seattle
        115 Purchasing                     Seattle
        116 Purchasing                     Seattle
        117 Purchasing                     Seattle

EMPLOYEE_ID DEPARTMENT_NAME                CITY
----------- ------------------------------ ------------------------------
        118 Purchasing                     Seattle
        119 Purchasing                     Seattle
            IT Support                     Seattle
            Operations                     Seattle
            Payroll                        Seattle
            Construction                   Seattle
            Government Sales               Seattle
            Retail Sales                   Seattle
            Contracting                    Seattle
            Recruiting                     Seattle
            Control And Credit             Seattle

EMPLOYEE_ID DEPARTMENT_NAME                CITY
----------- ------------------------------ ------------------------------
            NOC                            Seattle
            Treasury                       Seattle
            Manufacturing                  Seattle
            Corporate Tax                  Seattle
            IT Helpdesk                    Seattle
            Shareholder Services           Seattle
            Benefits                       Seattle
        201 Marketing                      Toronto
        202 Marketing                      Toronto
        203 Human Resources                London
        145 Sales                          Oxford

EMPLOYEE_ID DEPARTMENT_NAME                CITY
----------- ------------------------------ ------------------------------
        146 Sales                          Oxford
        147 Sales                          Oxford
        148 Sales                          Oxford
        149 Sales                          Oxford
        150 Sales                          Oxford
        151 Sales                          Oxford
        152 Sales                          Oxford
        153 Sales                          Oxford
        154 Sales                          Oxford
        155 Sales                          Oxford
        156 Sales                          Oxford

EMPLOYEE_ID DEPARTMENT_NAME                CITY
----------- ------------------------------ ------------------------------
        157 Sales                          Oxford
        158 Sales                          Oxford
        159 Sales                          Oxford
        160 Sales                          Oxford
        161 Sales                          Oxford
        162 Sales                          Oxford
        163 Sales                          Oxford
        164 Sales                          Oxford
        165 Sales                          Oxford
        166 Sales                          Oxford
        167 Sales                          Oxford

EMPLOYEE_ID DEPARTMENT_NAME                CITY
----------- ------------------------------ ------------------------------
        168 Sales                          Oxford
        169 Sales                          Oxford
        170 Sales                          Oxford
        171 Sales                          Oxford
        172 Sales                          Oxford
        173 Sales                          Oxford
        174 Sales                          Oxford
        175 Sales                          Oxford
        176 Sales                          Oxford
        177 Sales                          Oxford
        179 Sales                          Oxford

EMPLOYEE_ID DEPARTMENT_NAME                CITY
----------- ------------------------------ ------------------------------
        204 Public Relations               Munich
        178

123 rows selected.

SQL>