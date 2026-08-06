Microsoft Windows [Version 10.0.26200.8973]
(c) Microsoft Corporation. All rights reserved.

C:\Users\user>sqlplus

SQL*Plus: Release 21.0.0.0.0 - Production on Thu Aug 6 08:41:01 2026
Version 21.3.0.0.0

Copyright (c) 1982, 2021, Oracle.  All rights reserved.

Enter user-name: system
Enter password:
Last Successful login time: Wed Aug 05 2026 23:04:01 +05:30

Connected to:
Oracle Database 21c Express Edition Release 21.0.0.0.0 - Production
Version 21.3.0.0.0

SQL> connect abc/abc123@localhost:1521/XEPDB1
Connected.
SQL> set serverout on;
SQL> declare
  2  cursor cur_ord is
  3  select * from orders;
  4  begin
  5  open cur_ord/
  6  /
open cur_ord/
            *
ERROR at line 5:
ORA-06550: line 5, column 13:
PLS-00103: Encountered the symbol "/" when expecting one of the following:
. ( % ; for


SQL> set serverout on;
SQL> delcare
SP2-0042: unknown command "delcare" - rest of line ignored.
SQL> declare
  2  cursor cur_ord is select * from orders;
  3  ord_cur order%rowtype;
  4  open cur_ord;
  5  fetch cur_ord into ord_cur;
  6  dbms_output.put_line(ord_cur.orderprice);
  7  /
ord_cur order%rowtype;
        *
ERROR at line 3:
ORA-06550: line 3, column 9:
PLS-00103: Encountered the symbol "ORDER" when expecting one of the following:
constant exception <an identifier>
<a double-quoted delimited-identifier> table columns long
double ref char standard time timestamp interval date binary
national character nchar


SQL> set serverout on;
SQL> declare
  2  cursor cur_ord is
  3  select * from orders;
  4  ord_cur order%rowtype;
  5  begin
  6  open cur_ord
  7  loop
  8  fetch cur_ord into ord_cur;
  9  dbms_output.put_line(ord_cur.orderprice);
 10  exit when cur_ord%notfound;
 11  end loop;
 12  close cur_ord;
 13  exception
 14  when others then
 15  dbms_output.put_line(sqlerrm);
 16  end;
 17  /
ord_cur order%rowtype;
        *
ERROR at line 4:
ORA-06550: line 4, column 9:
PLS-00103: Encountered the symbol "ORDER" when expecting one of the following:
constant exception <an identifier>
<a double-quoted delimited-identifier> table columns long
double ref char standard time timestamp interval date binary
national character nchar
The symbol "<an identifier> was inserted before "ORDER" to continue.
ORA-06550: line 7, column 1:
PLS-00103: Encountered the symbol "LOOP" when expecting one of the following:
. ( % ; for
The symbol "; was inserted before "LOOP" to continue.
ORA-06550: line 12, column 1:
PLS-00103: Encountered the symbol "CLOSE"


SQL> SET SERVEROUTPUT ON;
SQL>
SQL> DECLARE
  2      CURSOR cur_ord IS
  3          SELECT * FROM orders;
  4
  5      ord_cur orders%ROWTYPE;
  6  BEGIN
  7      OPEN cur_ord;
  8
  9      LOOP
 10          FETCH cur_ord INTO ord_cur;
 11          EXIT WHEN cur_ord%NOTFOUND;
 12
 13          DBMS_OUTPUT.PUT_LINE(ord_cur.orderprice);
 14      END LOOP;
 15
 16      CLOSE cur_ord;
 17
 18  EXCEPTION
 19      WHEN OTHERS THEN
 20          DBMS_OUTPUT.PUT_LINE(SQLERRM);
 21  END;
 22  /
5000
3200
1500
2000

PL/SQL procedure successfully completed.

SQL> connect hr/hr@//localhost:1521/XEPDB1
Connected.
SQL> select table_names from users_tables;
select table_names from users_tables
                        *
ERROR at line 1:
ORA-00942: table or view does not exist


SQL> select table_names from user_tables;
select table_names from user_tables
       *
ERROR at line 1:
ORA-00904: "TABLE_NAMES": invalid identifier


SQL> select table_name from user_tables;

TABLE_NAME
--------------------------------------------------------------------------------
REGIONS
COUNTRIES
LOCATIONS
DEPARTMENTS
JOBS
EMPLOYEES
JOB_HISTORY

7 rows selected.

SQL> set serverout on;
SQL> declare
  2  v_empid employees.employee_id%type :=&employee_id;
  3  v_sal employees.salary%type;
  4  v_comm employees.commision%type;
  5  v_net number;
  6  begin
  7  select salary,NVL(commision,0) into v_sal,v_comm from employees where employee_id=v_empid;
  8  v_net:=v_sal+v_comm;
  9  dbms_output.put_line('employee_id:'||v_empid);
 10  dbms_output.put_line('base salary:'||v_sal);
 11  dbms_output.put_line('commision:'||v_comm);
 12  dbms_output.put_line('v_net:'||v_net);
 13  exception
 14  when others then
 15  dbms_output.put_line(sqlerrm);
 16  end;
 17  /
Enter value for employee_id: 101
old   2: v_empid employees.employee_id%type :=&employee_id;
new   2: v_empid employees.employee_id%type :=101;
v_comm employees.commision%type;
                 *
ERROR at line 4:
ORA-06550: line 4, column 18:
PLS-00302: component 'COMMISION' must be declared
ORA-06550: line 0, column 0:
PL/SQL: Compilation unit analysis terminated


SQL> decsribe employees;
SP2-0734: unknown command beginning "decsribe e..." - rest of line ignored.
SQL> describe employees;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 EMPLOYEE_ID                               NOT NULL NUMBER(6)
 FIRST_NAME                                         VARCHAR2(20)
 LAST_NAME                                 NOT NULL VARCHAR2(25)
 EMAIL                                     NOT NULL VARCHAR2(25)
 PHONE_NUMBER                                       VARCHAR2(20)
 HIRE_DATE                                 NOT NULL DATE
 JOB_ID                                    NOT NULL VARCHAR2(10)
 SALARY                                             NUMBER(8,2)
 COMMISSION_PCT                                     NUMBER(2,2)
 MANAGER_ID                                         NUMBER(6)
 DEPARTMENT_ID                                      NUMBER(4)

SQL> set serverout on;
SQL>  declare
  2      v_empid employees.employee_id%type :=&employee_id;
  3      v_sal employees.salary%type;
  4      v_comm employees.COMMISSION_PCT %type;
  5      v_net number;
  6      begin
  7      select salary,NVL(commision,0) into v_sal,v_comm from employees where employee_id=v_empid;
  8      v_net:=v_sal+v_comm;
  9      dbms_output.put_line('employee_id:'||v_empid);
 10     dbms_output.put_line('base salary:'||v_sal);
 11     dbms_output.put_line('commision:'||v_comm);
 12     dbms_output.put_line('v_net:'||v_net);
 13     exception
 14     when others then
 15     dbms_output.put_line(sqlerrm);
 16     end;
 17     /
Enter value for employee_id: 102
old   2:     v_empid employees.employee_id%type :=&employee_id;
new   2:     v_empid employees.employee_id%type :=102;
    select salary,NVL(commision,0) into v_sal,v_comm from employees where employee_id=v_empid;
                      *
ERROR at line 7:
ORA-06550: line 7, column 23:
PL/SQL: ORA-00904: "COMMISION": invalid identifier
ORA-06550: line 7, column 5:
PL/SQL: SQL Statement ignored


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

SQL> set serverout on;
SQL> declare
  2      v_empid employees.employee_id%type :=&employee_id;
  3      v_sal employees.salary%type;
  4      v_comm employees.COMMISSION_PCT %type;
  5      v_net number;
  6      begin
  7      select salary,NVL(COMMISSION_PCT,0) into v_sal,v_comm from employees where employee_id=v_empid;
  8      v_net:=v_sal+v_comm;
  9      dbms_output.put_line('employee_id:'||v_empid);
 10     dbms_output.put_line('base salary:'||v_sal);
 11     dbms_output.put_line('commision:'||v_comm);
 12     dbms_output.put_line('v_net:'||v_net);
 13     exception
 14     when others then
 15     dbms_output.put_line(sqlerrm);
 16     end;
 17     /
Enter value for employee_id: 101
old   2:     v_empid employees.employee_id%type :=&employee_id;
new   2:     v_empid employees.employee_id%type :=101;
employee_id:101
base salary:17000
commision:0
v_net:17000

PL/SQL procedure successfully completed.

SQL>