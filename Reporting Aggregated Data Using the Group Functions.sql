
1.Find the highest, lowest, sum, and average salary of all employees. Label the columns
SQL> select max(salary) as "highest",min(salary) as "lowest",sum(salary) as "sum",avg(salary) as "average salary" from employees;

   highest     lowest        sum average salary
---------- ---------- ---------- --------------
     24000       2100     691416     6461.83178

2.Maximum, Minimum, Sum, and Average, respectively. Round your results to the nearest whole number.

SQL> select last_name,max(salary) as "highest",min(salary) as "lowest",sum(salary) as "sum",avg(salary) as "average salary" from employees group by last_name;

LAST_NAME                    highest     lowest        sum average salary
------------------------- ---------- ---------- ---------- --------------
Grant                           7000       2600       9600           4800
Martinez                       13000      13000      13000          13000
Brown                          10000      10000      10000          10000
Nguyen                          4200       4200       4200           4200
Fripp                           8200       8200       8200           8200
Landry                          2400       2400       2400           2400
Cambrault                      11000       7500      18500           9250
Tuvault                         7000       7000       7000           7000
Livingston                      8400       8400       8400           8400
Dilly                           3600       3600       3600           3600
Feeney                          3000       3000       3000           3000

LAST_NAME                    highest     lowest        sum average salary
------------------------- ---------- ---------- ---------- --------------
Jackson                         4800       4800       4800           4800
Faviet                          9000       9000       9000           9000
Popp                            6900       6900       6900           6900
Kaufling                        7900       7900       7900           7900
Vollman                         6500       6500       6500           6500
Nayer                           3200       3200       3200           3200
Atkinson                        2800       2800       2800           2800
Olson                           2100       2100       2100           2100
Rogers                          2900       2900       2900           2900
Philtanker                      2200       2200       2200           2200
Zlotkey                        10500      10500      10500          10500

LAST_NAME                    highest     lowest        sum average salary
------------------------- ---------- ---------- ---------- --------------
Bernstein                       9500       9500       9500           9500
McEwen                          9000       9000       9000           9000
Lee                             6800       6800       6800           6800
Ande                            6400       6400       6400           6400
Abel                           11000      11000      11000          11000
Tobias                          2800       2800       2800           2800
Himuro                          2600       2600       2600           2600
Colmenares                      2500       2500       2500           2500
Gee                             2400       2400       2400           2400
Davies                          3100       3100       3100           3100
Doran                           7500       7500       7500           7500

LAST_NAME                    highest     lowest        sum average salary
------------------------- ---------- ---------- ---------- --------------
Sewall                          7000       7000       7000           7000
Marvins                         7200       7200       7200           7200
Taylor                          8600       3200      11800           5900
Chung                           3800       3800       3800           3800
McLeod                          3200       3200       3200           3200
Yang                           17000      17000      17000          17000
Miller                          6000       6000       6000           6000
Mikkilineni                     2700       2700       2700           2700
Seo                             2700       2700       2700           2700
Patel                           2500       2500       2500           2500
Singh                          14000      14000      14000          14000

LAST_NAME                    highest     lowest        sum average salary
------------------------- ---------- ---------- ---------- --------------
Partners                       13500      13500      13500          13500
Sully                           9500       9500       9500           9500
Kumar                           6100       6100       6100           6100
Sarchand                        4200       4200       4200           4200
Bull                            4100       4100       4100           4100
Walsh                           3100       3100       3100           3100
King                           24000      10000      34000          17000
James                           9000       9000       9000           9000
Chen                            8200       8200       8200           8200
Urman                           7800       7800       7800           7800
Weiss                           8000       8000       8000           8000

LAST_NAME                    highest     lowest        sum average salary
------------------------- ---------- ---------- ---------- --------------
Ladwig                          3600       3600       3600           3600
Stiles                          3200       3200       3200           3200
Vargas                          2500       2500       2500           2500
Errazuriz                      12000      12000      12000          12000
Banda                           6200       6200       6200           6200
Hutton                          8800       8800       8800           8800
Davis                           6000       6000       6000           6000
Jacobs                          6500       6500       6500           6500
Gietz                           8300       8300       8300           8300
Garcia                         17000      17000      17000          17000
Gruenberg                      12008      12008      12008          12008

