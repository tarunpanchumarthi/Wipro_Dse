icrosoft Windows [Version 10.0.26200.8894]
(c) Microsoft Corporation. All rights reserved.

C:\Users\user>sqlplus

SQL*Plus: Release 21.0.0.0.0 - Production on Thu Jul 30 11:27:49 2026
Version 21.3.0.0.0

Copyright (c) 1982, 2021, Oracle.  All rights reserved.

Enter user-name: system
Enter password:
Last Successful login time: Wed Jul 29 2026 11:17:56 +05:30

Connected to:
Oracle Database 21c Express Edition Release 21.0.0.0.0 - Production
Version 21.3.0.0.0

SQL> connect hr/hr@//localhost:1521/XEPDB1
Connected.
SQL> SELECT table_name
  2  FROM user_tables;

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

SQL> select last_name,salary from employees where salary>=(select avg(salary) from employees);

LAST_NAME                     SALARY
------------------------- ----------
Martinez                       13000
Jacobs                          6500
Brown                          10000
Higgins                        12008
Gietz                           8300
King                           24000
Yang                           17000
Garcia                         17000
James                           9000
Gruenberg                      12008
Faviet                          9000

LAST_NAME                     SALARY
------------------------- ----------
Chen                            8200
Sciarra                         7700
Urman                           7800
Popp                            6900
Li                             11000
Weiss                           8000
Fripp                           8200
Kaufling                        7900
Vollman                         6500
Singh                          14000
Partners                       13500

LAST_NAME                     SALARY
------------------------- ----------
Errazuriz                      12000
Cambrault                      11000
Zlotkey                        10500
Tucker                         10000
Bernstein                       9500
Hall                            9000
Olsen                           8000
Cambrault                       7500
Tuvault                         7000
King                           10000
Sully                           9500

LAST_NAME                     SALARY
------------------------- ----------
McEwen                          9000
Smith                           8000
Doran                           7500
Sewall                          7000
Vishney                        10500
Greene                          9500
Marvins                         7200
Lee                             6800
Ozer                           11500
Bloom                          10000
Fox                             9600

LAST_NAME                     SALARY
------------------------- ----------
Smith                           7400
Bates                           7300
Abel                           11000
Hutton                          8800
Taylor                          8600
Livingston                      8400
Grant                           7000

51 rows selected.

107 rows selected.

