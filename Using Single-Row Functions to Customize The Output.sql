Microsoft Windows [Version 10.0.26200.8875]
(c) Microsoft Corporation. All rights reserved.

C:\Users\user>sqlplus

SQL*Plus: Release 21.0.0.0.0 - Production on Tue Jul 21 08:56:41 2026
Version 21.3.0.0.0

Copyright (c) 1982, 2021, Oracle.  All rights reserved.

Enter user-name: system
Enter password:
Last Successful login time: Thu Jul 16 2026 13:54:46 +05:30

Connected to:
Oracle Database 21c Express Edition Release 21.0.0.0.0 - Production
Version 21.3.0.0.0

SQL> connect abc/abc123@localhost:1521/XEPDB1
Connected.
SQL> select currentdate() as column_date;
select currentdate() as column_date
                                  *
ERROR at line 1:
ORA-00923: FROM keyword not found where expected


SQL> select currentdate() as 'columndate';
select currentdate() as 'columndate'
                        *
ERROR at line 1:
ORA-00923: FROM keyword not found where expected


SQL> select currentdate();
select currentdate()
                   *
ERROR at line 1:
ORA-00923: FROM keyword not found where expected


SQL> select sysdate as dual;
select sysdate as dual
                     *
ERROR at line 1:
ORA-00923: FROM keyword not found where expected

1.  Write a query to display the current date. Label the column Date.

SQL> SELECT SYSDATE FROM DUAL;

SYSDATE
---------
21-JUL-26

SQL> SELECT SYSDATE FROM DUAL as 'column_date';
SELECT SYSDATE FROM DUAL as 'column_date'
                         *
ERROR at line 1:
ORA-00933: SQL command not properly ended


SQL> SELECT SYSDATE as 'column_date' FROM DUAL;
SELECT SYSDATE as 'column_date' FROM DUAL
                  *
ERROR at line 1:
ORA-00923: FROM keyword not found where expected


SQL> SELECT SYSDATE as column_date FROM DUAL;

COLUMN_DA
---------
21-JUL-26

2. The HR department needs a report to display the employee number, last name, salary, and salary increased by 15.5% (expressed as a whole number) for each employee. Label the column New Salary.

SQL> select employee_id,last_name,salary,round(salary*1.155) as "new salary" from hr;
select employee_id,last_name,salary,round(salary*1.155) as "new salary" from hr
                                                                             *
ERROR at line 1:
ORA-00942: table or view does not exist


SQL> select * from hr;
select * from hr
              *
ERROR at line 1:
ORA-00942: table or view does not exist


SQL> select * from HR;
select * from HR
              *
ERROR at line 1:
ORA-00942: table or view does not exist


SQL> select tab;
select tab
         *
ERROR at line 1:
ORA-00923: FROM keyword not found where expected


SQL> SELECT table_name
  2  FROM user_tables;

TABLE_NAME
--------------------------------------------------------------------------------
EMP
TEST_TBL
DEPT
EMP1
EMPLOYEE

SQL> exit
Disconnected from Oracle Database 21c Express Edition Release 21.0.0.0.0 - Production
Version 21.3.0.0.0

C:\Users\user>sqlplus

SQL*Plus: Release 21.0.0.0.0 - Production on Tue Jul 21 09:06:47 2026
Version 21.3.0.0.0

Copyright (c) 1982, 2021, Oracle.  All rights reserved.

Enter user-name: system
Enter password:
Last Successful login time: Tue Jul 21 2026 08:56:50 +05:30

Connected to:
Oracle Database 21c Express Edition Release 21.0.0.0.0 - Production
Version 21.3.0.0.0

SQL> connect hr/hr
ERROR:
ORA-01017: invalid username/password; logon denied


Warning: You are no longer connected to ORACLE.
SQL> exit

C:\Users\user>sqlplus hr/hr@//localhost:1521/XEPDB1

SQL*Plus: Release 21.0.0.0.0 - Production on Tue Jul 21 09:08:39 2026
Version 21.3.0.0.0

Copyright (c) 1982, 2021, Oracle.  All rights reserved.

Last Successful login time: Thu Jul 16 2026 13:57:08 +05:30

Connected to:
Oracle Database 21c Express Edition Release 21.0.0.0.0 - Production
Version 21.3.0.0.0

Write a query to display the current date. Label the column Date.

SQL> select sysdate as "column date" from dual;

column da
---------
21-JUL-26

2. The HR department needs a report to display the employee number, last name, salary, and salary increased by 15.5% (expressed as a whole number) for each employee. Label the column New Salary.

SQL> SELECT employee_id,
  2         last_name,
  3         salary,
  4         ROUND(salary * 1.155) AS "New Salary"
  5  FROM employees;

EMPLOYEE_ID LAST_NAME                     SALARY New Salary
----------- ------------------------- ---------- ----------
        199 Grant                           2600       3003
        200 Whalen                          4400       5082
        201 Martinez                       13000      15015
        202 Davis                           6000       6930
        203 Jacobs                          6500       7508
        204 Brown                          10000      11550
        205 Higgins                        12008      13869
        206 Gietz                           8300       9587
        100 King                           24000      27720
        101 Yang                           17000      19635
        102 Garcia                         17000      19635

EMPLOYEE_ID LAST_NAME                     SALARY New Salary
----------- ------------------------- ---------- ----------
        103 James                           9000      10395
        104 Miller                          6000       6930
        105 Williams                        4800       5544
        106 Jackson                         4800       5544
        107 Nguyen                          4200       4851
        108 Gruenberg                      12008      13869
        109 Faviet                          9000      10395
        110 Chen                            8200       9471
        111 Sciarra                         7700       8894
        112 Urman                           7800       9009
        113 Popp                            6900       7970

EMPLOYEE_ID LAST_NAME                     SALARY New Salary
----------- ------------------------- ---------- ----------
        114 Li                             11000      12705
        115 Khoo                            3100       3581
        116 Baida                           2900       3350
        117 Tobias                          2800       3234
        118 Himuro                          2600       3003
        119 Colmenares                      2500       2888
        120 Weiss                           8000       9240
        121 Fripp                           8200       9471
        122 Kaufling                        7900       9125
        123 Vollman                         6500       7508
        124 Mourgos                         5800       6699

EMPLOYEE_ID LAST_NAME                     SALARY New Salary
----------- ------------------------- ---------- ----------
        125 Nayer                           3200       3696
        126 Mikkilineni                     2700       3119
        127 Landry                          2400       2772
        128 Markle                          2200       2541
        129 Bissot                          3300       3812
        130 Atkinson                        2800       3234
        131 Marlow                          2500       2888
        132 Olson                           2100       2426
        133 Mallin                          3300       3812
        134 Rogers                          2900       3350
        135 Gee                             2400       2772

EMPLOYEE_ID LAST_NAME                     SALARY New Salary
----------- ------------------------- ---------- ----------
        136 Philtanker                      2200       2541
        137 Ladwig                          3600       4158
        138 Stiles                          3200       3696
        139 Seo                             2700       3119
        140 Patel                           2500       2888
        141 Rajs                            3500       4043
        142 Davies                          3100       3581
        143 Matos                           2600       3003
        144 Vargas                          2500       2888
        145 Singh                          14000      16170
        146 Partners                       13500      15593

EMPLOYEE_ID LAST_NAME                     SALARY New Salary
----------- ------------------------- ---------- ----------
        147 Errazuriz                      12000      13860
        148 Cambrault                      11000      12705
        149 Zlotkey                        10500      12128
        150 Tucker                         10000      11550
        151 Bernstein                       9500      10973
        152 Hall                            9000      10395
        153 Olsen                           8000       9240
        154 Cambrault                       7500       8663
        155 Tuvault                         7000       8085
        156 King                           10000      11550
        157 Sully                           9500      10973

EMPLOYEE_ID LAST_NAME                     SALARY New Salary
----------- ------------------------- ---------- ----------
        158 McEwen                          9000      10395
        159 Smith                           8000       9240
        160 Doran                           7500       8663
        161 Sewall                          7000       8085
        162 Vishney                        10500      12128
        163 Greene                          9500      10973
        164 Marvins                         7200       8316
        165 Lee                             6800       7854
        166 Ande                            6400       7392
        167 Banda                           6200       7161
        168 Ozer                           11500      13283

EMPLOYEE_ID LAST_NAME                     SALARY New Salary
----------- ------------------------- ---------- ----------
        169 Bloom                          10000      11550
        170 Fox                             9600      11088
        171 Smith                           7400       8547
        172 Bates                           7300       8432
        173 Kumar                           6100       7046
        174 Abel                           11000      12705
        175 Hutton                          8800      10164
        176 Taylor                          8600       9933
        177 Livingston                      8400       9702
        178 Grant                           7000       8085
        179 Johnson                         6200       7161

EMPLOYEE_ID LAST_NAME                     SALARY New Salary
----------- ------------------------- ---------- ----------
        180 Taylor                          3200       3696
        181 Fleaur                          3100       3581
        182 Sullivan                        2500       2888
        183 Geoni                           2800       3234
        184 Sarchand                        4200       4851
        185 Bull                            4100       4736
        186 Dellinger                       3400       3927
        187 Cabrio                          3000       3465
        188 Chung                           3800       4389
        189 Dilly                           3600       4158
        190 Venzl                           2900       3350

EMPLOYEE_ID LAST_NAME                     SALARY New Salary
----------- ------------------------- ---------- ----------
        191 Perkins                         2500       2888
        192 Bell                            4000       4620
        193 Everett                         3900       4505
        194 McLeod                          3200       3696
        195 Jones                           2800       3234
        196 Walsh                           3100       3581
        197 Feeney                          3000       3465
        198 OConnell                        2600       3003

107 rows selected.

3.Modify the previous query to add a column alias that subtracts the old salary from the new salary. Label the column Increase

SQL> SELECT employee_id,
  2         last_name,
  3         salary,
  4         ROUND(salary * 1.155) AS "New Salary"
  5         ROUND(salary * 1.155) AS "New Salary"
  6
SQL> select employee_id,last_name,salary,round(salary * 1.155) - salary as "increse" from hr;
select employee_id,last_name,salary,round(salary * 1.155) - salary as "increse" from hr
                                                                                     *
ERROR at line 1:
ORA-00942: table or view does not exist


SQL> select employee_id,last_name,salary,round(salary * 1.155) - salary as "increse" from employees;

EMPLOYEE_ID LAST_NAME                     SALARY    increse
----------- ------------------------- ---------- ----------
        199 Grant                           2600        403
        200 Whalen                          4400        682
        201 Martinez                       13000       2015
        202 Davis                           6000        930
        203 Jacobs                          6500       1008
        204 Brown                          10000       1550
        205 Higgins                        12008       1861
        206 Gietz                           8300       1287
        100 King                           24000       3720
        101 Yang                           17000       2635
        102 Garcia                         17000       2635

EMPLOYEE_ID LAST_NAME                     SALARY    increse
----------- ------------------------- ---------- ----------
        103 James                           9000       1395
        104 Miller                          6000        930
        105 Williams                        4800        744
        106 Jackson                         4800        744
        107 Nguyen                          4200        651
        108 Gruenberg                      12008       1861
        109 Faviet                          9000       1395
        110 Chen                            8200       1271
        111 Sciarra                         7700       1194
        112 Urman                           7800       1209
        113 Popp                            6900       1070

