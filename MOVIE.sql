create database Movie

create table Customer
(
  SNo int identity(1,1),
  CId int primary key,
  CName varchar(30) not null,
  Age int null,
  cRating int not null
)

select * from Customer

insert into Customer values(1549,'RUCHITHA',19,9)
insert into Customer values(1548,'PAVANI',20,7)
insert into Customer values(1522,'LOKESH',25,10)
insert into Customer values(15423,'CHINNI',32,10)
insert into Customer values(15429,'CHINNA',29,9)
insert into Customer values(15439,'CHANDRAHAAS',19,8)
insert into Customer values(15449,'CHARAN',39,10)
insert into Customer values(15459,'VISHNU',48,8)
insert into Customer values(1505,'YAMINI',28,4)
insert into Customer values(1550,'SAILAJA',38,7)
insert into Customer values(1502,'THRISHA',48,6)
insert into Customer values(1589,'VANAJA',27,9)
insert into Customer values(1529,'VARALAKSHMI',28,8)
insert into Customer values(15469,'RAM',23,8)
insert into Customer values(1527,'MOHAN',23,10)
insert into Customer values(1523,'ROHIT',34,8)
insert into Customer values(1545,'SHARMA',33,8)
insert into Customer values(1575,'RISHI',25,10)
insert into Customer values(1541,'JAI',35,9)
insert into Customer values(1557,'PRABHAS',38,8) 
insert into Customer values(1534,'KAJAL',43,9)
insert into Customer values(1569,'RAVI',19,7)
insert into Customer values(1520,'LAKSHMI',23,8)
insert into Customer values(1509,'NANI',29,8)
insert into Customer values(1234,'BHUVANA',32,8)
insert into Customer values(1273,'SWATHI',18,9)
insert into Customer values(2039,'JENNY',16,6)
insert into Customer values(15439,'SIRINI',19,8)
insert into Customer values(15499,'SUDHARSHAN',23,8)
insert into Customer values(1239,'BABLOO',15,8)
insert into Customer values(15489,'SUNNY',23,7)
insert into Customer values(15479,'PADMA',33,5)

create table Movie
(
   MId int primary key,
   MName varchar(30) not null,
   MLanguage varchar(50) not null,
   MRating int not null check(MRating=0 or MRating=1 or MRating=2 or MRating=3 or MRating=4 or MRating=5 or MRating=6 or MRating=7 or MRating=8 or MRating=9 or MRating=10 )
)

select * from Movie

create table Reserve
(
  CId int foreign key references Customer(CId),
  MId int foreign key references Movie(mid),
  Rdate date not null
)

select * from Reserve