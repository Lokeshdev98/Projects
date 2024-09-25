CREATE DATABaSE sailors_det;

 create table sailors 
 (
  sid int primary key,
  sname varchar(20) not null,
  rating int not null check (rating <=10 and rating >=0),
  age int not null
  )
  
  insert into sailors values(2345,'Mahesh',8,35)
  insert into sailors values(3689,'Sai',7,38)
  insert into sailors values(6889,'Arjun',9,33)
  insert into sailors values(8986,'Lokesh',8,35)
  insert into sailors values(8997,'Suresh',10,40)
  insert into sailors values(9865,'Teja',6,32)
  insert into sailors values(4775,'Vasanth',8,33)
  insert into sailors values(3667,'Vamsi',10,60)
  insert into sailors values(7975,'Rithesh',9,45)
  insert into sailors values(5868,'Sathwik',7,48)
  insert into sailors values(5869,'Mani',8,42)
  insert into sailors values(2368,'Yash',7,35)
  insert into sailors values(4345,'Nagendra',6,41)
   insert into sailors values(2305,'Ravi',9,58)
  insert into sailors values(0965,'Adhi',8,37)


  select * from sailors

  create table boat 
  (
  bid int primary key,
  bname varchar(30) not null,
  color varchar(15) not null
  )
 insert into boat values(456,'Aboat Time','red')
 insert into boat values(834,'Blue Miracle','blue')
 insert into boat values(905,'Endless Summer','green')
 insert into boat values(345,'Happy Hour','yellow')
 insert into boat values(891,'Arm Candy','purple')
 insert into boat values(678,'Due South ','orange')
 select * from boat



  create table reserve
  (
  sid int not null foreign key references sailors(sid),
  bid int not null foreign key references boat(bid),
  dor date not null
  )

  insert into reserve values(2345,456,'2022/06/09')
  insert into reserve values(3689,905,'2022/7/20')
  insert into reserve values(6889,678,'2022/04/19')
  insert into reserve values(9865,345,'2022/12/01')
  insert into reserve values(4775,456,'2022/08/04')
  insert into reserve values(3667,345,'2022/03/18')
  insert into reserve values(5868,891,'2022/01/17')
  insert into reserve values(2305,456,'2022/11/21')
  insert into reserve values(0965,905,'2022/10/20')
  --insert into reserve values(2345,834,'2022/4/10')
  insert into reserve values(4775,678,'2022/05/11')
  insert into reserve values(5869,456,'2022/11/29')
  insert into reserve values(9865,891,'2022/12/16')
  insert into reserve values(6889,905,'2022/07/13')
  insert into reserve values(2305,834,'2022/09/14')
  insert into reserve values(8997,905,'2022/08/26')
  insert into reserve values(7975,345,'2022/09/20')
  insert into reserve values(0965,456,'2022/06/2')
  insert into reserve values(8997,678,'2022/04/1')
  insert into reserve values(6889,891,'2022/03/14')
  insert into reserve values(2345,905,'2022/01/26')
  insert into reserve values(3689,345,'2022/12/21')
  insert into reserve values(9865,456,'2022/11/22')
  insert into reserve values(5868,834,'2022/09/23')
  insert into reserve values(0965,456,'2022/02/16')
  insert into reserve values(2305,905,'2022/02/26')
  insert into reserve values(3667,891,'2022/06/17')
  insert into reserve values(5869,345,'2022/04/27')
  insert into reserve values(8997,834,'2022/07/13')
  --insert into reserve values(2345,456,'2022/07/13')
 
 
SELECT * FROM RESERVE 
 
 --1
 Select rating,avg(age) as avg_age from sailors
 group by rating
 having count(*)>=2;


 --2
 Select sname from sailors where sid in
 (
   select sid from reserve r join boat b on r.bid=b.bid where color='red'
 )
   and sid not in
(
   select sid from reserve r join boat b on r.bid=b.bid where color='green'
)

--3
select sid,rating from sailors where rating =10  or sid in (select sid from reserve where bid=456);

--4
select * from sailors where rating >(select rating from sailors where sname='Mahesh');

--5
select sname from sailors where age>(select max(age) from sailors where rating=10);