EMPLOYEE_ID LAST_NAME                     SALARY    increse
----------- ------------------------- ---------- ----------
        114 Li                             11000       1705
        115 Khoo                            3100        481
        116 Baida                           2900        450
        117 Tobias                          2800        434
        118 Himuro                          2600        403
        119 Colmenares                      2500        388
        120 Weiss                           8000       1240
        121 Fripp                           8200       1271
        122 Kaufling                        7900       1225
        123 Vollman                         6500       1008
        124 Mourgos                         5800        899

EMPLOYEE_ID LAST_NAME                     SALARY    increse
----------- ------------------------- ---------- ----------
        125 Nayer                           3200        496
        126 Mikkilineni                     2700        419
        127 Landry                          2400        372
        128 Markle                          2200        341
        129 Bissot                          3300        512
        130 Atkinson                        2800        434
        131 Marlow                          2500        388
        132 Olson                           2100        326
        133 Mallin                          3300        512
        134 Rogers                          2900        450
        135 Gee                             2400        372

EMPLOYEE_ID LAST_NAME                     SALARY    increse
----------- ------------------------- ---------- ----------
        136 Philtanker                      2200        341
        137 Ladwig                          3600        558
        138 Stiles                          3200        496
        139 Seo                             2700        419
        140 Patel                           2500        388
        141 Rajs                            3500        543
        142 Davies                          3100        481
        143 Matos                           2600        403
        144 Vargas                          2500        388
        145 Singh                          14000       2170
        146 Partners                       13500       2093

EMPLOYEE_ID LAST_NAME                     SALARY    increse
----------- ------------------------- ---------- ----------
        147 Errazuriz                      12000       1860
        148 Cambrault                      11000       1705
        149 Zlotkey                        10500       1628
        150 Tucker                         10000       1550
        151 Bernstein                       9500       1473
        152 Hall                            9000       1395
        153 Olsen                           8000       1240
        154 Cambrault                       7500       1163
        155 Tuvault                         7000       1085
        156 King                           10000       1550
        157 Sully                           9500       1473

EMPLOYEE_ID LAST_NAME                     SALARY    increse
----------- ------------------------- ---------- ----------
        158 McEwen                          9000       1395
        159 Smith                           8000       1240
        160 Doran                           7500       1163
        161 Sewall                          7000       1085
        162 Vishney                        10500       1628
        163 Greene                          9500       1473
        164 Marvins                         7200       1116
        165 Lee                             6800       1054
        166 Ande                            6400        992
        167 Banda                           6200        961
        168 Ozer                           11500       1783

EMPLOYEE_ID LAST_NAME                     SALARY    increse
----------- ------------------------- ---------- ----------
        169 Bloom                          10000       1550
        170 Fox                             9600       1488
        171 Smith                           7400       1147
        172 Bates                           7300       1132
        173 Kumar                           6100        946
        174 Abel                           11000       1705
        175 Hutton                          8800       1364
        176 Taylor                          8600       1333
        177 Livingston                      8400       1302
        178 Grant                           7000       1085
        179 Johnson                         6200        961

EMPLOYEE_ID LAST_NAME                     SALARY    increse
----------- ------------------------- ---------- ----------
        180 Taylor                          3200        496
        181 Fleaur                          3100        481
        182 Sullivan                        2500        388
        183 Geoni                           2800        434
        184 Sarchand                        4200        651
        185 Bull                            4100        636
        186 Dellinger                       3400        527
        187 Cabrio                          3000        465
        188 Chung                           3800        589
        189 Dilly                           3600        558
        190 Venzl                           2900        450

EMPLOYEE_ID LAST_NAME                     SALARY    increse
----------- ------------------------- ---------- ----------
        191 Perkins                         2500        388
        192 Bell                            4000        620
        193 Everett                         3900        605
        194 McLeod                          3200        496
        195 Jones                           2800        434
        196 Walsh                           3100        481
        197 Feeney                          3000        465
        198 OConnell                        2600        403

107 rows selected.

4 .Write a query that displays the ename (with the first letter uppercase and all other letters lowercase) and the length of the  ename for all employees whose name starts with the letters J, A, or M. Give each column an appropriate label. Sort the results by the employees’ enames.

SQL> SELECT INITCAP(ename) AS "Employee Name",
  2         LENGTH(ename) AS "Name Length"
  3  FROM emp
  4  WHERE UPPER(SUBSTR(ename, 1, 1)) IN ('J', 'A', 'M')
  5  ORDER BY ename;
FROM emp
     *
ERROR at line 3:
ORA-00942: table or view does not exist


SQL> select * from employees;

EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------
        199 Douglas              Grant
DGRANT                    1.650.555.0164       13-JAN-18 SH_CLERK         2600
                      124            50

        200 Jennifer             Whalen
JWHALEN                   1.515.555.0165       17-SEP-13 AD_ASST          4400
                      101            10

EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------

        201 Michael              Martinez
MMARTINE                  1.515.555.0166       17-FEB-14 MK_MAN          13000
                      100            20

        202 Pat                  Davis
PDAVIS                    1.603.555.0167       17-AUG-15 MK_REP           6000

EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------
                      201            20

        203 Susan                Jacobs
SJACOBS                   1.515.555.0168       07-JUN-12 HR_REP           6500
                      101            40

        204 Hermann              Brown

EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------
HBROWN                    1.515.555.0169       07-JUN-12 PR_REP          10000
                      101            70

        205 Shelley              Higgins
SHIGGINS                  1.515.555.0170       07-JUN-12 AC_MGR          12008
                      101           110


EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------
        206 William              Gietz
WGIETZ                    1.515.555.0171       07-JUN-12 AC_ACCOUNT       8300
                      205           110

        100 Steven               King
SKING                     1.515.555.0100       17-JUN-13 AD_PRES         24000
                                     90

EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------

        101 Neena                Yang
NYANG                     1.515.555.0101       21-SEP-15 AD_VP           17000
                      100            90

        102 Lex                  Garcia
LGARCIA                   1.515.555.0102       13-JAN-11 AD_VP           17000

EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------
                      100            90

        103 Alexander            James
AJAMES                    1.590.555.0103       03-JAN-16 IT_PROG          9000
                      102            60

        104 Bruce                Miller

EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------
BMILLER                   1.590.555.0104       21-MAY-17 IT_PROG          6000
                      103            60

        105 David                Williams
DWILLIAMS                 1.590.555.0105       25-JUN-15 IT_PROG          4800
                      103            60


EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------
        106 Valli                Jackson
VJACKSON                  1.590.555.0106       05-FEB-16 IT_PROG          4800
                      103            60

        107 Diana                Nguyen
DNGUYEN                   1.590.555.0107       07-FEB-17 IT_PROG          4200
                      103            60

EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------

        108 Nancy                Gruenberg
NGRUENBE                  1.515.555.0108       17-AUG-12 FI_MGR          12008
                      101           100

        109 Daniel               Faviet
DFAVIET                   1.515.555.0109       16-AUG-12 FI_ACCOUNT       9000

EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------
                      108           100

        110 John                 Chen
JCHEN                     1.515.555.0110       28-SEP-15 FI_ACCOUNT       8200
                      108           100

        111 Ismael               Sciarra

EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------
ISCIARRA                  1.515.555.0111       30-SEP-15 FI_ACCOUNT       7700
                      108           100

        112 Jose Manuel          Urman
JMURMAN                   1.515.555.0112       07-MAR-16 FI_ACCOUNT       7800
                      108           100


EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------
        113 Luis                 Popp
LPOPP                     1.515.555.0113       07-DEC-17 FI_ACCOUNT       6900
                      108           100

        114 Den                  Li
DLI                       1.515.555.0114       07-DEC-12 PU_MAN          11000
                      100            30

EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------

        115 Alexander            Khoo
AKHOO                     1.515.555.0115       18-MAY-13 PU_CLERK         3100
                      114            30

        116 Shelli               Baida
SBAIDA                    1.515.555.0116       24-DEC-15 PU_CLERK         2900

EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------
                      114            30

        117 Sigal                Tobias
STOBIAS                   1.515.555.0117       24-JUL-15 PU_CLERK         2800
                      114            30

        118 Guy                  Himuro

EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------
GHIMURO                   1.515.555.0118       15-NOV-16 PU_CLERK         2600
                      114            30

        119 Karen                Colmenares
KCOLMENA                  1.515.555.0119       10-AUG-17 PU_CLERK         2500
                      114            30


EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------
        120 Matthew              Weiss
MWEISS                    1.650.555.0120       18-JUL-14 ST_MAN           8000
                      100            50

        121 Adam                 Fripp
AFRIPP                    1.650.555.0121       10-APR-15 ST_MAN           8200
                      100            50

EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------

        122 Payam                Kaufling
PKAUFLIN                  1.650.555.0122       01-MAY-13 ST_MAN           7900
                      100            50

        123 Shanta               Vollman
SVOLLMAN                  1.650.555.0123       10-OCT-15 ST_MAN           6500

EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------
                      100            50

        124 Kevin                Mourgos
KMOURGOS                  1.650.555.0124       16-NOV-17 ST_MAN           5800
                      100            50

        125 Julia                Nayer

EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------
JNAYER                    1.650.555.0125       16-JUL-15 ST_CLERK         3200
                      120            50

        126 Irene                Mikkilineni
IMIKKILI                  1.650.555.0126       28-SEP-16 ST_CLERK         2700
                      120            50


EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------
        127 James                Landry
JLANDRY                   1.650.555.0127       14-JAN-17 ST_CLERK         2400
                      120            50

        128 Steven               Markle
SMARKLE                   1.650.555.0128       08-MAR-18 ST_CLERK         2200
                      120            50

EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------

        129 Laura                Bissot
LBISSOT                   1.650.555.0129       20-AUG-15 ST_CLERK         3300
                      121            50

        130 Mozhe                Atkinson
MATKINSO                  1.650.555.0130       30-OCT-15 ST_CLERK         2800

EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------
                      121            50

        131 James                Marlow
JAMRLOW                   1.650.555.0131       16-FEB-15 ST_CLERK         2500
                      121            50

        132 TJ                   Olson

EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------
TJOLSON                   1.650.555.0132       10-APR-17 ST_CLERK         2100
                      121            50

        133 Jason                Mallin
JMALLIN                   1.650.555.0133       14-JUN-14 ST_CLERK         3300
                      122            50


EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------
        134 Michael              Rogers
MROGERS                   1.650.555.0134       26-AUG-16 ST_CLERK         2900
                      122            50

        135 Ki                   Gee
KGEE                      1.650.555.0135       12-DEC-17 ST_CLERK         2400
                      122            50

EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------

        136 Hazel                Philtanker
HPHILTAN                  1.650.555.0136       06-FEB-18 ST_CLERK         2200
                      122            50

        137 Renske               Ladwig
RLADWIG                   1.650.555.0137       14-JUL-13 ST_CLERK         3600

EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------
                      123            50

        138 Stephen              Stiles
