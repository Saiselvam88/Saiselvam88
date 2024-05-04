Create database Assignment_7
use Assignment_7
-- Studies Table
CREATE TABLE Studies (PNAME varchar(20), INSTITUTE varchar(20), COURSE varchar(20), COURSE_FEE int )
-- Insertion
INSERT INTO Studies values
('ANAND','SABHARI','PGDCA',4500),
('ALTAF','COIT','DCA',7200),
('JULIANA','BDPS','MCA',22000),
('KAMALA','PRAGATHI','DCA',5000),
('MARY','SABHARI','PGDCA ',4500),
('NELSON','PRAGATHI','DAP',6200),
('PATRICK','PRAGATHI','DCAP',5200),
('QADIR','APPLE','HDCA',14000),
('RAMESH','SABHARI','PGDCA',4500),
('REBECCA','BRILLIANT','DCAP',11000),
('REMITHA','BDPS','DCS',6000),
('REVATHI','SABHARI','DAP',5000),
('VIJAYA','BDPS','DCA',48000);
-- View
select * from Studies

-- Software Table
CREATE TABLE Software (PNAME varchar(20), TITLE varchar(20), DEVELOPIN varchar(20), SCOST decimal(10,2),  DCOST int, SOLD int)

-- Insertion
INSERT INTO Software (PNAME, TITLE, DEVELOPIN, SCOST, DCOST, `	) Values
 ('MARY','README','CPP',300, 1200, 84),
 ('ANAND','PARACHUTES','BASIC',399.95, 6000, 43),
 ('ANAND','VIDEO TITLING','PASCAL',7500, 16000, 9),
 ('JULIANA','INVENTORY','COBOL',3000, 3500, 0),
 ('KAMALA','PAYROLL PKG.','DBASE',9000, 20000, 7),
 ( 'MARY','FINANCIAL ACCT.','ORACLE',18000, 85000, 4),
 ('MARY','CODE GENERATOR','C',4500, 20000, 23 ),
 ('PATTRICK','README','CPP',300, 1200, 84),
 ('QADIR','BOMBS AWAY','ASSEMBLY',750, 3000, 11),
 ('QADIR','VACCINES','C',1900, 3100, 21 ),
 ('RAMESH','HOTEL MGMT.','DBASE',13000, 35000, 4 ),
 ('RAMESH','DEAD LEE','PASCAL',599.95, 4500, 73 ),
 ('REMITHA','PC UTILITIES','C',725, 5000, 51),
 ('REMITHA','TSR HELP PKG.','ASSEMBLY',2500, 6000, 7 ),
 ('REVATHI','HOSPITAL MGMT.','PASCAL',1100, 75000, 2 ),
 ('VIJAYA','TSR EDITOR','C',900, 700, 6);

 -- View
 select * from Software

 -- Programmer Table
 CREATE TABLE Programmer (PNAME varchar(20), DOB date, DOJ date, GENDER varchar(2), PROF1 varchar(20), PROF2 varchar(20), SALARY int)
 -- Insert
INSERT INTO Programmer values
('ANAND','12-Apr-66','21-Apr-92','M','PASCAL','BASIC',3200),
('ALTAF','02-Jul-64','13-Nov-90','M','CLIPPER','COBOL',2800),
('JULIANA','31-Jan-60','21-Apr-90','F','COBOL','DBASE',3000),
('KAMALA','30-Oct-68','02-Jan-92','F','C','DBASE',2900),
('MARY','24-Jun-70','01-Feb-91','F','CPP','ORACLE',4500),
('NELSON','11-Sep-85','11-Oct-89','M','COBOL','DBASE',2500),
('PATTRICK','10-Nov-65','21-Apr-90','M','PASCAL','CLIPPER',2800),
('QADIR','31-Aug-65','21-Apr-91','M','ASSEMBLY','C',3000),
('RAMESH','03-May-67','28-Feb-91','M','PASCAL','DBASE',3200),
('REBECCA','01-Jan-67','01-Dec-90','F','BASIC','COBOL',2500),
('REMITHA','19-Apr-70','20-Apr-93','F','C','ASSEMBLY',3600),
('REVATHI','02-Dec-69','02-Jan-92','F','PASCAL','BASIC',3700),
('VIJAYA','14-Dec-65','02-May-92','F','FOXPRO','C',3500);
-- View
select * from Programmer


---1.Find out the selling cost average for packages developed in pascal--

SELECT AVG(SCOST)
FROM Software
WHERE DEVELOPIN = 'Pascal';

 select * from Software

 ---2.Display the names and ages of all programmers.--

 SELECT PNAME, DOB
FROM Programmer;
select * from Programmer

----3.Display the names of those who have done the DAP course.
SELECT PName
FROM Studies
WHERE Course = 'DAP';

select * from Studies

----4.Display the names and date of birth of all programmers born in january

SELECT PName, DOB
FROM Programmer
WHERE MONTH(DOB) = 1;

---5.What is the highest number of copies sold by a package

SELECT MAX(Sold) 
FROM Software;

---6.Display lowest course fee
SELECT MIN(Course_Fee) 
FROM Studies;

select * from Studies

---7.How many programmers have done the PGDCA Course

SELECT COUNT(*) 
FROM Studies
WHERE COURSE = 'PGDCA';

---8.How much revenue has been earned through sales of packages developed in C?

SELECT SUM(SCOST) 
FROM Software
WHERE Developin = 'C';

---9.Display the details of the software devoloped by ramesh

SELECT * FROM Software
WHERE PNAME = 'Ramesh';

--- 10.How many programmers studied  at sabhari
SELECT COUNT(*) 
FROM Studies
WHERE INSTITUTE = 'Sabhari';

--- 11. Display details of packages whose sales crossed the 2000 mark

SELECT SCOST, SOLD
FROM Software
WHERE SCOST > 2000;


----12.Display the details of packages for which development costs have been recovered.
SELECT DCOST, DEVELOPIN
FROM Software
WHERE DCOST <= SCOST;

----13.What is the cost of the costliest software development in Basic?
SELECT MAX(DCOST)
FROM Software
WHERE DEVELOPIN = 'Basic';

---14. how many packages have been developed in dBase

SELECT COUNT(*) 
FROM Software
WHERE DEVELOPIN = 'dBase';

---15. How many programmers studied in Pragathi?

SELECT COUNT(*) 
FROM Studies
WHERE INSTITUTE = 'Pragathi';


---16. How many programmers paid 5000 to 10000 for their course?

SELECT COUNT(*) 
FROM Studies
WHERE Course_Fee BETWEEN 5000 AND 10000;


---17. What is the average course fee?
SELECT AVG(Course_Fee) 
FROM Studies;

---18. Display the details of the programmers knowing C.
SELECT *
FROM Programmer
WHERE PROF1  = 'C' ;

SELECT *
FROM Programmer
WHERE PROF2   = 'C' ;


---19. How many programmers know either COBOL or Pascal?
SELECT COUNT(*) 
FROM Programmer
WHERE PROF1 LIKE '%COBOL%' OR PROF2 LIKE '%Pascal%';

---20. How many programmers don’t know Pascal and C?
SELECT COUNT(*)
FROM Programmer
WHERE Prof1 NOT LIKE '%Pascal%' AND PROF2 NOT LIKE '%C%';

---21. How old is the oldest male programmer?

SELECT MAX(DOB) 
FROM Programmer
WHERE Gender = 'Male';

---22.What is the average age of female programmers?SELECT AVG(Age) 
FROM Programmer
WHERE Gender = 'Female';