LAST_NAME                    highest     lowest        sum average salary
------------------------- ---------- ---------- ---------- --------------
Sciarra                         7700       7700       7700           7700
Khoo                            3100       3100       3100           3100
Marlow                          2500       2500       2500           2500
Rajs                            3500       3500       3500           3500
Hall                            9000       9000       9000           9000
Olsen                           8000       8000       8000           8000
Vishney                        10500      10500      10500          10500
Sullivan                        2500       2500       2500           2500
Dellinger                       3400       3400       3400           3400
Perkins                         2500       2500       2500           2500
Everett                         3900       3900       3900           3900

LAST_NAME                    highest     lowest        sum average salary
------------------------- ---------- ---------- ---------- --------------
Whalen                          4400       4400       4400           4400
Li                             11000      11000      11000          11000
Mallin                          3300       3300       3300           3300
Matos                           2600       2600       2600           2600
Ozer                           11500      11500      11500          11500
Bloom                          10000      10000      10000          10000
Bates                           7300       7300       7300           7300
Johnson                         6200       6200       6200           6200
Fleaur                          3100       3100       3100           3100
Geoni                           2800       2800       2800           2800
Cabrio                          3000       3000       3000           3000

LAST_NAME                    highest     lowest        sum average salary
------------------------- ---------- ---------- ---------- --------------
OConnell                        2600       2600       2600           2600
Higgins                        12008      12008      12008          12008
Williams                        4800       4800       4800           4800
Baida                           2900       2900       2900           2900
Mourgos                         5800       5800       5800           5800
Markle                          2200       2200       2200           2200
Bissot                          3300       3300       3300           3300
Tucker                         10000      10000      10000          10000
Smith                           8000       7400      15400           7700
Greene                          9500       9500       9500           9500
Fox                             9600       9600       9600           9600

LAST_NAME                    highest     lowest        sum average salary
------------------------- ---------- ---------- ---------- --------------
Venzl                           2900       2900       2900           2900
Bell                            4000       4000       4000           4000
Jones                           2800       2800       2800           2800

102 rows selected.

3.Modify the above query to display the minimum, maximum, sum, and average salary for each job type.

SQL> select max(salary) as "maximum",min(salary) as "minimum",sum(salary) as "sum",avg(salary) as "average salary" from employees;

   maximum    minimum        sum average salary
---------- ---------- ---------- --------------
     24000       2100     691416     6461.83178


SQL> select round(max(salary)) as "maximum",round(min(salary)) as "minimum",round(sum(salary)) as "sum",round(avg(salary)) as "average salary" from employees;

   maximum    minimum        sum average salary
---------- ---------- ---------- --------------
     24000       2100     691416           6462

SQL> select job_id,round(max(salary)) as "maximum",round(min(salary)) as "minimum",round(sum(salary)) as "sum",round(avg(salary)) as "average salary" from employees group by job_id;

JOB_ID        maximum    minimum        sum average salary
---------- ---------- ---------- ---------- --------------
SH_CLERK         4200       2500      64300           3215
AD_ASST          4400       4400       4400           4400
MK_MAN          13000      13000      13000          13000
MK_REP           6000       6000       6000           6000
HR_REP           6500       6500       6500           6500
PR_REP          10000      10000      10000          10000
AC_MGR          12008      12008      12008          12008
AC_ACCOUNT       8300       8300       8300           8300
AD_PRES         24000      24000      24000          24000
AD_VP           17000      17000      34000          17000
IT_PROG          9000       4200      28800           5760

JOB_ID        maximum    minimum        sum average salary
---------- ---------- ---------- ---------- --------------
FI_MGR          12008      12008      12008          12008
FI_ACCOUNT       9000       6900      39600           7920
PU_MAN          11000      11000      11000          11000
PU_CLERK         3100       2500      13900           2780
ST_MAN           8200       5800      36400           7280
ST_CLERK         3600       2100      55700           2785
SA_MAN          14000      10500      61000          12200
SA_REP          11500       6100     250500           8350