SSTILES                   1.650.555.0138       26-OCT-15 ST_CLERK         3200
                      123            50

        139 John                 Seo

EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------
JSEO                      1.650.555.0139       12-FEB-16 ST_CLERK         2700
                      123            50

        140 Joshua               Patel
JPATEL                    1.650.555.0140       06-APR-16 ST_CLERK         2500
                      123            50


EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------
        141 Trenna               Rajs
TRAJS                     1.650.555.0141       17-OCT-13 ST_CLERK         3500
                      124            50

        142 Curtis               Davies
CDAVIES                   1.650.555.0142       29-JAN-15 ST_CLERK         3100
                      124            50

EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------

        143 Randall              Matos
RMATOS                    1.650.555.0143       15-MAR-16 ST_CLERK         2600
                      124            50

        144 Peter                Vargas
PVARGAS                   1.650.555.0144       09-JUL-16 ST_CLERK         2500

EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------
                      124            50

        145 John                 Singh
JSINGH                    44.1632.960000       01-OCT-14 SA_MAN          14000
            .4        100            80

        146 Karen                Partners

EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------
KPARTNER                  44.1632.960001       05-JAN-15 SA_MAN          13500
            .3        100            80

        147 Alberto              Errazuriz
AERRAZUR                  44.1632.960002       10-MAR-15 SA_MAN          12000
            .3        100            80


EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------
        148 Gerald               Cambrault
GCAMBRAU                  44.1632.960003       15-OCT-17 SA_MAN          11000
            .3        100            80

        149 Eleni                Zlotkey
EZLOTKEY                  44.1632.960004       29-JAN-18 SA_MAN          10500
            .2        100            80

EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------

        150 Sean                 Tucker
STUCKER                   44.1632.960005       30-JAN-15 SA_REP          10000
            .3        145            80

        151 David                Bernstein
DBERNSTE                  44.1632.960006       24-MAR-15 SA_REP           9500

EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------
           .25        145            80

        152 Peter                Hall
PHALL                     44.1632.960007       20-AUG-15 SA_REP           9000
           .25        145            80

        153 Christopher          Olsen

EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------
COLSEN                    44.1632.960008       30-MAR-16 SA_REP           8000
            .2        145            80

        154 Nanette              Cambrault
NCAMBRAU                  44.1632.960009       09-DEC-16 SA_REP           7500
            .2        145            80


EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------
        155 Oliver               Tuvault
OTUVAULT                  44.1632.960010       23-NOV-17 SA_REP           7000
           .15        145            80

        156 Janette              King
JKING                     44.1632.960011       30-JAN-14 SA_REP          10000
           .35        146            80

EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------

        157 Patrick              Sully
PSULLY                    44.1632.960012       04-MAR-14 SA_REP           9500
           .35        146            80

        158 Allan                McEwen
AMCEWEN                   44.1632.960013       01-AUG-14 SA_REP           9000

EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------
           .35        146            80

        159 Lindsey              Smith
LSMITH                    44.1632.960014       10-MAR-15 SA_REP           8000
            .3        146            80

        160 Louise               Doran

EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------
LDORAN                    44.1632.960015       15-DEC-15 SA_REP           7500
            .3        146            80

        161 Sarath               Sewall
SSEWALL                   44.1632.960016       03-NOV-16 SA_REP           7000
           .25        146            80


EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------
        162 Clara                Vishney
CVISHNEY                  44.1632.960017       11-NOV-15 SA_REP          10500
           .25        147            80

        163 Danielle             Greene
DGREENE                   44.1632.960018       19-MAR-17 SA_REP           9500
           .15        147            80

EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------

        164 Mattea               Marvins
MMARVINS                  44.1632.960019       24-JAN-18 SA_REP           7200
            .1        147            80

        165 David                Lee
DLEE                      44.1632.960020       23-FEB-18 SA_REP           6800

EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------
            .1        147            80

        166 Sundar               Ande
SANDE                     44.1632.960021       24-MAR-18 SA_REP           6400
            .1        147            80

        167 Amit                 Banda

EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------
ABANDA                    44.1632.960022       21-APR-18 SA_REP           6200
            .1        147            80

        168 Lisa                 Ozer
LOZER                     44.1632.960023       11-MAR-15 SA_REP          11500
           .25        148            80


EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------
        169 Harrison             Bloom
HBLOOM                    44.1632.960024       23-MAR-16 SA_REP          10000
            .2        148            80

        170 Tayler               Fox
TFOX                      44.1632.960025       24-JAN-16 SA_REP           9600
            .2        148            80

EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------

        171 William              Smith
WSMITH                    44.1632.960026       23-FEB-17 SA_REP           7400
           .15        148            80

        172 Elizabeth            Bates
EBATES                    44.1632.960027       24-MAR-17 SA_REP           7300

EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------
           .15        148            80

        173 Sundita              Kumar
SKUMAR                    44.1632.960028       21-APR-18 SA_REP           6100
            .1        148            80

        174 Ellen                Abel

EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------
EABEL                     44.1632.960029       11-MAY-14 SA_REP          11000
            .3        149            80

        175 Alyssa               Hutton
AHUTTON                   44.1632.960030       19-MAR-15 SA_REP           8800
           .25        149            80


EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------
        176 Jonathon             Taylor
JTAYLOR                   44.1632.960031       24-MAR-16 SA_REP           8600
            .2        149            80

        177 Jack                 Livingston
JLIVINGS                  44.1632.960032       23-APR-16 SA_REP           8400
            .2        149            80

EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------

        178 Kimberely            Grant
KGRANT                    44.1632.960033       24-MAY-17 SA_REP           7000
           .15        149

        179 Charles              Johnson
CJOHNSON                  44.1632.960034       04-JAN-18 SA_REP           6200

EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------
            .1        149            80

        180 Winston              Taylor
WTAYLOR                   1.650.555.0145       24-JAN-16 SH_CLERK         3200
                      120            50

        181 Jean                 Fleaur

EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------
JFLEAUR                   1.650.555.0146       23-FEB-16 SH_CLERK         3100
                      120            50

        182 Martha               Sullivan
MSULLIVA                  1.650.555.0147       21-JUN-17 SH_CLERK         2500
                      120            50


EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------
        183 Girard               Geoni
GGEONI                    1.650.555.0148       03-FEB-18 SH_CLERK         2800
                      120            50

        184 Nandita              Sarchand
NSARCHAN                  1.650.555.0149       27-JAN-14 SH_CLERK         4200
                      121            50

EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------

        185 Alexis               Bull
ABULL                     1.650.555.0150       20-FEB-15 SH_CLERK         4100
                      121            50

        186 Julia                Dellinger
JDELLING                  1.650.555.0151       24-JUN-16 SH_CLERK         3400

EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------
                      121            50

        187 Anthony              Cabrio
ACABRIO                   1.650.555.0152       07-FEB-17 SH_CLERK         3000
                      121            50

        188 Kelly                Chung

EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------
KCHUNG                    1.650.555.0153       14-JUN-15 SH_CLERK         3800
                      122            50

        189 Jennifer             Dilly
JDILLY                    1.650.555.0154       13-AUG-15 SH_CLERK         3600
                      122            50


EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------
        190 Timothy              Venzl
TVENZL                    1.650.555.0155       11-JUL-16 SH_CLERK         2900
                      122            50

        191 Randall              Perkins
RPERKINS                  1.650.555.0156       19-DEC-17 SH_CLERK         2500
                      122            50

EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------

        192 Sarah                Bell
SBELL                     1.650.555.0157       04-FEB-14 SH_CLERK         4000
                      123            50

        193 Britney              Everett
BEVERETT                  1.650.555.0158       03-MAR-15 SH_CLERK         3900

EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------
                      123            50

        194 Samuel               McLeod
SMCLEOD                   1.650.555.0159       01-JUL-16 SH_CLERK         3200
                      123            50

        195 Vance                Jones

EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------
VJONES                    1.650.555.0160       17-MAR-17 SH_CLERK         2800
                      123            50

        196 Alana                Walsh
AWALSH                    1.650.555.0161       24-APR-16 SH_CLERK         3100
                      124            50


EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------
        197 Kevin                Feeney
KFEENEY                   1.650.555.0162       23-MAY-16 SH_CLERK         3000
                      124            50

        198 Donald               OConnell
DOCONNEL                  1.650.555.0163       21-JUN-17 SH_CLERK         2600
                      124            50

EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------


107 rows selected.

SQL> SELECT INITCAP(last_name) AS "Employee Name",
  2         LENGTH(last_name) AS "Name Length"
  3  FROM employees
  4  WHERE UPPER(SUBSTR(last_name, 1, 1)) IN ('J', 'A', 'M')
  5  ORDER BY last_name;

Employee Name             Name Length
------------------------- -----------
Abel                                4
Ande                                4
Atkinson                            8
Jackson                             7
Jacobs                              6
James                               5
Johnson                             7
Jones                               5
Mallin                              6
Markle                              6
Marlow                              6

Employee Name             Name Length
------------------------- -----------
Martinez                            8
Marvins                             7
Matos                               5
Mcewen                              6
Mcleod                              6
Mikkilineni                        11
Miller                              6
Mourgos                             7

19 rows selected.

5. Rewrite the query so that the user is prompted to enter a letter that starts the last name. For example, if the user enters H when prompted for a letter, then the output should show all employees whose last name starts with the letter H.


SQL> select last_name from hr where last_name like &last_name;
Enter value for last_name: H
old   1: select last_name from hr where last_name like &last_name
new   1: select last_name from hr where last_name like H
select last_name from hr where last_name like H
                      *
ERROR at line 1:
ORA-00942: table or view does not exist


SQL> select last_name from employees where last_name like &last_name;
Enter value for last_name: H
old   1: select last_name from employees where last_name like &last_name
new   1: select last_name from employees where last_name like H
select last_name from employees where last_name like H
                                                     *
ERROR at line 1:
ORA-00904: "H": invalid identifier


SQL> select last_name from employees where last_name like '&last_name%';
Enter value for last_name: H
old   1: select last_name from employees where last_name like '&last_name%'
new   1: select last_name from employees where last_name like 'H%'

LAST_NAME
-------------------------
Hall
Higgins
Himuro
Hutton

6.The HR department wants to find the length of employment for each employee. For each employee, display the ename and calculate the number of months between today and the date on which the employee was hired. Label the column MONTHS_WORKED. Order your results by the number of months employed. Round the number of months up to the closest whole number.

SQL> SELECT last_name,
  2         CEIL(MONTHS_BETWEEN(SYSDATE, hire_date)) AS "MONTHS_WORKED"
  3  FROM employees
  4  ORDER BY MONTHS_WORKED;

LAST_NAME                 MONTHS_WORKED
------------------------- -------------
Kumar                                99
Banda                                99
Ande                                100
Lee                                 101
Markle                              101
Zlotkey                             102
Geoni                               102
Marvins                             102
Philtanker                          102
Grant                               103
Johnson                             103

LAST_NAME                 MONTHS_WORKED
------------------------- -------------
Tuvault                             104
Popp                                104
Perkins                             104
Gee                                 104
Mourgos                             105
Cambrault                           106
Colmenares                          108
Sullivan                            109
OConnell                            109
Miller                              110
Grant                               110

