create  database University


create table Student
(
  SID int primary key,
  SName varchar(15) not null,
  DID int not null foreign key references Dept(DID),
  MobileNo varchar(10) null,
  Age int null,
  Gender char(1) not null check(Gender='M' OR Gender='F'),
  Address varchar(20) not null
 )

 select * from Student
 
 insert into Student values(1549,'RUCHITHA',15,9182028284,18,'F','NANDYAL')
 insert into Student values(1590,'MADHAVI',15,8888888888,18,'F','KODUR')
 insert into Student values(1548,'PAVANI',15,9652712439,19,'F','CHITTOOR')
 insert into Student values(3368,'PADMA',33,7777777777,18,'F','DMM')
 insert into Student values(3750,'ISWARYA',37,7207367619,18,'F','ONGOLE')
 insert into Student values(559,'BHUVANA',5,6666666666,18,'F','NELLORE')
 insert into Student values(159,'CHINNA',1,5555555555,15,'M','KURNOOL')
 insert into Student values(1263,'SARASWATHI',12,4444444444,18,'F','TIRUPATHI')
 insert into Student values(408,'CHARAN',4,3333333333,16,'M','HYDERABAD')
 insert into Student values(345,'ROHIT SHARMA',3,4545454545,35,'M','MUMBAI')
 insert into Student values(405,'RITIKA',4,2222222222,28,'F','MUMBAI')
 insert into Student values(3302,'PRABHAS',33,2222322222,32,'M','BANGALORE')
 insert into Student values(409,'KAJAL',4,2222222922,28,'F','DELHI')
 insert into Student values(501,'SAMAIRA',5,2222222220,12,'F','MUMBAI')
 insert into Student values(105,'HARMAN',1,2222222222,24,'F','RAANCHI')

 insert into Student values(1522,'LOKESH',15,6281770026,20,'M','ANANTHAPUR')
 insert into Student values(1212,'CHANDRAHAAS',12,6281770035,28,'M','MADANAPALLI')
 insert into Student values(114,'VISHNU',1,8273645892,22,'M','GUNTUR')
 insert into Student values(1250,'SAILAJA',12,8273992244,25,'F','CHITTOOR')
 insert into Student values(150,'ISSY',1,8274992244,25,'F','NANDYAL')
 insert into Student values(1225,'HARSHITHA',12,8273992264,25,'F','KURNOOL')
 insert into Student values(1595,'MAMATHA',15,8746392737,20,'F','HYDERABAD')
 insert into Student values(1265,'SWAPNA',12,8274992244,25,'F','TIRUPATHI')
 insert into Student values(590,'CHARITHA',5,9384756255,22,'F','NANDYAL')
 insert into Student values(3349,'RAM MOHAN',33,9933664532,27,'M','HYDERABAD')
 insert into Student values(348,'SUDHARSHAN',3,8374658833,25,'M','KURNOOL')
 insert into Student values(525,'VANAJA',5,7737482322,24,'F','KADAPA')
 insert into Student values(598,'VARALAKSHMI',5,8765432092,23,'F','KADAPA')
 insert into Student values(342,'VENU',3,9283473838,19,'M','DELHI')
 insert into Student values(198,'NANI',1,9283747356,18,'M','HYDERABAD')


 create table Dept
 (
   DID int primary key,
   DName varchar(10)
 )

 select * from Dept

 insert into Dept values(15,'CSSE')
 insert into Dept values(5,'CSE')
 insert into Dept values(12,'IT')
 insert into Dept values(1,'CIVIL')
 insert into Dept values(2,'EEE')
 insert into Dept values(3,'MECH')
 insert into Dept values(4,'ECE')
 insert into Dept values(33,'CSE(AIML)')
 insert into Dept values(37,'CSE(CS)')

 create table Employee
 (
  EID int primary key,
  EName varchar(40) not null,
  DID int not null foreign key references Dept(DID),
  Salary money not null,
  Gender char(1) not null check(Gender='M' OR Gender='F'),
  City varchar(20) not null,
  MobileNo varchar(10) not null,
  Age int not null
 )

 select * from Employee

  insert into Employee values(101,'YOGI SIR',15,100000,'M','TIRUPATHI',8948458852,37)
  insert into Employee values(102,'RAMU SIR',12,90000,'M','HYDERABAD',9948458852,34)
  insert into Employee values(103,'YB SIR',1,50000,'M','BANGALORE',8946458852,39)
  insert into Employee values(104,'RANJITHA MAM',5,100000,'F','HYDERABAD',8978458852,29)
  insert into Employee values(105,'RK MAM',15,200000,'F','TIRUPATHI',8948498852,25)
  insert into Employee values(106,'SHRUTHI MAM',3,40000,'F','DELHI',8938458852,42)
  insert into Employee values(107,'SK',15,30000,'M','TIRUPATHI',8948498852,23)
  insert into Employee values(109,'DL MAM',12,95000,'F','MUMBAI',8968498852,26)
  insert into Employee values(108,'PRANEETHA MAM',3,96000,'F','TIRUPATHI',8966498852,22)
  insert into Employee values(110,'SUNITHA',1,87000,'F','HYDERABAD',8374636288,23,'Asst.Professor','AB-',NULL)

  select count(*) as Emp_Addcount from Employee where City='TIRUPATHI'


 create table Course
 (
   CID int primary key,
   CNAME varchar(20) not null,
   Category char(1) null check(Category='B' or Category='M' or Category='A'),
   Fee money not null check(Fee>=0)
  )

  select * from Course

  insert into Course values(12,'C-LANG','B',9000)
  insert into Course values(13,'JAVA','A',8000)
  insert into Course values(14,'PYTHON','M',7000)
  insert into Course values(15,'DSA','A',9500)
  insert into Course values(16,'DBMS','M',9600)
  insert into Course values(17,'HTML','B',9400)
  insert into Course values(18,'CSS','M',9300)
  insert into Course values(19,'C#','B',4000)
  insert into Course values(20,'WEB DEVELOPMENT','M',9070)
  insert into Course values(21,'AI','B',9004)

 create table Enrollment
 (
   CID int not null foreign key references Course(CID),
   SID int not null foreign key references Student(SID),
   DOE Date not null,
   Grade char(1) check( Grade ='O' or Grade='A' or Grade='B' or Grade='C')
)