SQL> select employee_id,last_name,department_id from where employees where department_id=(select department_id from employees where last_name='kevin';
select employee_id,last_name,department_id from where employees where department_id=(select department_id from employees where last_name='kevin'
                                                *
ERROR at line 1:
ORA-00903: invalid table name


SQL> select employee_id,last_name,department_id from where employees where department_id=(select department_id from employees where last_name='kevin');
select employee_id,last_name,department_id from where employees where department_id=(select department_id from employees where last_name='kevin')
                                                *
ERROR at line 1:
ORA-00903: invalid table name


SQL> select employee_id,last_name,department_id from where employees where department_id=(select department_id from employees where last_name='king');
select employee_id,last_name,department_id from where employees where department_id=(select department_id from employees where last_name='king')
                                                *
ERROR at line 1:
ORA-00903: invalid table name


SQL> select employee_id,last_name,department_id from EMPLOYEES where department_id=(select department_id from employees where last_name='king');

no rows selected

SQL> select employee_id,last_name,department_id from EMPLOYEES where department_id=(select department_id from employees where last_name='kevin');

no rows selected

SQL> select employee_id,last_name,department_id from EMPLOYEES where department_id=(select department_id from employees where last_name='smith');

no rows selected

SQL> select employee_id,last_name,department_id from EMPLOYEES where department_id=(select department_id from employees where last_name='Geoni');

EMPLOYEE_ID LAST_NAME                 DEPARTMENT_ID
----------- ------------------------- -------------
        199 Grant                                50
        120 Weiss                                50
        121 Fripp                                50
        122 Kaufling                             50
        123 Vollman                              50
        124 Mourgos                              50
        125 Nayer                                50
        126 Mikkilineni                          50
        127 Landry                               50
        128 Markle                               50
        129 Bissot                               50

EMPLOYEE_ID LAST_NAME                 DEPARTMENT_ID
----------- ------------------------- -------------
        130 Atkinson                             50
        131 Marlow                               50
        132 Olson                                50
        133 Mallin                               50
        134 Rogers                               50
        135 Gee                                  50
        136 Philtanker                           50
        137 Ladwig                               50
        138 Stiles                               50
        139 Seo                                  50
        140 Patel                                50

EMPLOYEE_ID LAST_NAME                 DEPARTMENT_ID
----------- ------------------------- -------------
        141 Rajs                                 50
        142 Davies                               50
        143 Matos                                50
        144 Vargas                               50
        180 Taylor                               50
        181 Fleaur                               50
        182 Sullivan                             50
        183 Geoni                                50
        184 Sarchand                             50
        185 Bull                                 50
        186 Dellinger                            50

EMPLOYEE_ID LAST_NAME                 DEPARTMENT_ID
----------- ------------------------- -------------
        187 Cabrio                               50
        188 Chung                                50
        189 Dilly                                50
        190 Venzl                                50
        191 Perkins                              50
        192 Bell                                 50
        193 Everett                              50
        194 McLeod                               50
        195 Jones                                50
        196 Walsh                                50
        197 Feeney                               50

EMPLOYEE_ID LAST_NAME                 DEPARTMENT_ID
----------- ------------------------- -------------
        198 OConnell                             50

45 rows selected.

SQL> select employee_id,last_name,department_id from EMPLOYEES where department_id=(select department_id from employees where last_name='Grant');
select employee_id,last_name,department_id from EMPLOYEES where department_id=(select department_id from employees where last_name='Grant')
                                                                               *
ERROR at line 1:
ORA-01427: single-row subquery returns more than one row


SQL> select employee_id,last_name,department_id from EMPLOYEES where department_id=(select department_id from employees where last_name='Geoni');

EMPLOYEE_ID LAST_NAME                 DEPARTMENT_ID
----------- ------------------------- -------------
        199 Grant                                50
        120 Weiss                                50
        121 Fripp                                50
        122 Kaufling                             50
        123 Vollman                              50
        124 Mourgos                              50
        125 Nayer                                50
        126 Mikkilineni                          50
        127 Landry                               50
        128 Markle                               50
        129 Bissot                               50

EMPLOYEE_ID LAST_NAME                 DEPARTMENT_ID
----------- ------------------------- -------------
        130 Atkinson                             50
        131 Marlow                               50
        132 Olson                                50
        133 Mallin                               50
        134 Rogers                               50
        135 Gee                                  50
        136 Philtanker                           50
        137 Ladwig                               50
        138 Stiles                               50
        139 Seo                                  50
        140 Patel                                50

EMPLOYEE_ID LAST_NAME                 DEPARTMENT_ID
----------- ------------------------- -------------
        141 Rajs                                 50
        142 Davies                               50
        143 Matos                                50
        144 Vargas                               50
        180 Taylor                               50
        181 Fleaur                               50
        182 Sullivan                             50
        183 Geoni                                50
        184 Sarchand                             50
        185 Bull                                 50
        186 Dellinger                            50

EMPLOYEE_ID LAST_NAME                 DEPARTMENT_ID
----------- ------------------------- -------------
        187 Cabrio                               50
        188 Chung                                50
        189 Dilly                                50
        190 Venzl                                50
        191 Perkins                              50
        192 Bell                                 50
        193 Everett                              50
        194 McLeod                               50
        195 Jones                                50
        196 Walsh                                50
        197 Feeney                               50

EMPLOYEE_ID LAST_NAME                 DEPARTMENT_ID
----------- ------------------------- -------------
        198 OConnell                             50

45 rows selected.

SQL> select employee_id,last_name,department_id from EMPLOYEES where department_id=(select department_id from employees where last_name='Grant');
select employee_id,last_name,department_id from EMPLOYEES where department_id=(select department_id from employees where last_name='Grant')
                                                                               *
ERROR at line 1:
ORA-01427: single-row subquery returns more than one row


SQL> select employee_id,last_name,department_id from EMPLOYEES where department_id=(select department_id from employees where last_name='Venzl');

EMPLOYEE_ID LAST_NAME                 DEPARTMENT_ID
----------- ------------------------- -------------
        199 Grant                                50
        120 Weiss                                50
        121 Fripp                                50
        122 Kaufling                             50
        123 Vollman                              50
        124 Mourgos                              50
        125 Nayer                                50
        126 Mikkilineni                          50
        127 Landry                               50
        128 Markle                               50
        129 Bissot                               50

EMPLOYEE_ID LAST_NAME                 DEPARTMENT_ID
----------- ------------------------- -------------
        130 Atkinson                             50
        131 Marlow                               50
        132 Olson                                50
        133 Mallin                               50
        134 Rogers                               50
        135 Gee                                  50
        136 Philtanker                           50
        137 Ladwig                               50
        138 Stiles                               50
        139 Seo                                  50
        140 Patel                                50

EMPLOYEE_ID LAST_NAME                 DEPARTMENT_ID
----------- ------------------------- -------------
        141 Rajs                                 50
        142 Davies                               50
        143 Matos                                50
        144 Vargas                               50
        180 Taylor                               50
        181 Fleaur                               50
        182 Sullivan                             50
        183 Geoni                                50
        184 Sarchand                             50
        185 Bull                                 50
        186 Dellinger                            50

EMPLOYEE_ID LAST_NAME                 DEPARTMENT_ID
----------- ------------------------- -------------
        187 Cabrio                               50
        188 Chung                                50
        189 Dilly                                50
        190 Venzl                                50
        191 Perkins                              50
        192 Bell                                 50
        193 Everett                              50
        194 McLeod                               50
        195 Jones                                50
        196 Walsh                                50
        197 Feeney                               50

EMPLOYEE_ID LAST_NAME                 DEPARTMENT_ID
----------- ------------------------- -------------
        198 OConnell                             50

45 rows selected.

SQL> select employee_id,last_name,department_id from EMPLOYEES where department_id=(select department_id from employees where last_name='Gietz');

EMPLOYEE_ID LAST_NAME                 DEPARTMENT_ID
----------- ------------------------- -------------
        205 Higgins                             110
        206 Gietz                               110

SQL> select last_name,salary from employees where salary>=(select avg(salary) from employees);

LAST_NAME                     SALARY
------------------------- ----------
Martinez                       13000
Jacobs                          6500
Brown                          10000
Higgins                        12008
Gietz                           8300
King                           24000
Yang                           17000
Garcia                         17000
James                           9000
Gruenberg                      12008
Faviet                          9000

LAST_NAME                     SALARY
------------------------- ----------
Chen                            8200
Sciarra                         7700
Urman                           7800
Popp                            6900
Li                             11000
Weiss                           8000
Fripp                           8200
Kaufling                        7900
Vollman                         6500
Singh                          14000
Partners                       13500

LAST_NAME                     SALARY
------------------------- ----------
Errazuriz                      12000
Cambrault                      11000
Zlotkey                        10500
Tucker                         10000
Bernstein                       9500
Hall                            9000
Olsen                           8000
Cambrault                       7500
Tuvault                         7000
King                           10000
Sully                           9500

LAST_NAME                     SALARY
------------------------- ----------
McEwen                          9000
Smith                           8000
Doran                           7500
Sewall                          7000
Vishney                        10500
Greene                          9500
Marvins                         7200
Lee                             6800
Ozer                           11500
Bloom                          10000
Fox                             9600

LAST_NAME                     SALARY
------------------------- ----------
Smith                           7400
Bates                           7300
Abel                           11000
Hutton                          8800
Taylor                          8600
Livingston                      8400
Grant                           7000

51 rows selected.

SQL> select e.last_name,e.job_id from employees e where exists(select e.manager_id from employees e where e.manager_id is not null);

LAST_NAME                 JOB_ID
------------------------- ----------
Abel                      SA_REP
Ande                      SA_REP
Atkinson                  ST_CLERK
Baida                     PU_CLERK
Banda                     SA_REP
Bates                     SA_REP
Bell                      SH_CLERK
Bernstein                 SA_REP
Bissot                    ST_CLERK
Bloom                     SA_REP
Brown                     PR_REP

LAST_NAME                 JOB_ID
------------------------- ----------
Bull                      SH_CLERK
Cabrio                    SH_CLERK
Cambrault                 SA_MAN
Cambrault                 SA_REP
Chen                      FI_ACCOUNT
Chung                     SH_CLERK
Colmenares                PU_CLERK
Davies                    ST_CLERK
Davis                     MK_REP
Dellinger                 SH_CLERK
Dilly                     SH_CLERK

LAST_NAME                 JOB_ID
------------------------- ----------
Doran                     SA_REP
Errazuriz                 SA_MAN
Everett                   SH_CLERK
Faviet                    FI_ACCOUNT
Feeney                    SH_CLERK
Fleaur                    SH_CLERK
Fox                       SA_REP
Fripp                     ST_MAN
Garcia                    AD_VP
Gee                       ST_CLERK
Geoni                     SH_CLERK

LAST_NAME                 JOB_ID
------------------------- ----------
Gietz                     AC_ACCOUNT
Grant                     SH_CLERK
Grant                     SA_REP
Greene                    SA_REP
Gruenberg                 FI_MGR
Hall                      SA_REP
Higgins                   AC_MGR
Himuro                    PU_CLERK
Hutton                    SA_REP
Jackson                   IT_PROG
Jacobs                    HR_REP

LAST_NAME                 JOB_ID
------------------------- ----------
James                     IT_PROG
Johnson                   SA_REP
Jones                     SH_CLERK
Kaufling                  ST_MAN
Khoo                      PU_CLERK
King                      SA_REP
King                      AD_PRES
Kumar                     SA_REP
Ladwig                    ST_CLERK
Landry                    ST_CLERK
Lee                       SA_REP

LAST_NAME                 JOB_ID
------------------------- ----------
Li                        PU_MAN
Livingston                SA_REP
Mallin                    ST_CLERK
Markle                    ST_CLERK
Marlow                    ST_CLERK
Martinez                  MK_MAN
Marvins                   SA_REP
Matos                     ST_CLERK
McEwen                    SA_REP
McLeod                    SH_CLERK
Mikkilineni               ST_CLERK

LAST_NAME                 JOB_ID
------------------------- ----------
Miller                    IT_PROG
Mourgos                   ST_MAN
Nayer                     ST_CLERK
Nguyen                    IT_PROG
OConnell                  SH_CLERK
Olsen                     SA_REP
Olson                     ST_CLERK
Ozer                      SA_REP
Partners                  SA_MAN
Patel                     ST_CLERK
Perkins                   SH_CLERK

LAST_NAME                 JOB_ID
------------------------- ----------
Philtanker                ST_CLERK
Popp                      FI_ACCOUNT
Rajs                      ST_CLERK
Rogers                    ST_CLERK
Sarchand                  SH_CLERK
Sciarra                   FI_ACCOUNT
Seo                       ST_CLERK
Sewall                    SA_REP
Singh                     SA_MAN
Smith                     SA_REP
Smith                     SA_REP

LAST_NAME                 JOB_ID
------------------------- ----------
Stiles                    ST_CLERK
Sullivan                  SH_CLERK
Sully                     SA_REP
Taylor                    SA_REP
Taylor                    SH_CLERK
Tobias                    PU_CLERK
Tucker                    SA_REP
Tuvault                   SA_REP
Urman                     FI_ACCOUNT
Vargas                    ST_CLERK
Venzl                     SH_CLERK

LAST_NAME                 JOB_ID
------------------------- ----------
Vishney                   SA_REP
Vollman                   ST_MAN
Walsh                     SH_CLERK
Weiss                     ST_MAN
Whalen                    AD_ASST
Williams                  IT_PROG
Yang                      AD_VP
Zlotkey                   SA_MAN

107 rows selected.

SQL> select e.last_name,e.job_id from employees e where exists(select 1 from employees e where e.manager_id = e.employee_id);

no rows selected

SQL> select e.last_name,e.job_id from employees e where exists(select * from employees e where e.manager_id = e.employee_id);

no rows selected

SQL> SELECT e.last_name,
  2         e.job_id
  3  FROM employees e
  4  WHERE EXISTS (
  5      SELECT 1
  6      FROM employees m
  7      WHERE m.manager_id = e.employee_id
  8  );

LAST_NAME                 JOB_ID
------------------------- ----------
Martinez                  MK_MAN
Higgins                   AC_MGR
King                      AD_PRES
Yang                      AD_VP
Garcia                    AD_VP
James                     IT_PROG
Gruenberg                 FI_MGR
Li                        PU_MAN
Weiss                     ST_MAN
Fripp                     ST_MAN
Kaufling                  ST_MAN

LAST_NAME                 JOB_ID
------------------------- ----------
Vollman                   ST_MAN
Mourgos                   ST_MAN
Singh                     SA_MAN
Partners                  SA_MAN
Errazuriz                 SA_MAN
Cambrault                 SA_MAN
Zlotkey                   SA_MAN

18 rows selected.

SQL> SELECT employee_id,
  2         last_name,
  3         department_id,
  4         manager_id
  5  FROM employees
  6  WHERE department_id = (
  7      SELECT department_id
  8      FROM employees
  9      WHERE last_name = 'Ozer'
 10  )
 11  AND manager_id = (
 12      SELECT manager_id
 13      FROM employees
 14      WHERE last_name = 'Ozer'
 15  )
 16  AND last_name <> 'Ozer';

EMPLOYEE_ID LAST_NAME                 DEPARTMENT_ID MANAGER_ID
----------- ------------------------- ------------- ----------
        169 Bloom                                80        148
        170 Fox                                  80        148
        171 Smith                                80        148
        172 Bates                                80        148
        173 Kumar                                80        148
SQL> SELECT employee_id,last_name FROM employees WHERE department_id IN (SELECT department_id FROM employees WHERE UPPER(last_name) LIKE '%R%');

EMPLOYEE_ID LAST_NAME
----------- -------------------------
        145 Singh
        146 Partners
        147 Errazuriz
        148 Cambrault
        149 Zlotkey
        150 Tucker
        151 Bernstein
        152 Hall
        153 Olsen
        154 Cambrault
        155 Tuvault

EMPLOYEE_ID LAST_NAME
----------- -------------------------
        156 King
        157 Sully
        158 McEwen
        159 Smith
        160 Doran
        161 Sewall
        162 Vishney
        163 Greene
        164 Marvins
        165 Lee
        166 Ande

EMPLOYEE_ID LAST_NAME
----------- -------------------------
        167 Banda
        168 Ozer
        169 Bloom
        170 Fox
        171 Smith
        172 Bates
        173 Kumar
        174 Abel
        175 Hutton
        176 Taylor
        177 Livingston

EMPLOYEE_ID LAST_NAME
----------- -------------------------
        179 Johnson
        204 Brown
        199 Grant
        120 Weiss
        121 Fripp
        122 Kaufling
        123 Vollman
        124 Mourgos
        125 Nayer
        126 Mikkilineni
        127 Landry

EMPLOYEE_ID LAST_NAME
----------- -------------------------
        128 Markle
        129 Bissot
        130 Atkinson
        131 Marlow
        132 Olson
        133 Mallin
        134 Rogers
        135 Gee
        136 Philtanker
        137 Ladwig
        138 Stiles

EMPLOYEE_ID LAST_NAME
----------- -------------------------
        139 Seo
        140 Patel
        141 Rajs
        142 Davies
        143 Matos
        144 Vargas
        180 Taylor
        181 Fleaur
        182 Sullivan
        183 Geoni
        184 Sarchand

EMPLOYEE_ID LAST_NAME
----------- -------------------------
        185 Bull
        186 Dellinger
        187 Cabrio
        188 Chung
        189 Dilly
        190 Venzl
        191 Perkins
        192 Bell
        193 Everett
        194 McLeod
        195 Jones

EMPLOYEE_ID LAST_NAME
----------- -------------------------
        196 Walsh
        197 Feeney
        198 OConnell
        114 Li
        115 Khoo
        116 Baida
        117 Tobias
        118 Himuro
        119 Colmenares
        100 King
        101 Yang

EMPLOYEE_ID LAST_NAME
----------- -------------------------
        102 Garcia
        108 Gruenberg
        109 Faviet
        110 Chen
        111 Sciarra
        112 Urman
        113 Popp
        201 Martinez
        202 Davis
        103 James
        104 Miller

EMPLOYEE_ID LAST_NAME
----------- -------------------------
        105 Williams
        106 Jackson
        107 Nguyen

102 rows selected.


SQL> select last_name,department_id,job_id from employees where department_id in(select department_id from departments where location_id in(select location_id from locations where UPPER(city)='NEW YORK'));

no rows selected


SQL> SELECT employee_id,
  2         first_name,
  3         last_name,
  4         manager_id
  5  FROM employees
  6  WHERE UPPER(last_name) = 'KING';

EMPLOYEE_ID FIRST_NAME           LAST_NAME                 MANAGER_ID
----------- -------------------- ------------------------- ----------
        100 Steven               King
        156 Janette              King                             146
QL> SELECT employee_id,
  2         last_name,
  3         department_id,
  4         job_id
  5  FROM employees
  6  WHERE department_id = (
  7      SELECT department_id
  8      FROM employees
  9      WHERE UPPER(last_name) = 'JAMES'
 10  )
 11  AND UPPER(last_name) <> 'JAMES';

EMPLOYEE_ID LAST_NAME                 DEPARTMENT_ID JOB_ID
----------- ------------------------- ------------- ----------
        104 Miller                               60 IT_PROG
        105 Williams                             60 IT_PROG
        106 Jackson                              60 IT_PROG
        107 Nguyen                               60 IT_PROG

SQL> SELECT l.city AS location,
  2         (
  3             SELECT AVG(e.salary)
  4             FROM employees e
  5             JOIN departments d
  6               ON e.department_id = d.department_id
  7             WHERE d.location_id = l.location_id
  8         ) AS average_salary
  9  FROM locations l
 10  ORDER BY l.city;

LOCATION                       AVERAGE_SALARY
------------------------------ --------------
Beijing
Bern
Bombay
Geneva
Hiroshima
London                                   6500
Mexico City
Munich                                  10000
Oxford                             8955.88235
Roma
Sao Paulo

LOCATION                       AVERAGE_SALARY
------------------------------ --------------
Seattle                            8845.33333
Singapore
South Brunswick
South San Francisco                3475.55556
Southlake                                5760
Stretford
Sydney
Tokyo
Toronto                                  9500
Utrecht
Venice

LOCATION                       AVERAGE_SALARY
------------------------------ --------------
Whitehorse

23 rows selected.
SQL> SELECT *
  2  FROM (
  3      SELECT employee_id,
  4             last_name,
  5             salary
  6      FROM employees
  7      ORDER BY salary
  8  )
  9  WHERE ROWNUM <= &N;
Enter value for n: 5
old   9: WHERE ROWNUM <= &N
new   9: WHERE ROWNUM <= 5

EMPLOYEE_ID LAST_NAME                     SALARY
----------- ------------------------- ----------
        132 Olson                           2100
        128 Markle                          2200
        136 Philtanker                      2200
        127 Landry                          2400
        135 Gee                             2400