LAST_NAME                 MONTHS_WORKED
------------------------- -------------
Olson                               112
Bates                               112
Greene                              113
Smith                               113
Jones                               113
Nguyen                              114
Cabrio                              114
Landry                              115
Cambrault                           116
Himuro                              117
Sewall                              117

LAST_NAME                 MONTHS_WORKED
------------------------- -------------
Mikkilineni                         118
Rogers                              119
Vargas                              121
Dellinger                           121
Venzl                               121
McLeod                              121
Feeney                              122
Livingston                          123
Walsh                               123
Patel                               124
Olsen                               124

LAST_NAME                 MONTHS_WORKED
------------------------- -------------
Bloom                               124
Taylor                              124
Urman                               125
Matos                               125
Fleaur                              125
Jackson                             126
Seo                                 126
Fox                                 126
Taylor                              126
James                               127
Baida                               127

LAST_NAME                 MONTHS_WORKED
------------------------- -------------
Doran                               128
Atkinson                            129
Stiles                              129
Vishney                             129
Yang                                130
Chen                                130
Sciarra                             130
Vollman                             130
Davis                               132
Tobias                              132
Bissot                              132

LAST_NAME                 MONTHS_WORKED
------------------------- -------------
Hall                                132
Dilly                               132
Williams                            133
Nayer                               133
Chung                               134
Fripp                               136
Bernstein                           136
Errazuriz                           137
Smith                               137
Ozer                                137
Hutton                              137

LAST_NAME                 MONTHS_WORKED
------------------------- -------------
Everett                             137
Marlow                              138
Davies                              138
Tucker                              138
Bull                                138
Partners                            139
Singh                               142
McEwen                              144
Weiss                               145
Mallin                              146
Abel                                147

LAST_NAME                 MONTHS_WORKED
------------------------- -------------
Sully                               149
Martinez                            150
King                                150
Sarchand                            150
Bell                                150
Rajs                                154
Whalen                              155
Ladwig                              157
King                                158
Khoo                                159
Kaufling                            159

LAST_NAME                 MONTHS_WORKED
------------------------- -------------
Li                                  164
Gruenberg                           168
Faviet                              168
Jacobs                              170
Brown                               170
Higgins                             170
Gietz                               170
Garcia                              187

107 rows selected.

7. Create a report that produces the following for each employee:   earns  monthly but wants <3 times salary>. Label the column Dream Salaries.

SQL> select last_name || 'earn
  2  ' || salary || 'monthly but want' || (salary*3) as "dream salary" from employees;

dream salary
--------------------------------------------------------------------------------
Grantearn
2600monthly but want7800

Whalenearn
4400monthly but want13200

Martinezearn
13000monthly but want39000

Davisearn
6000monthly but want18000

dream salary
--------------------------------------------------------------------------------

Jacobsearn
6500monthly but want19500

Brownearn
10000monthly but want30000

Higginsearn
12008monthly but want36024

Gietzearn

dream salary
--------------------------------------------------------------------------------
8300monthly but want24900

Kingearn
24000monthly but want72000

Yangearn
17000monthly but want51000

Garciaearn
17000monthly but want51000


dream salary
--------------------------------------------------------------------------------
Jamesearn
9000monthly but want27000

Millerearn
6000monthly but want18000

Williamsearn
4800monthly but want14400

Jacksonearn
4800monthly but want14400

dream salary
--------------------------------------------------------------------------------

Nguyenearn
4200monthly but want12600

Gruenbergearn
12008monthly but want36024

Favietearn
9000monthly but want27000

Chenearn

dream salary
--------------------------------------------------------------------------------
8200monthly but want24600

Sciarraearn
7700monthly but want23100

Urmanearn
7800monthly but want23400

Poppearn
6900monthly but want20700


dream salary
--------------------------------------------------------------------------------
Liearn
11000monthly but want33000

Khooearn
3100monthly but want9300

Baidaearn
2900monthly but want8700

Tobiasearn
2800monthly but want8400

dream salary
--------------------------------------------------------------------------------

Himuroearn
2600monthly but want7800

Colmenaresearn
2500monthly but want7500

Weissearn
8000monthly but want24000

Frippearn

dream salary
--------------------------------------------------------------------------------
8200monthly but want24600

Kauflingearn
7900monthly but want23700

Vollmanearn
6500monthly but want19500

Mourgosearn
5800monthly but want17400


dream salary
--------------------------------------------------------------------------------
Nayerearn
3200monthly but want9600

Mikkilineniearn
2700monthly but want8100

Landryearn
2400monthly but want7200

Markleearn
2200monthly but want6600

dream salary
--------------------------------------------------------------------------------

Bissotearn
3300monthly but want9900

Atkinsonearn
2800monthly but want8400

Marlowearn
2500monthly but want7500

Olsonearn

dream salary
--------------------------------------------------------------------------------
2100monthly but want6300

Mallinearn
3300monthly but want9900

Rogersearn
2900monthly but want8700

Geeearn
2400monthly but want7200


dream salary
--------------------------------------------------------------------------------
Philtankerearn
2200monthly but want6600

Ladwigearn
3600monthly but want10800

Stilesearn
3200monthly but want9600

Seoearn
2700monthly but want8100

dream salary
--------------------------------------------------------------------------------

Patelearn
2500monthly but want7500

Rajsearn
3500monthly but want10500

Daviesearn
3100monthly but want9300

Matosearn

dream salary
--------------------------------------------------------------------------------
2600monthly but want7800

Vargasearn
2500monthly but want7500

Singhearn
14000monthly but want42000

Partnersearn
13500monthly but want40500


dream salary
--------------------------------------------------------------------------------
Errazurizearn
12000monthly but want36000

Cambraultearn
11000monthly but want33000

Zlotkeyearn
10500monthly but want31500

Tuckerearn
10000monthly but want30000

dream salary
--------------------------------------------------------------------------------

Bernsteinearn
9500monthly but want28500

Hallearn
9000monthly but want27000

Olsenearn
8000monthly but want24000

Cambraultearn

dream salary
--------------------------------------------------------------------------------
7500monthly but want22500

Tuvaultearn
7000monthly but want21000

Kingearn
10000monthly but want30000

Sullyearn
9500monthly but want28500


dream salary
--------------------------------------------------------------------------------
McEwenearn
9000monthly but want27000

Smithearn
8000monthly but want24000

Doranearn
7500monthly but want22500

Sewallearn
7000monthly but want21000

dream salary
--------------------------------------------------------------------------------

Vishneyearn
10500monthly but want31500

Greeneearn
9500monthly but want28500

Marvinsearn
7200monthly but want21600

Leeearn

dream salary
--------------------------------------------------------------------------------
6800monthly but want20400

Andeearn
6400monthly but want19200

Bandaearn
6200monthly but want18600

Ozerearn
11500monthly but want34500


dream salary
--------------------------------------------------------------------------------
Bloomearn
10000monthly but want30000

Foxearn
9600monthly but want28800

Smithearn
7400monthly but want22200

Batesearn
7300monthly but want21900

dream salary
--------------------------------------------------------------------------------

Kumarearn
6100monthly but want18300

Abelearn
11000monthly but want33000

Huttonearn
8800monthly but want26400

Taylorearn

dream salary
--------------------------------------------------------------------------------
8600monthly but want25800

Livingstonearn
8400monthly but want25200

Grantearn
7000monthly but want21000

Johnsonearn
6200monthly but want18600


dream salary
--------------------------------------------------------------------------------
Taylorearn
3200monthly but want9600

Fleaurearn
3100monthly but want9300

Sullivanearn
2500monthly but want7500

Geoniearn
2800monthly but want8400

dream salary
--------------------------------------------------------------------------------

Sarchandearn
4200monthly but want12600

Bullearn
4100monthly but want12300

Dellingerearn
3400monthly but want10200

Cabrioearn

dream salary
--------------------------------------------------------------------------------
3000monthly but want9000

Chungearn
3800monthly but want11400

Dillyearn
3600monthly but want10800

Venzlearn
2900monthly but want8700


dream salary
--------------------------------------------------------------------------------
Perkinsearn
2500monthly but want7500

Bellearn
4000monthly but want12000

Everettearn
3900monthly but want11700

McLeodearn
3200monthly but want9600

dream salary
--------------------------------------------------------------------------------

Jonesearn
2800monthly but want8400

Walshearn
3100monthly but want9300

Feeneyearn
3000monthly but want9000

OConnellearn

dream salary
--------------------------------------------------------------------------------
2600monthly but want7800


107 rows selected.

8.Create a query to display the last name and salary for all employees. Format the salary to be 15 characters long, left-padded with the $ symbol. Label the column SALAR

SQL> select last_name,lpad(salary,15,'$') as "salary" from employees;

LAST_NAME
-------------------------
salary
------------------------------------------------------------
Grant
$$$$$$$$$$$2600

Whalen
$$$$$$$$$$$4400

Martinez
$$$$$$$$$$13000


LAST_NAME
-------------------------
salary
------------------------------------------------------------
Davis
$$$$$$$$$$$6000

Jacobs
$$$$$$$$$$$6500

Brown
$$$$$$$$$$10000


LAST_NAME
-------------------------
salary
------------------------------------------------------------
Higgins
$$$$$$$$$$12008

Gietz
$$$$$$$$$$$8300

King
$$$$$$$$$$24000


LAST_NAME
-------------------------
salary
------------------------------------------------------------
Yang
$$$$$$$$$$17000

Garcia
$$$$$$$$$$17000

James
$$$$$$$$$$$9000


LAST_NAME
-------------------------
salary
------------------------------------------------------------
Miller
$$$$$$$$$$$6000

Williams
$$$$$$$$$$$4800

Jackson
$$$$$$$$$$$4800


LAST_NAME
-------------------------
salary
------------------------------------------------------------
Nguyen
$$$$$$$$$$$4200

Gruenberg
$$$$$$$$$$12008

Faviet
$$$$$$$$$$$9000


LAST_NAME
-------------------------
salary
------------------------------------------------------------
Chen
$$$$$$$$$$$8200

Sciarra
$$$$$$$$$$$7700

Urman
$$$$$$$$$$$7800


LAST_NAME
-------------------------
salary
------------------------------------------------------------
Popp
$$$$$$$$$$$6900

Li
$$$$$$$$$$11000

Khoo
$$$$$$$$$$$3100


LAST_NAME
-------------------------
salary
------------------------------------------------------------
Baida
$$$$$$$$$$$2900

Tobias
$$$$$$$$$$$2800

Himuro
$$$$$$$$$$$2600


LAST_NAME
-------------------------
salary
------------------------------------------------------------
Colmenares
$$$$$$$$$$$2500

Weiss
$$$$$$$$$$$8000

Fripp
$$$$$$$$$$$8200


LAST_NAME
-------------------------
salary
------------------------------------------------------------
Kaufling
$$$$$$$$$$$7900

Vollman
$$$$$$$$$$$6500

Mourgos
$$$$$$$$$$$5800


LAST_NAME
-------------------------
salary
------------------------------------------------------------
Nayer
$$$$$$$$$$$3200

Mikkilineni
$$$$$$$$$$$2700

Landry
$$$$$$$$$$$2400