select * from Enrollment


insert into Enrollment values(12,1549,'2023-03-07','A')
insert into Enrollment values(13,1549,'2023-03-07','A')
insert into Enrollment values(13,1548,'2023-03-06','B')
insert into Enrollment values(14,1590,'2023-03-05','C')
insert into Enrollment values(12,1590,'2023-03-05','C')
insert into Enrollment values(15,3368,'2023-03-04','O')
insert into Enrollment values(16,559,'2023-03-03','A')
insert into Enrollment values(17,3750,'2023-03-02','B')
insert into Enrollment values(18,159,'2023-03-01','C')
insert into Enrollment values(19,1263,'2023-02-07','O')
insert into Enrollment values(20,408,'2023-02-06','A')
insert into Enrollment values(21,345,'2023-02-04','B')
insert into Enrollment values(12,3368,'2023-01-22','A')

--27
create table BookBank
( 
  SNo  int identity(1,1),
  BID int primary key,
  BName varchar(30) not null,
  Quantity int null
)
--drop table BookBank

select * from BookBank
insert into BookBank values(20,'LOVE MOCK TAIL',95)
insert into BookBank values(25,'TO THE LIGHTHOUSE',97)
insert into BookBank values(29,'THE JUNGLE BOOK',93)
insert into BookBank values(33,'THE NAME OF THE ROSE',94)
insert into BookBank values(35,'SEA MONSTERS',99)

alter table Employee add Blood_Group char(3) null

update Employee set Blood_Group='O+' where EID=101
update Employee set Blood_Group='AB-' where EID=102
update Employee set Blood_Group='AB+' where EID=103
update Employee set Blood_Group='O-' where EID=104
update Employee set Blood_Group='B-' where EID=105
update Employee set Blood_Group='A-' where EID=106
update Employee set Blood_Group='B+' where EID=107
update Employee set Blood_Group='AB+' where EID=108



--1--
select Sname from Student where did=15
--2--
select Sname from Student where age>20
--3--
select sid,sname from Student where Address='TIRUPATHI' and MobileNo is not null
--4--
alter table Student add EMail varchar(50)  null

alter table student drop column EMail

--5--
select count(*) as Count_F from Student where Gender='F'
--6--
select Ename,Eid from Employee where salary>40000 and salary<80000
--7--
select EName,DID from employee where City !='HYDERABAD'
--8
select sum(Salary) as Salary_Count from Employee where did=15
--9
delete from Student where DID=3 or age=19
--10
update Student set EMail='ruchitha@gmail.com' where SID=1549
--11
alter table Student drop Age

--12--
select Age,SID,SName,DID from student where did=12
--13--
select count(*) as Employee_Count from Employee where did=15
--14--
select Avg(Age) as Avg_Age from Student where Gender='F'
--15--
select * from Employee where salary >90000 and did=15
--16--
alter table Student add DOJ date  null
-- 17--
select count(*) as Address_count from Employee where City='TIRUPATHI'
--18--
alter table Student add Blood_Group char(3) null 
alter table Employee add Blood_Group char(3) null 
--20--
select avg(salary) as Average_salary ,DID from Employee group by did 
--21
alter table Employee add Designation varchar(100) null

update Employee set Designation='Asst.Professor' where EID=101
update Employee set Designation='Associate Professor' where EID=102
update Employee set Designation='Asst.Professor' where EID=103
update Employee set Designation='Asst.Professor' where EID=107
update Employee set Designation='HOD' where EID=105

update Employee set Salary=95000 from Dept as d where Designation='Associate professor' and d.DName='IT'
--22
select * from Employee where City='TIRUPATHI' or DID=(select DID from Dept where DName='csse')
--23
select * from Employee where Salary >60000 and Salary<100000 and Blood_Group='AB+'
--24

alter table Employee add DOJ date null

update Employee set DOJ='2003-03-28' where EID=101
update Employee set DOJ='2003-04-28' where EID=102
update Employee set DOJ='2002-05-28' where EID=103
update Employee set DOJ='2023-11-28' where EID=104
update Employee set DOJ='2013-09-28' where EID=105
update Employee set DOJ='2008-07-28' where EID=106
update Employee set DOJ='2021-05-28' where EID=107

alter table Employee add DOJ dateTime not null

--25--
select count(*) as Dept_Student from student where Did=(select did from Dept where dname='csse')
--26--
select EName from Employee where age>30 and age<40 and did=(select did from Dept where DName='csse')
--28
--28--
select * into CSSE_Stdnts from Student where did=15

select * from CSSE_Stdnts
--29
CREATE VIEW
Employee_Backup as
(
  select * from Employee where Designation='Asst.Professor'
)

select * from Employee_Backup

--30(ii)--
update Student set DID=15 where DID=5
--31--
select EName,Salary from Employee where Salary=(select max(Salary) from Employee)
--32--
select Ename,DOJ from Employee where did <>(select did from Dept where DName='IT')
--33

select  sid,SName from Student 
where sid in (select sid from Enrollment as e,Course as c where c.cid=e.cid and  e.CID=12 or e.CID=13)

--34
select  count(SID), e.CID as Total_Count from Enrollment as e
where sid in(select sid from Student)
group by e.SID,e.CID
--35