19 rows selected.

4.Write a query to display the number of people with the same job

SQL> select distinc job_id,count
  2
SQL> select distinc job_id,count(job_id) as "same job" from employeees group by job_id;
select distinc job_id,count(job_id) as "same job" from employeees group by job_id
                                                       *
ERROR at line 1:
ORA-00942: table or view does not exist


SQL> select distinc job_id,count(job_id) as "same job" from employees group by job_id;
select distinc job_id,count(job_id) as "same job" from employees group by job_id
       *
ERROR at line 1:
ORA-00904: "DISTINC": invalid identifier


SQL> select distinct job_id,count(job_id) as "same job" from employees group by job_id;

JOB_ID       same job
---------- ----------
AC_ACCOUNT          1
AC_MGR              1
AD_ASST             1
AD_PRES             1
AD_VP               2
FI_ACCOUNT          5
FI_MGR              1
HR_REP              1
IT_PROG             5
MK_MAN              1
MK_REP              1

JOB_ID       same job
---------- ----------
PR_REP              1
PU_CLERK            5
PU_MAN              1
SA_MAN              5
SA_REP             30
SH_CLERK           20
ST_CLERK           20
ST_MAN              5

19 rows selected.

5. Determine the number of managers without listing them. Label the column Number of Managers


SQL> select count(job_id) as "mangers" from employees where job_id like "%MGR";
select count(job_id) as "mangers" from employees where job_id like "%MGR"
                                                                   *
ERROR at line 1:
ORA-00904: "%MGR": invalid identifier


SQL> select count(job_id) as "mangers" from employees where job_id LIKE "%MGR";
select count(job_id) as "mangers" from employees where job_id LIKE "%MGR"
                                                                   *
ERROR at line 1:
ORA-00904: "%MGR": invalid identifier


SQL> select count(job_id) as "mangers" from employees where job_id LIKE '%MGR';

   mangers
----------
         2
6.Find the difference between the highest and lowest salaries. Label the column DIFFERENCE.
SQL> select max(salary) - min(salary) as "diffrence" from employees;

 diffrence
----------
     21900

7.Create a report to display the manager number and the salary of the lowest-paid employee for that manager. Exclude anyone whose manager is not known. Exclude any groups where the minimum salary is $2000 or less. Sort the output in descending order of salary.
SQL> SELECT manager_id,
  2         MIN(salary) AS lowest_salary
  3  FROM employees
  4  WHERE manager_id IS NOT NULL
  5  GROUP BY manager_id
  6  HAVING MIN(salary) > 2000
  7  ORDER BY lowest_salary DESC;

MANAGER_ID LOWEST_SALARY
---------- -------------
       102          9000
       205          8300
       145          7000
       146          7000
       108          6900
       147          6200
       149          6200
       148          6100
       201          6000
       100          5800
       101          4400

MANAGER_ID LOWEST_SALARY
---------- -------------
       103          4200
       123          2500
       114          2500
       124          2500
       122          2200
       120          2200
       121          2100

18 rows selected.

8.Create a query to display the total number of employees and, of that total, the number of employees hired in 1980, 1981, and 1982. Create appropriate column headings

SQL> SELECT COUNT(*) AS "Total Employees",
  2         SUM(CASE WHEN EXTRACT(YEAR FROM hire_date) = 1980 THEN 1 ELSE 0 END) AS "Hired in 1980",
  3         SUM(CASE WHEN EXTRACT(YEAR FROM hire_date) = 1981 THEN 1 ELSE 0 END) AS "Hired in 1981",
  4         SUM(CASE WHEN EXTRACT(YEAR FROM hire_date) = 1982 THEN 1 ELSE 0 END) AS "Hired in 1982"
  5  FROM employees;

Total Employees Hired in 1980 Hired in 1981 Hired in 1982
--------------- ------------- ------------- -------------
            107             0             0             0

SQL>