LAST_NAME
-------------------------
salary
------------------------------------------------------------
Markle
$$$$$$$$$$$2200

Bissot
$$$$$$$$$$$3300

Atkinson
$$$$$$$$$$$2800


LAST_NAME
-------------------------
salary
------------------------------------------------------------
Marlow
$$$$$$$$$$$2500

Olson
$$$$$$$$$$$2100

Mallin
$$$$$$$$$$$3300


LAST_NAME
-------------------------
salary
------------------------------------------------------------
Rogers
$$$$$$$$$$$2900

Gee
$$$$$$$$$$$2400

Philtanker
$$$$$$$$$$$2200


LAST_NAME
-------------------------
salary
------------------------------------------------------------
Ladwig
$$$$$$$$$$$3600

Stiles
$$$$$$$$$$$3200

Seo
$$$$$$$$$$$2700


LAST_NAME
-------------------------
salary
------------------------------------------------------------
Patel
$$$$$$$$$$$2500

Rajs
$$$$$$$$$$$3500

Davies
$$$$$$$$$$$3100


LAST_NAME
-------------------------
salary
------------------------------------------------------------
Matos
$$$$$$$$$$$2600

Vargas
$$$$$$$$$$$2500

Singh
$$$$$$$$$$14000


LAST_NAME
-------------------------
salary
------------------------------------------------------------
Partners
$$$$$$$$$$13500

Errazuriz
$$$$$$$$$$12000

Cambrault
$$$$$$$$$$11000


LAST_NAME
-------------------------
salary
------------------------------------------------------------
Zlotkey
$$$$$$$$$$10500

Tucker
$$$$$$$$$$10000

Bernstein
$$$$$$$$$$$9500


LAST_NAME
-------------------------
salary
------------------------------------------------------------
Hall
$$$$$$$$$$$9000

Olsen
$$$$$$$$$$$8000

Cambrault
$$$$$$$$$$$7500


LAST_NAME
-------------------------
salary
------------------------------------------------------------
Tuvault
$$$$$$$$$$$7000

King
$$$$$$$$$$10000

Sully
$$$$$$$$$$$9500


LAST_NAME
-------------------------
salary
------------------------------------------------------------
McEwen
$$$$$$$$$$$9000

Smith
$$$$$$$$$$$8000

Doran
$$$$$$$$$$$7500


LAST_NAME
-------------------------
salary
------------------------------------------------------------
Sewall
$$$$$$$$$$$7000

Vishney
$$$$$$$$$$10500

Greene
$$$$$$$$$$$9500


LAST_NAME
-------------------------
salary
------------------------------------------------------------
Marvins
$$$$$$$$$$$7200

Lee
$$$$$$$$$$$6800

Ande
$$$$$$$$$$$6400


LAST_NAME
-------------------------
salary
------------------------------------------------------------
Banda
$$$$$$$$$$$6200

Ozer
$$$$$$$$$$11500

Bloom
$$$$$$$$$$10000


LAST_NAME
-------------------------
salary
------------------------------------------------------------
Fox
$$$$$$$$$$$9600

Smith
$$$$$$$$$$$7400

Bates
$$$$$$$$$$$7300


LAST_NAME
-------------------------
salary
------------------------------------------------------------
Kumar
$$$$$$$$$$$6100

Abel
$$$$$$$$$$11000

Hutton
$$$$$$$$$$$8800


LAST_NAME
-------------------------
salary
------------------------------------------------------------
Taylor
$$$$$$$$$$$8600

Livingston
$$$$$$$$$$$8400

Grant
$$$$$$$$$$$7000


LAST_NAME
-------------------------
salary
------------------------------------------------------------
Johnson
$$$$$$$$$$$6200

Taylor
$$$$$$$$$$$3200

Fleaur
$$$$$$$$$$$3100


LAST_NAME
-------------------------
salary
------------------------------------------------------------
Sullivan
$$$$$$$$$$$2500

Geoni
$$$$$$$$$$$2800

Sarchand
$$$$$$$$$$$4200


LAST_NAME
-------------------------
salary
------------------------------------------------------------
Bull
$$$$$$$$$$$4100

Dellinger
$$$$$$$$$$$3400

Cabrio
$$$$$$$$$$$3000


LAST_NAME
-------------------------
salary
------------------------------------------------------------
Chung
$$$$$$$$$$$3800

Dilly
$$$$$$$$$$$3600

Venzl
$$$$$$$$$$$2900


LAST_NAME
-------------------------
salary
------------------------------------------------------------
Perkins
$$$$$$$$$$$2500

Bell
$$$$$$$$$$$4000

Everett
$$$$$$$$$$$3900


LAST_NAME
-------------------------
salary
------------------------------------------------------------
McLeod
$$$$$$$$$$$3200

Jones
$$$$$$$$$$$2800

Walsh
$$$$$$$$$$$3100


LAST_NAME
-------------------------
salary
------------------------------------------------------------
Feeney
$$$$$$$$$$$3000

OConnell
$$$$$$$$$$$2600


107 rows selected.

9. Display each employee’s last name, hire date, and salary review date, which is the first Monday after six months of service. Label the column REVIEW. Format the dates to appear in the format similar to “Monday, the Thirty-First of July, 2000.”

SQL> SELECT last_name,
  2         hire_date,
  3         TO_CHAR(
  4             NEXT_DAY(ADD_MONTHS(hire_date, 6), 'MONDAY'),
  5             'fmDay, "the" DDSPTH "of" Month, YYYY'
  6         ) AS "REVIEW"
  7  FROM employees;

LAST_NAME                 HIRE_DATE
------------------------- ---------
REVIEW
--------------------------------------------------------------------------------
Grant                     13-JAN-18
Monday, the SIXTEENTH of July, 2018

Whalen                    17-SEP-13
Monday, the TWENTY-FOURTH of March, 2014

Martinez                  17-FEB-14
Monday, the EIGHTEENTH of August, 2014


LAST_NAME                 HIRE_DATE
------------------------- ---------
REVIEW
--------------------------------------------------------------------------------
Davis                     17-AUG-15
Monday, the TWENTY-SECOND of February, 2016

Jacobs                    07-JUN-12
Monday, the TENTH of December, 2012

Brown                     07-JUN-12
Monday, the TENTH of December, 2012


LAST_NAME                 HIRE_DATE
------------------------- ---------
REVIEW
--------------------------------------------------------------------------------
Higgins                   07-JUN-12
Monday, the TENTH of December, 2012

Gietz                     07-JUN-12
Monday, the TENTH of December, 2012

King                      17-JUN-13
Monday, the TWENTY-THIRD of December, 2013


LAST_NAME                 HIRE_DATE
------------------------- ---------
REVIEW
--------------------------------------------------------------------------------
Yang                      21-SEP-15
Monday, the TWENTY-EIGHTH of March, 2016

Garcia                    13-JAN-11
Monday, the EIGHTEENTH of July, 2011

James                     03-JAN-16
Monday, the FOURTH of July, 2016


LAST_NAME                 HIRE_DATE
------------------------- ---------
REVIEW
--------------------------------------------------------------------------------
Miller                    21-MAY-17
Monday, the TWENTY-SEVENTH of November, 2017

Williams                  25-JUN-15
Monday, the TWENTY-EIGHTH of December, 2015

Jackson                   05-FEB-16
Monday, the EIGHTH of August, 2016


LAST_NAME                 HIRE_DATE
------------------------- ---------
REVIEW
--------------------------------------------------------------------------------
Nguyen                    07-FEB-17
Monday, the FOURTEENTH of August, 2017

Gruenberg                 17-AUG-12
Monday, the EIGHTEENTH of February, 2013

Faviet                    16-AUG-12
Monday, the EIGHTEENTH of February, 2013


LAST_NAME                 HIRE_DATE
------------------------- ---------
REVIEW
--------------------------------------------------------------------------------
Chen                      28-SEP-15
Monday, the FOURTH of April, 2016

Sciarra                   30-SEP-15
Monday, the FOURTH of April, 2016

Urman                     07-MAR-16
Monday, the TWELFTH of September, 2016


LAST_NAME                 HIRE_DATE
------------------------- ---------
REVIEW
--------------------------------------------------------------------------------
Popp                      07-DEC-17
Monday, the ELEVENTH of June, 2018

Li                        07-DEC-12
Monday, the TENTH of June, 2013

Khoo                      18-MAY-13
Monday, the TWENTY-FIFTH of November, 2013


LAST_NAME                 HIRE_DATE
------------------------- ---------
REVIEW
--------------------------------------------------------------------------------
Baida                     24-DEC-15
Monday, the TWENTY-SEVENTH of June, 2016

Tobias                    24-JUL-15
Monday, the TWENTY-FIFTH of January, 2016

Himuro                    15-NOV-16
Monday, the TWENTY-SECOND of May, 2017


LAST_NAME                 HIRE_DATE
------------------------- ---------
REVIEW
--------------------------------------------------------------------------------
Colmenares                10-AUG-17
Monday, the TWELFTH of February, 2018

Weiss                     18-JUL-14
Monday, the NINETEENTH of January, 2015

Fripp                     10-APR-15
Monday, the TWELFTH of October, 2015


LAST_NAME                 HIRE_DATE
------------------------- ---------
REVIEW
--------------------------------------------------------------------------------
Kaufling                  01-MAY-13
Monday, the FOURTH of November, 2013

Vollman                   10-OCT-15
Monday, the ELEVENTH of April, 2016

Mourgos                   16-NOV-17
Monday, the TWENTY-FIRST of May, 2018


LAST_NAME                 HIRE_DATE
------------------------- ---------
REVIEW
--------------------------------------------------------------------------------
Nayer                     16-JUL-15
Monday, the EIGHTEENTH of January, 2016

Mikkilineni               28-SEP-16
Monday, the THIRD of April, 2017

Landry                    14-JAN-17
Monday, the SEVENTEENTH of July, 2017


LAST_NAME                 HIRE_DATE
------------------------- ---------
REVIEW
--------------------------------------------------------------------------------
Markle                    08-MAR-18
Monday, the TENTH of September, 2018

Bissot                    20-AUG-15
Monday, the TWENTY-SECOND of February, 2016

Atkinson                  30-OCT-15
Monday, the SECOND of May, 2016


LAST_NAME                 HIRE_DATE
------------------------- ---------
REVIEW
--------------------------------------------------------------------------------
Marlow                    16-FEB-15
Monday, the SEVENTEENTH of August, 2015

Olson                     10-APR-17
Monday, the SIXTEENTH of October, 2017

Mallin                    14-JUN-14
Monday, the FIFTEENTH of December, 2014


LAST_NAME                 HIRE_DATE
------------------------- ---------
REVIEW
--------------------------------------------------------------------------------
Rogers                    26-AUG-16
Monday, the TWENTY-SEVENTH of February, 2017

Gee                       12-DEC-17
Monday, the EIGHTEENTH of June, 2018

Philtanker                06-FEB-18
Monday, the THIRTEENTH of August, 2018


LAST_NAME                 HIRE_DATE
------------------------- ---------
REVIEW
--------------------------------------------------------------------------------
Ladwig                    14-JUL-13
Monday, the TWENTIETH of January, 2014

