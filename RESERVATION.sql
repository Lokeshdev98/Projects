create database Reservation

create table Sailors
(
SID int primary key,
SName varchar(30) not null,
Rating int not null,
Age int null
)

select * from Sailors

insert into Sailors values(101,'RUCHITHA',10,19)
insert into Sailors values(104,'CHINNI',9,20)
insert into Sailors values(102,'CHINNA',9,21)
insert into Sailors values(106,'VANAJA',8,24)
insert into Sailors values(120,'MOHAN',10,27)
insert into Sailors values(125,'SUDHARSHAN',9,28)
insert into Sailors values(107,'RAVI',8,16)
insert into Sailors values(109,'VARALAKSHMI',7,23)
insert into Sailors values(108,'RAJA SHEKHAR',6,26)
insert into Sailors values(103,'LAKSHMI DEVI',10,32)
insert into Sailors values(105,'ANUSHA',6,20)
insert into Sailors values(110,'MADHURI',7,21)
insert into Sailors values(111,'SUPRAJA',9,19)
insert into Sailors values(115,'KAVITHA',10,20)
insert into Sailors values(113,'PRATHIBHA',6,19)

create table Boat
(
 BID int primary key,
 BName varchar(25) not null,
 Colour varchar(15) not null
 )

 select * from Boat

 insert into Boat values(25,'Titanic','Red')
 insert into Boat values(12,'Nemo','Black')
 insert into Boat values(15,'Pirates','Green')
 insert into Boat values(5,'Patna','Pink')
 insert into Boat values(35,'Shero','Red')
 insert into Boat values(45,'Niel','Black')
 insert into Boat values(28,'Malooo','Red')

 create table Reserves
 (
  SID int foreign key references Sailors(SID),
  BID int foreign key references Boat(BID),
  Booking_date  Date  not null
  )
  --drop table Reserves

  select * from Reserves

insert into Reserves values(101,25,'2023-03-04')
insert into Reserves values(102,25,'2023-03-24')
insert into Reserves values(105,28,'2023-03-14')
insert into Reserves values(102,45,'2023-02-04')
insert into Reserves values(102,35,'2023-03-07')
insert into Reserves values(107,25,'2023-03-13')
insert into Reserves values(108,25,'2023-02-14')
insert into Reserves values(109,15,'2023-01-1')
insert into Reserves values(110,25,'2023-02-02')
insert into Reserves values(125,15,'2023-01-04')
insert into Reserves values(101,25,'2023-03-04')
insert into Reserves values(120,45,'2023-01-25')
insert into Reserves values(101,15,'2023-03-29')
insert into Reserves values(110,35,'2023-03-28')
insert into Reserves values(111,45,'2023-03-04')

--select SName from Boat b,Sailors s where b.bid=25

--select SID,SName from Reserves r,Sailors s where r.bid=25
--2
select SName,SID,Rating from Sailors S where Rating>7


--3
select SID from Reserves where bid=25
--1
select Sname from Sailors s ,Reserves r where s.sid=r.sid and bid=35
--4
select Sname from Sailors s ,Reserves r,Boat b where s.sid=r.sid and r.bid=b.bid  and b.Colour='red'
--5
select distinct sname from Sailors s,Reserves r where r.sid=s.sid
--6
select s.SID,SName from Sailors s,boat b,reserves r where r.sid=s.sid and b.bid=r.bid and colour<>'red' and s.age>20
--7 no
select distinct Sname from Sailors s, Boat b,Reserves r where s.sid =r.sid and r.bid=b.bid

--10
select distinct Sname from Sailors s ,Reserves r,Boat b where (s.sid=r.sid and r.bid=b.bid
and b.Colour='red') or (s.sid=r.sid and r.bid=b.bid and b.colour='green')
--11 no
select s.SID from Sailors s,reserves r where s.sid=r.sid and r.bid=25 and r.bid=35
