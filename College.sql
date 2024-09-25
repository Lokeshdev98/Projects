create database college

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

 

  insert into Employee values(101,'YOGI SIR',15,100000,'M','TIRUPATHI',8948458852,37)
  insert into Employee values(102,'RAMU SIR',12,90000,'M','HYDERABAD',9948458852,34)
  insert into Employee values(103,'YB SIR',1,50000,'M','BANGALORE',8946458852,39)
  insert into Employee values(104,'RANJITHA MAM',5,100000,'F','HYDERABAD',8978458852,29)
  insert into Employee values(105,'RK MAM',15,200000,'F','TIRUPATHI',8948498852,25)
  insert into Employee values(106,'SHRUTHI MAM',3,40000,'F','DELHI',8938458852,42)
  insert into Employee values(107,'SK',15,30000,'M','TIRUPATHI',8948498852,23)
  insert into Employee values(109,'DL MAM',12,95000,'F','MUMBAI',8968498852,26)
  insert into Employee values(108,'PRANEETHA MAM',3,96000,'F','TIRUPATHI',8966498852,22)

 

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

alter table Employee add Designation varchar(100) null

update Employee set Designation='Asst.Professor' where EID=101
update Employee set Designation='Associate Professor' where EID=102
update Employee set Designation='Asst.Professor' where EID=103
update Employee set Designation='Asst.Professor' where EID=107
update Employee set Designation='HOD' where EID=105

alter table employee add exp int null;

update employee set exp=1 where eid=101;
update employee set exp=2 where eid=102;
update employee set exp=3 where eid=103;
update employee set exp=4 where eid=107;
update employee set exp=5 where eid=105;


alter table employee add joining_date date  null;

update employee set joining_date='2022' where eid=101;
update employee set joining_date='2023' where eid=102;
update employee set joining_date='2022' where eid=103;
update employee set joining_date='2019' where eid=107;
update employee set joining_date='2018' where eid=105;

alter table course add eid int null;

update course set eid= 101 where cid=12;
update course set eid= 102 where cid=13;
update course set eid= 102 where cid=14;
update course set eid= 103 where cid=14;
update course set eid= 104 where cid=15;

alter table course add duration int null;

update course set duration=3 where cid=12;
update course set duration=4 where cid=13;
update course set duration=3 where cid=14;
update course set duration=4 where cid=15;
update course set duration=5 where cid=16;



select * from employee;

--set 2

--1
select count(sid) from student where did =(select did from dept where dname='CSSE'); 

--2
update Employee set salary=salary*0.15 where Designation='Asst.Professor';

--3

delete from employee where  did=(select dname from dept where dname='It') and salary>100000;

--4
select d.dname ,avg(s.age) as avg_age ,avg(e.salary) as avg_salary from student s ,dept d,employee e 
group by dname;

--5
select e.ename from employee e join dept d on e.did=d.did where dname='csse';

--set 7


--1
 update employee set exp=exp+1 where year(joining_date)='2022';

 --2
 select s.sname from student s join enrollment e on s.sid=e.sid
 group by s.sid,s.sname
 having count(e.cid)>1;

 --3
 select sname from student s where exists(
 select 1 from course c join employee e on c.eid=e.eid join Enrollment en on c.cid=en.cid 
 where en.sid=s.sid
 and exp>3);

 --4

select e.ename ,count(c.cid) as course_count from employee e join course c on e.eid=c.eid 
group by e.eid,e.ename 
order by course_count desc;

--5
select e.ename from employee e where exists 
(
   select 1 from course c 
   where c.eid=e.eid and c.duration >
   (
      select avg(duration) from course c
	  )
);