Stiles                    26-OCT-15
Monday, the SECOND of May, 2016

Seo                       12-FEB-16
Monday, the FIFTEENTH of August, 2016


LAST_NAME                 HIRE_DATE
------------------------- ---------
REVIEW
--------------------------------------------------------------------------------
Patel                     06-APR-16
Monday, the TENTH of October, 2016

Rajs                      17-OCT-13
Monday, the TWENTY-FIRST of April, 2014

Davies                    29-JAN-15
Monday, the THIRD of August, 2015


LAST_NAME                 HIRE_DATE
------------------------- ---------
REVIEW
--------------------------------------------------------------------------------
Matos                     15-MAR-16
Monday, the NINETEENTH of September, 2016

Vargas                    09-JUL-16
Monday, the SIXTEENTH of January, 2017

Singh                     01-OCT-14
Monday, the SIXTH of April, 2015


LAST_NAME                 HIRE_DATE
------------------------- ---------
REVIEW
--------------------------------------------------------------------------------
Partners                  05-JAN-15
Monday, the SIXTH of July, 2015

Errazuriz                 10-MAR-15
Monday, the FOURTEENTH of September, 2015

Cambrault                 15-OCT-17
Monday, the SIXTEENTH of April, 2018


LAST_NAME                 HIRE_DATE
------------------------- ---------
REVIEW
--------------------------------------------------------------------------------
Zlotkey                   29-JAN-18
Monday, the THIRTIETH of July, 2018

Tucker                    30-JAN-15
Monday, the THIRD of August, 2015

Bernstein                 24-MAR-15
Monday, the TWENTY-EIGHTH of September, 2015


LAST_NAME                 HIRE_DATE
------------------------- ---------
REVIEW
--------------------------------------------------------------------------------
Hall                      20-AUG-15
Monday, the TWENTY-SECOND of February, 2016

Olsen                     30-MAR-16
Monday, the THIRD of October, 2016

Cambrault                 09-DEC-16
Monday, the TWELFTH of June, 2017


LAST_NAME                 HIRE_DATE
------------------------- ---------
REVIEW
--------------------------------------------------------------------------------
Tuvault                   23-NOV-17
Monday, the TWENTY-EIGHTH of May, 2018

King                      30-JAN-14
Monday, the FOURTH of August, 2014

Sully                     04-MAR-14
Monday, the EIGHTH of September, 2014


LAST_NAME                 HIRE_DATE
------------------------- ---------
REVIEW
--------------------------------------------------------------------------------
McEwen                    01-AUG-14
Monday, the SECOND of February, 2015

Smith                     10-MAR-15
Monday, the FOURTEENTH of September, 2015

Doran                     15-DEC-15
Monday, the TWENTIETH of June, 2016


LAST_NAME                 HIRE_DATE
------------------------- ---------
REVIEW
--------------------------------------------------------------------------------
Sewall                    03-NOV-16
Monday, the EIGHTH of May, 2017

Vishney                   11-NOV-15
Monday, the SIXTEENTH of May, 2016

Greene                    19-MAR-17
Monday, the TWENTY-FIFTH of September, 2017


LAST_NAME                 HIRE_DATE
------------------------- ---------
REVIEW
--------------------------------------------------------------------------------
Marvins                   24-JAN-18
Monday, the THIRTIETH of July, 2018

Lee                       23-FEB-18
Monday, the TWENTY-SEVENTH of August, 2018

Ande                      24-MAR-18
Monday, the FIRST of October, 2018


LAST_NAME                 HIRE_DATE
------------------------- ---------
REVIEW
--------------------------------------------------------------------------------
Banda                     21-APR-18
Monday, the TWENTY-SECOND of October, 2018

Ozer                      11-MAR-15
Monday, the FOURTEENTH of September, 2015

Bloom                     23-MAR-16
Monday, the TWENTY-SIXTH of September, 2016


LAST_NAME                 HIRE_DATE
------------------------- ---------
REVIEW
--------------------------------------------------------------------------------
Fox                       24-JAN-16
Monday, the TWENTY-FIFTH of July, 2016

Smith                     23-FEB-17
Monday, the TWENTY-EIGHTH of August, 2017

Bates                     24-MAR-17
Monday, the TWENTY-FIFTH of September, 2017


LAST_NAME                 HIRE_DATE
------------------------- ---------
REVIEW
--------------------------------------------------------------------------------
Kumar                     21-APR-18
Monday, the TWENTY-SECOND of October, 2018

Abel                      11-MAY-14
Monday, the SEVENTEENTH of November, 2014

Hutton                    19-MAR-15
Monday, the TWENTY-FIRST of September, 2015


LAST_NAME                 HIRE_DATE
------------------------- ---------
REVIEW
--------------------------------------------------------------------------------
Taylor                    24-MAR-16
Monday, the TWENTY-SIXTH of September, 2016

Livingston                23-APR-16
Monday, the TWENTY-FOURTH of October, 2016

Grant                     24-MAY-17
Monday, the TWENTY-SEVENTH of November, 2017


LAST_NAME                 HIRE_DATE
------------------------- ---------
REVIEW
--------------------------------------------------------------------------------
Johnson                   04-JAN-18
Monday, the NINTH of July, 2018

Taylor                    24-JAN-16
Monday, the TWENTY-FIFTH of July, 2016

Fleaur                    23-FEB-16
Monday, the TWENTY-NINTH of August, 2016


LAST_NAME                 HIRE_DATE
------------------------- ---------
REVIEW
--------------------------------------------------------------------------------
Sullivan                  21-JUN-17
Monday, the TWENTY-FIFTH of December, 2017

Geoni                     03-FEB-18
Monday, the SIXTH of August, 2018

Sarchand                  27-JAN-14
Monday, the TWENTY-EIGHTH of July, 2014


LAST_NAME                 HIRE_DATE
------------------------- ---------
REVIEW
--------------------------------------------------------------------------------
Bull                      20-FEB-15
Monday, the TWENTY-FOURTH of August, 2015

Dellinger                 24-JUN-16
Monday, the TWENTY-SIXTH of December, 2016

Cabrio                    07-FEB-17
Monday, the FOURTEENTH of August, 2017


LAST_NAME                 HIRE_DATE
------------------------- ---------
REVIEW
--------------------------------------------------------------------------------
Chung                     14-JUN-15
Monday, the TWENTY-FIRST of December, 2015

Dilly                     13-AUG-15
Monday, the FIFTEENTH of February, 2016

Venzl                     11-JUL-16
Monday, the SIXTEENTH of January, 2017


LAST_NAME                 HIRE_DATE
------------------------- ---------
REVIEW
--------------------------------------------------------------------------------
Perkins                   19-DEC-17
Monday, the TWENTY-FIFTH of June, 2018

Bell                      04-FEB-14
Monday, the ELEVENTH of August, 2014

Everett                   03-MAR-15
Monday, the SEVENTH of September, 2015


LAST_NAME                 HIRE_DATE
------------------------- ---------
REVIEW
--------------------------------------------------------------------------------
McLeod                    01-JUL-16
Monday, the SECOND of January, 2017

Jones                     17-MAR-17
Monday, the EIGHTEENTH of September, 2017

Walsh                     24-APR-16
Monday, the THIRTY-FIRST of October, 2016


LAST_NAME                 HIRE_DATE
------------------------- ---------
REVIEW
--------------------------------------------------------------------------------
Feeney                    23-MAY-16
Monday, the TWENTY-EIGHTH of November, 2016

OConnell                  21-JUN-17
Monday, the TWENTY-FIFTH of December, 2017


107 rows selected.

10.	
 Display the last name, hire date, and day of the week on which the employee started. Label the column DAY. Order the results by the day of the week, starting with Monday.

SQL> SELECT last_name,
  2         hire_date,
  3         TO_CHAR(hire_date, 'fmDay') AS "DAY"
  4  FROM employees
  5  ORDER BY CASE TO_CHAR(hire_date, 'fmDay')
  6             WHEN 'Monday' THEN 1
  7             WHEN 'Tuesday' THEN 2
  8             WHEN 'Wednesday' THEN 3
  9             WHEN 'Thursday' THEN 4
 10             WHEN 'Friday' THEN 5
 11             WHEN 'Saturday' THEN 6
 12             WHEN 'Sunday' THEN 7
 13           END;

LAST_NAME                 HIRE_DATE DAY
------------------------- --------- ------------------------------------
Feeney                    23-MAY-16 Monday
Stiles                    26-OCT-15 Monday
Yang                      21-SEP-15 Monday
Venzl                     11-JUL-16 Monday
King                      17-JUN-13 Monday
Sarchand                  27-JAN-14 Monday
Partners                  05-JAN-15 Monday
Marlow                    16-FEB-15 Monday
Davis                     17-AUG-15 Monday
Urman                     07-MAR-16 Monday
Chen                      28-SEP-15 Monday

LAST_NAME                 HIRE_DATE DAY
------------------------- --------- ------------------------------------
Zlotkey                   29-JAN-18 Monday
Martinez                  17-FEB-14 Monday
Olson                     10-APR-17 Monday
Everett                   03-MAR-15 Tuesday
Bell                      04-FEB-14 Tuesday
Perkins                   19-DEC-17 Tuesday
Cabrio                    07-FEB-17 Tuesday
Fleaur                    23-FEB-16 Tuesday
Doran                     15-DEC-15 Tuesday
Smith                     10-MAR-15 Tuesday
Sully                     04-MAR-14 Tuesday

LAST_NAME                 HIRE_DATE DAY
------------------------- --------- ------------------------------------
Bernstein                 24-MAR-15 Tuesday
Errazuriz                 10-MAR-15 Tuesday
Philtanker                06-FEB-18 Tuesday
Gee                       12-DEC-17 Tuesday
Himuro                    15-NOV-16 Tuesday
Nguyen                    07-FEB-17 Tuesday
Whalen                    17-SEP-13 Tuesday
Matos                     15-MAR-16 Tuesday
Sciarra                   30-SEP-15 Wednesday
Kaufling                  01-MAY-13 Wednesday
Mikkilineni               28-SEP-16 Wednesday

LAST_NAME                 HIRE_DATE DAY
------------------------- --------- ------------------------------------
Patel                     06-APR-16 Wednesday
Singh                     01-OCT-14 Wednesday
Olsen                     30-MAR-16 Wednesday
Vishney                   11-NOV-15 Wednesday
Marvins                   24-JAN-18 Wednesday
Ozer                      11-MAR-15 Wednesday
Bloom                     23-MAR-16 Wednesday
Grant                     24-MAY-17 Wednesday
Sullivan                  21-JUN-17 Wednesday
OConnell                  21-JUN-17 Wednesday
Jacobs                    07-JUN-12 Thursday

LAST_NAME                 HIRE_DATE DAY
------------------------- --------- ------------------------------------
Dilly                     13-AUG-15 Thursday
Johnson                   04-JAN-18 Thursday
Taylor                    24-MAR-16 Thursday
Hutton                    19-MAR-15 Thursday
Smith                     23-FEB-17 Thursday
Sewall                    03-NOV-16 Thursday
King                      30-JAN-14 Thursday
Tuvault                   23-NOV-17 Thursday
Hall                      20-AUG-15 Thursday
Davies                    29-JAN-15 Thursday
Rajs                      17-OCT-13 Thursday

LAST_NAME                 HIRE_DATE DAY
------------------------- --------- ------------------------------------
Bissot                    20-AUG-15 Thursday
Markle                    08-MAR-18 Thursday
Nayer                     16-JUL-15 Thursday
Mourgos                   16-NOV-17 Thursday
Colmenares                10-AUG-17 Thursday
Baida                     24-DEC-15 Thursday
Popp                      07-DEC-17 Thursday
Faviet                    16-AUG-12 Thursday
Williams                  25-JUN-15 Thursday
Garcia                    13-JAN-11 Thursday
Gietz                     07-JUN-12 Thursday

LAST_NAME                 HIRE_DATE DAY
------------------------- --------- ------------------------------------
Higgins                   07-JUN-12 Thursday
Brown                     07-JUN-12 Thursday
Atkinson                  30-OCT-15 Friday
McEwen                    01-AUG-14 Friday
Bull                      20-FEB-15 Friday
Lee                       23-FEB-18 Friday
Jackson                   05-FEB-16 Friday
Gruenberg                 17-AUG-12 Friday
Li                        07-DEC-12 Friday
Tobias                    24-JUL-15 Friday
Dellinger                 24-JUN-16 Friday

LAST_NAME                 HIRE_DATE DAY
------------------------- --------- ------------------------------------
Weiss                     18-JUL-14 Friday
Fripp                     10-APR-15 Friday
Bates                     24-MAR-17 Friday
Cambrault                 09-DEC-16 Friday
McLeod                    01-JUL-16 Friday
Tucker                    30-JAN-15 Friday
Jones                     17-MAR-17 Friday
Seo                       12-FEB-16 Friday
Rogers                    26-AUG-16 Friday
Vollman                   10-OCT-15 Saturday
Khoo                      18-MAY-13 Saturday

LAST_NAME                 HIRE_DATE DAY
------------------------- --------- ------------------------------------
Grant                     13-JAN-18 Saturday
Mallin                    14-JUN-14 Saturday
Livingston                23-APR-16 Saturday
Vargas                    09-JUL-16 Saturday
Banda                     21-APR-18 Saturday
Landry                    14-JAN-17 Saturday
Kumar                     21-APR-18 Saturday
Ande                      24-MAR-18 Saturday
Geoni                     03-FEB-18 Saturday
Chung                     14-JUN-15 Sunday
James                     03-JAN-16 Sunday

LAST_NAME                 HIRE_DATE DAY
------------------------- --------- ------------------------------------
Miller                    21-MAY-17 Sunday
Taylor                    24-JAN-16 Sunday
Greene                    19-MAR-17 Sunday
Fox                       24-JAN-16 Sunday
Walsh                     24-APR-16 Sunday
Ladwig                    14-JUL-13 Sunday
Cambrault                 15-OCT-17 Sunday
Abel                      11-MAY-14 Sunday

107 rows selected.

11.Create a query that displays the employees’ last names and commission amounts. If an employee does not earn commission, show “No Commission.” Label the column COMM.

SQL> SELECT last_name,
  2         NVL(TO_CHAR(commission_pct), 'No Commission') AS "COMM"
  3  FROM employees;

LAST_NAME                 COMM
------------------------- ----------------------------------------
Grant                     No Commission
Whalen                    No Commission
Martinez                  No Commission
Davis                     No Commission
Jacobs                    No Commission
Brown                     No Commission
Higgins                   No Commission
Gietz                     No Commission
King                      No Commission
Yang                      No Commission
Garcia                    No Commission

LAST_NAME                 COMM
------------------------- ----------------------------------------
James                     No Commission
Miller                    No Commission
Williams                  No Commission
Jackson                   No Commission
Nguyen                    No Commission
Gruenberg                 No Commission
Faviet                    No Commission
Chen                      No Commission
Sciarra                   No Commission
Urman                     No Commission
Popp                      No Commission

LAST_NAME                 COMM
------------------------- ----------------------------------------
Li                        No Commission
Khoo                      No Commission
Baida                     No Commission
Tobias                    No Commission
Himuro                    No Commission
Colmenares                No Commission
Weiss                     No Commission
Fripp                     No Commission
Kaufling                  No Commission
Vollman                   No Commission
Mourgos                   No Commission

LAST_NAME                 COMM
------------------------- ----------------------------------------
Nayer                     No Commission
Mikkilineni               No Commission
Landry                    No Commission
Markle                    No Commission
Bissot                    No Commission
Atkinson                  No Commission
Marlow                    No Commission
Olson                     No Commission
Mallin                    No Commission
Rogers                    No Commission
Gee                       No Commission

LAST_NAME                 COMM
------------------------- ----------------------------------------
Philtanker                No Commission
Ladwig                    No Commission
Stiles                    No Commission
Seo                       No Commission
Patel                     No Commission
Rajs                      No Commission
Davies                    No Commission
Matos                     No Commission
Vargas                    No Commission
Singh                     .4
Partners                  .3

LAST_NAME                 COMM
------------------------- ----------------------------------------
Errazuriz                 .3
Cambrault                 .3
Zlotkey                   .2
Tucker                    .3
Bernstein                 .25
Hall                      .25
Olsen                     .2
Cambrault                 .2
Tuvault                   .15
King                      .35
Sully                     .35

LAST_NAME                 COMM
------------------------- ----------------------------------------
McEwen                    .35
Smith                     .3
Doran                     .3
Sewall                    .25
Vishney                   .25
Greene                    .15
Marvins                   .1
Lee                       .1
Ande                      .1
Banda                     .1
Ozer                      .25

LAST_NAME                 COMM
------------------------- ----------------------------------------
Bloom                     .2
Fox                       .2
Smith                     .15
Bates                     .15
Kumar                     .1
Abel                      .3
Hutton                    .25
Taylor                    .2
Livingston                .2
Grant                     .15
Johnson                   .1

LAST_NAME                 COMM
------------------------- ----------------------------------------
Taylor                    No Commission
Fleaur                    No Commission
Sullivan                  No Commission
Geoni                     No Commission
Sarchand                  No Commission
Bull                      No Commission
Dellinger                 No Commission
Cabrio                    No Commission
Chung                     No Commission
Dilly                     No Commission
Venzl                     No Commission

LAST_NAME                 COMM
------------------------- ----------------------------------------
Perkins                   No Commission
Bell                      No Commission
Everett                   No Commission
McLeod                    No Commission
Jones                     No Commission
Walsh                     No Commission
Feeney                    No Commission
OConnell                  No Commission

107 rows selected.

12. Create a query that displays the first eight characters of the employees’ last names and indicates the amounts of their salaries with asterisks. Each asterisk signifies a thousand dollars. Sort the data in descending order of salary. Label the column EMPLOYEES_AND_THEIR_SALARIES.

SQL> SELECT SUBSTR(last_name, 1, 8) || ' ' ||
  2         RPAD('*', TRUNC(salary/1000), '*') AS "EMPLOYEES_AND_THEIR_SALARIES"
  3  FROM employees
  4  ORDER BY salary DESC;

EMPLOYEES_AND_THEIR_SALARIES
--------------------------------------------------------------------------------
King ************************
Yang *****************
Garcia *****************
Singh **************
Partners *************
Martinez *************
Higgins ************
Gruenber ************
Errazuri ************
Ozer ***********
Cambraul ***********

EMPLOYEES_AND_THEIR_SALARIES
--------------------------------------------------------------------------------
Abel ***********
Li ***********
Vishney **********
Zlotkey **********
Bloom **********
King **********
Tucker **********
Brown **********
Fox *********
Bernstei *********
Sully *********

EMPLOYEES_AND_THEIR_SALARIES
--------------------------------------------------------------------------------
Greene *********
James *********
Faviet *********
Hall *********
McEwen *********
Hutton ********
Taylor ********
Livingst ********
Gietz ********
Chen ********
Fripp ********

EMPLOYEES_AND_THEIR_SALARIES
--------------------------------------------------------------------------------
Weiss ********
Olsen ********
Smith ********
Kaufling *******
Urman *******
Sciarra *******
Doran *******
Cambraul *******
Smith *******
Bates *******
Marvins *******

EMPLOYEES_AND_THEIR_SALARIES
--------------------------------------------------------------------------------
Tuvault *******
Sewall *******
Grant *******
Popp ******
Lee ******
Vollman ******
Jacobs ******
Ande ******
Banda ******
Johnson ******
Kumar ******

EMPLOYEES_AND_THEIR_SALARIES
--------------------------------------------------------------------------------
Davis ******
Miller ******
Mourgos *****
Jackson ****
Williams ****
Whalen ****
Nguyen ****
Sarchand ****
Bull ****
Bell ****
Everett ***

EMPLOYEES_AND_THEIR_SALARIES
--------------------------------------------------------------------------------
Chung ***
Ladwig ***
Dilly ***
Rajs ***
Dellinge ***
Mallin ***
Bissot ***
McLeod ***
Nayer ***
Stiles ***
Taylor ***

EMPLOYEES_AND_THEIR_SALARIES
--------------------------------------------------------------------------------
Fleaur ***
Walsh ***
Davies ***
Khoo ***
Feeney ***
Cabrio ***
Venzl **
Baida **
Rogers **
Jones **
Tobias **

EMPLOYEES_AND_THEIR_SALARIES
--------------------------------------------------------------------------------
Geoni **
Atkinson **
Seo **
Mikkilin **
Grant **
Himuro **
Matos **
OConnell **
Patel **
Colmenar **
Sullivan **

EMPLOYEES_AND_THEIR_SALARIES
--------------------------------------------------------------------------------
Marlow **
Vargas **
Perkins **
Landry **
Gee **
Markle **
Philtank **
Olson **

107 rows selected.

13. Using the DECODE function, write a query that displays the grade of all employees based on the value of the column JOB_ID, using the following data: PRESIDENT-A,MANAGER-B,SALESMAN-C,CLERK-D

SQL> SELECT ename,
  2         job,
  3         DECODE(job,
  4                'PRESIDENT', 'A',
  5                'MANAGER',   'B',
  6                'SALESMAN',  'C',
  7                'CLERK',     'D',
  8                'No Grade') AS grade
  9  FROM emp;
FROM emp
     *
ERROR at line 9:
ORA-00942: table or view does not exist


SQL> SELECT ename,
  2         job,
  3         DECODE(job,
  4                'PRESIDENT', 'A',
  5                'MANAGER',   'B',
  6                'SALESMAN',  'C',
  7                'CLERK',     'D',
  8                'No Grade') AS grade
  9  FROM emp;
FROM emp
     *
ERROR at line 9:
ORA-00942: table or view does not exist


SQL> SELECT first_name,last_name,
  2         job,
  3         DECODE(job,
  4                'PRESIDENT', 'A',
  5                'MANAGER',   'B',
  6                'SALESMAN',  'C',
  7                'CLERK',     'D',
  8                'No Grade') AS grade
  9  FROM employees;
       DECODE(job,
              *
ERROR at line 3:
ORA-00904: "JOB": invalid identifier


SQL> SELECT last_name,
  2         job_id,
  3         DECODE(job_id,
  4                'AD_PRES',  'A',
  5                'SA_MAN',   'B',
  6                'SA_REP',   'C',
  7                'ST_CLERK', 'D',
  8                'No Grade') AS grade
  9  FROM employees;

LAST_NAME                 JOB_ID     GRADE
------------------------- ---------- --------
Abel                      SA_REP     C
Ande                      SA_REP     C
Atkinson                  ST_CLERK   D
Baida                     PU_CLERK   No Grade
Banda                     SA_REP     C
Bates                     SA_REP     C
Bell                      SH_CLERK   No Grade
Bernstein                 SA_REP     C
Bissot                    ST_CLERK   D
Bloom                     SA_REP     C
Brown                     PR_REP     No Grade

LAST_NAME                 JOB_ID     GRADE
------------------------- ---------- --------
Bull                      SH_CLERK   No Grade
Cabrio                    SH_CLERK   No Grade
Cambrault                 SA_MAN     B
Cambrault                 SA_REP     C
Chen                      FI_ACCOUNT No Grade
Chung                     SH_CLERK   No Grade
Colmenares                PU_CLERK   No Grade
Davies                    ST_CLERK   D
Davis                     MK_REP     No Grade
Dellinger                 SH_CLERK   No Grade
Dilly                     SH_CLERK   No Grade

LAST_NAME                 JOB_ID     GRADE
------------------------- ---------- --------
Doran                     SA_REP     C
Errazuriz                 SA_MAN     B
Everett                   SH_CLERK   No Grade
Faviet                    FI_ACCOUNT No Grade
Feeney                    SH_CLERK   No Grade
Fleaur                    SH_CLERK   No Grade
Fox                       SA_REP     C
Fripp                     ST_MAN     No Grade
Garcia                    AD_VP      No Grade
Gee                       ST_CLERK   D
Geoni                     SH_CLERK   No Grade

LAST_NAME                 JOB_ID     GRADE
------------------------- ---------- --------
Gietz                     AC_ACCOUNT No Grade
Grant                     SH_CLERK   No Grade
Grant                     SA_REP     C
Greene                    SA_REP     C
Gruenberg                 FI_MGR     No Grade
Hall                      SA_REP     C
Higgins                   AC_MGR     No Grade
Himuro                    PU_CLERK   No Grade
Hutton                    SA_REP     C
Jackson                   IT_PROG    No Grade
Jacobs                    HR_REP     No Grade

LAST_NAME                 JOB_ID     GRADE
------------------------- ---------- --------
James                     IT_PROG    No Grade
Johnson                   SA_REP     C
Jones                     SH_CLERK   No Grade
Kaufling                  ST_MAN     No Grade
Khoo                      PU_CLERK   No Grade
King                      SA_REP     C
King                      AD_PRES    A
Kumar                     SA_REP     C
Ladwig                    ST_CLERK   D
Landry                    ST_CLERK   D
Lee                       SA_REP     C

LAST_NAME                 JOB_ID     GRADE
------------------------- ---------- --------
Li                        PU_MAN     No Grade
Livingston                SA_REP     C
Mallin                    ST_CLERK   D
Markle                    ST_CLERK   D
Marlow                    ST_CLERK   D
Martinez                  MK_MAN     No Grade
Marvins                   SA_REP     C
Matos                     ST_CLERK   D
McEwen                    SA_REP     C
McLeod                    SH_CLERK   No Grade
Mikkilineni               ST_CLERK   D

LAST_NAME                 JOB_ID     GRADE
------------------------- ---------- --------
Miller                    IT_PROG    No Grade
Mourgos                   ST_MAN     No Grade
Nayer                     ST_CLERK   D
Nguyen                    IT_PROG    No Grade
OConnell                  SH_CLERK   No Grade
Olsen                     SA_REP     C
Olson                     ST_CLERK   D
Ozer                      SA_REP     C
Partners                  SA_MAN     B
Patel                     ST_CLERK   D
Perkins                   SH_CLERK   No Grade

LAST_NAME                 JOB_ID     GRADE
------------------------- ---------- --------
Philtanker                ST_CLERK   D
Popp                      FI_ACCOUNT No Grade
Rajs                      ST_CLERK   D
Rogers                    ST_CLERK   D
Sarchand                  SH_CLERK   No Grade
Sciarra                   FI_ACCOUNT No Grade
Seo                       ST_CLERK   D
Sewall                    SA_REP     C
Singh                     SA_MAN     B
Smith                     SA_REP     C
Smith                     SA_REP     C

LAST_NAME                 JOB_ID     GRADE
------------------------- ---------- --------
Stiles                    ST_CLERK   D
Sullivan                  SH_CLERK   No Grade
Sully                     SA_REP     C
Taylor                    SA_REP     C
Taylor                    SH_CLERK   No Grade
Tobias                    PU_CLERK   No Grade
Tucker                    SA_REP     C
Tuvault                   SA_REP     C
Urman                     FI_ACCOUNT No Grade
Vargas                    ST_CLERK   D
Venzl                     SH_CLERK   No Grade

LAST_NAME                 JOB_ID     GRADE
------------------------- ---------- --------
Vishney                   SA_REP     C
Vollman                   ST_MAN     No Grade
Walsh                     SH_CLERK   No Grade
Weiss                     ST_MAN     No Grade
Whalen                    AD_ASST    No Grade
Williams                  IT_PROG    No Grade
Yang                      AD_VP      No Grade
Zlotkey                   SA_MAN     B

107 rows selected.

14.Rewrite the statement in the preceding exercise using the CASE syntax

SQL> SELECT last_name,
  2         job_id,
  3         CASE
  4             WHEN job_id = 'AD_PRES'  THEN 'A'
  5             WHEN job_id = 'SA_MAN'   THEN 'B'
  6             WHEN job_id = 'SA_REP'   THEN 'C'
  7             WHEN job_id = 'ST_CLERK' THEN 'D'
  8             ELSE 'No Grade'
  9         END AS grade
 10  FROM employees;

LAST_NAME                 JOB_ID     GRADE
------------------------- ---------- --------
Abel                      SA_REP     C
Ande                      SA_REP     C
Atkinson                  ST_CLERK   D
Baida                     PU_CLERK   No Grade
Banda                     SA_REP     C
Bates                     SA_REP     C
Bell                      SH_CLERK   No Grade
Bernstein                 SA_REP     C
Bissot                    ST_CLERK   D
Bloom                     SA_REP     C
Brown                     PR_REP     No Grade

LAST_NAME                 JOB_ID     GRADE
------------------------- ---------- --------
Bull                      SH_CLERK   No Grade
Cabrio                    SH_CLERK   No Grade
Cambrault                 SA_MAN     B
Cambrault                 SA_REP     C
Chen                      FI_ACCOUNT No Grade
Chung                     SH_CLERK   No Grade
Colmenares                PU_CLERK   No Grade
Davies                    ST_CLERK   D
Davis                     MK_REP     No Grade
Dellinger                 SH_CLERK   No Grade
Dilly                     SH_CLERK   No Grade

LAST_NAME                 JOB_ID     GRADE
------------------------- ---------- --------
Doran                     SA_REP     C
Errazuriz                 SA_MAN     B
Everett                   SH_CLERK   No Grade
Faviet                    FI_ACCOUNT No Grade
Feeney                    SH_CLERK   No Grade
Fleaur                    SH_CLERK   No Grade
Fox                       SA_REP     C
Fripp                     ST_MAN     No Grade
Garcia                    AD_VP      No Grade
Gee                       ST_CLERK   D
Geoni                     SH_CLERK   No Grade

LAST_NAME                 JOB_ID     GRADE
------------------------- ---------- --------
Gietz                     AC_ACCOUNT No Grade
Grant                     SH_CLERK   No Grade
Grant                     SA_REP     C
Greene                    SA_REP     C
Gruenberg                 FI_MGR     No Grade
Hall                      SA_REP     C
Higgins                   AC_MGR     No Grade
Himuro                    PU_CLERK   No Grade
Hutton                    SA_REP     C
Jackson                   IT_PROG    No Grade
Jacobs                    HR_REP     No Grade

LAST_NAME                 JOB_ID     GRADE
------------------------- ---------- --------
James                     IT_PROG    No Grade
Johnson                   SA_REP     C
Jones                     SH_CLERK   No Grade
Kaufling                  ST_MAN     No Grade
Khoo                      PU_CLERK   No Grade
King                      SA_REP     C
King                      AD_PRES    A
Kumar                     SA_REP     C
Ladwig                    ST_CLERK   D
Landry                    ST_CLERK   D
Lee                       SA_REP     C

LAST_NAME                 JOB_ID     GRADE
------------------------- ---------- --------
Li                        PU_MAN     No Grade
Livingston                SA_REP     C
Mallin                    ST_CLERK   D
Markle                    ST_CLERK   D
Marlow                    ST_CLERK   D
Martinez                  MK_MAN     No Grade
Marvins                   SA_REP     C
Matos                     ST_CLERK   D
McEwen                    SA_REP     C
McLeod                    SH_CLERK   No Grade
Mikkilineni               ST_CLERK   D

LAST_NAME                 JOB_ID     GRADE
------------------------- ---------- --------
Miller                    IT_PROG    No Grade
Mourgos                   ST_MAN     No Grade
Nayer                     ST_CLERK   D
Nguyen                    IT_PROG    No Grade
OConnell                  SH_CLERK   No Grade
Olsen                     SA_REP     C
Olson                     ST_CLERK   D
Ozer                      SA_REP     C
Partners                  SA_MAN     B
Patel                     ST_CLERK   D
Perkins                   SH_CLERK   No Grade

LAST_NAME                 JOB_ID     GRADE
------------------------- ---------- --------
Philtanker                ST_CLERK   D
Popp                      FI_ACCOUNT No Grade
Rajs                      ST_CLERK   D
Rogers                    ST_CLERK   D
Sarchand                  SH_CLERK   No Grade
Sciarra                   FI_ACCOUNT No Grade
Seo                       ST_CLERK   D
Sewall                    SA_REP     C
Singh                     SA_MAN     B
Smith                     SA_REP     C
Smith                     SA_REP     C

LAST_NAME                 JOB_ID     GRADE
------------------------- ---------- --------
Stiles                    ST_CLERK   D
Sullivan                  SH_CLERK   No Grade
Sully                     SA_REP     C
Taylor                    SA_REP     C
Taylor                    SH_CLERK   No Grade
Tobias                    PU_CLERK   No Grade
Tucker                    SA_REP     C
Tuvault                   SA_REP     C
Urman                     FI_ACCOUNT No Grade
Vargas                    ST_CLERK   D
Venzl                     SH_CLERK   No Grade

LAST_NAME                 JOB_ID     GRADE
------------------------- ---------- --------
Vishney                   SA_REP     C
Vollman                   ST_MAN     No Grade
Walsh                     SH_CLERK   No Grade
Weiss                     ST_MAN     No Grade
Whalen                    AD_ASST    No Grade
Williams                  IT_PROG    No Grade
Yang                      AD_VP      No Grade
Zlotkey                   SA_MAN     B

107 rows selected.

SQL> ^A
SP2-0042: unknown command "" - rest of line ignored.
SQL>
