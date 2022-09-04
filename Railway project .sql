create database Railway_mgmt_system;
use Railway_mgmt_system;
create table   Users
(

U_Id int primary key not null,
U_Fname varchar(50) not null,
U_Lname varchar(50) not null,
U_adhar_no varchar(20) not null,
U_Gender char(1) not null,
U_Age int not null,
U_Mobile_no varchar (50) not null,
U_Email varchar (50) not null,
U_City varchar (50) not null,
U_State varchar (50) not null,
U_Pincode varchar (20) not null,
U_Password varchar (50) not null,
U_Security_ques varchar (50) not null,
U_Security_ans varchar (50) not null,
S_no  int null
);



 use Railway_mgmt_system;
create table  TRIAN 
(
TR_No int primary key not null,
TR_name varchar(50) not null,
TR_Arrival_time  time not null,
TR_Departure_time time not null,
TR_Avaialability_of_seats char(50)not null,
TR_Date datetime not null,
P_Id int null
);


 use Railway_mgmt_system;
create table STATION

(
S_no  int primary key not null,
S_Name varchar(50) not null,
S_hault int  not null,
S_Arrival_time time not null,
TR_No int null
);





 use Railway_mgmt_system;
create table TICKET

(
TK_Id int primary key not null,
TK_Status Char not null,
TK_No_of_passengerc int not null,
TK_Train_no int not null,
U_Id int null
);

 use Railway_mgmt_system;
create table PASSENGER

(
P_Id int primary key not null,
P_Pnr_no int not null,
P_Age int not null,
P_Gender char(1) not null,
P_U_Id int not null,
P_Reservation_status char not null,
P_seat_no varchar(5)  not null,
P_Name varchar(50)  not null,
TK_Id int  null
);


 use Railway_mgmt_system;
alter table Users
add foreign key (S_no)
References STATION (S_no);



 use Railway_mgmt_system;
alter table PASSENGER
add foreign key (TK_Id)
References TICKET (TK_Id);

 use Railway_mgmt_system;
alter table TRIAN 
add foreign key (P_Id)
References  PASSENGER (P_Id);

 use Railway_mgmt_system;
alter table STATION
add foreign key (TR_No)
References TRIAN (TR_No);

 use Railway_mgmt_system;
alter table TICKET
add foreign key (U_Id)
References Users (U_Id);


	





 use Railway_mgmt_system;
insert into Users(U_Id, U_Fname, U_Lname, U_adhar_no, U_Gender, U_Age, U_Mobile_no, U_Email,U_City, U_State,U_Pincode,U_Password,U_security_ans,U_security_ques)
values (0009,'Abel','Tekle','309887340843','M',34,'9887786655','Abjay1@gmail.com','AddisAbebe','AddisAbebe','520001','12345@#','favouritecolour','red');

 use Railway_mgmt_system;
insert into Users(U_Id, U_Fname, U_Lname, U_adhar_no, U_Gender, U_Age, U_Mobile_no, U_Email,U_City, U_State,U_Pincode,U_Password,U_security_ans,U_security_ques)
values (0008,'Kidus','Girum','765843210987','M',20,'9995550666','Kidusgg57@gmail.com','DireDewa','DireDewa','522004','0987hii','favourite flower','rose'); 


 use Railway_mgmt_system;
insert into TRAIN(TR_No,TR_Name,TR_Arrival_time,TR_Departure_time,TR_Availability_of_seats,TR_Date) 
values(12711,'AA','113000','114000','A',20170410);

 use Railway_mgmt_system;
insert into TRAIN(TR_No,TR_Name,TR_Arrival_time,TR_Departure_time,TR_Availability_of_seats,TR_Date) 
 values (12315,'DD',124500,125000,'B',20170410);
 
 
 use Railway_mgmt_system;
insert into STATION(S_No,S_Name,S_Hault,S_Arrival_time)
 values(111,'Sebeta',10,'113000');
 
  use Railway_mgmt_system;
  insert into STATION(S_No,S_Name,S_Hault,S_Arrival_time)
values (222,'torhayloch',5,'114500');


  use Railway_mgmt_system;
 insert into TICKET(TK_Id,TK_Status,TK_No_of_passengerc,TK_Train_no) 
 values(4001,'C',1,12711);
 
  use Railway_mgmt_system;
 insert into TICKET(TK_Id,TK_Status,TK_No_of_passengerc,TK_Train_no)  
 values(4002,'A',1,12711);
 
  use Railway_mgmt_system;
 insert into PASSENGER(P_Id,P_Pnr_no,P_Age,P_Gender,P_U_Id,P_Reservation_Status,P_seat_no,P_Name)
  values(5001,78965,45,'M',1701,'C' ,'B6-45','Abel');
  
    use Railway_mgmt_system;
 insert into PASSENGER(P_Id,P_Pnr_no,P_Age,P_Gender,P_U_Id,P_Reservation_Status,P_seat_no,P_Name)
  values(5002,78961,45,'M',1702,'C' ,'B3-45','Kidus');
   
   use Railway_mgmt_system;
 insert into PASSENGER(P_Id,P_Pnr_no,P_Age,P_Gender,P_U_Id,P_Reservation_Status,P_seat_no,P_Name)
  values(5003,78461,43,'M',1502,'B' ,'B3-46','Kalab');
   
   use Railway_mgmt_system;
 insert into PASSENGER(P_Id,P_Pnr_no,P_Age,P_Gender,P_U_Id,P_Reservation_Status,P_seat_no,P_Name)
  values(5002,78961,45,'M',1702,'C' ,'B3-45','Kidus');
   
   
    use Railway_mgmt_system;
    insert into PASSENGER(P_id,P_Pnr_no,P_Age,P_Gender,P_User_id,P_Reservation_status,P_Seat_number,P_Name,P_Ticket_id)
   values(5005,54523,57,'F',1705,'C','B4-24','Aleme',4002); 
  
  select *
  from PASSENGER;
  
  select *
  from TICKET;
  
  select *
  from TRIAN;
  
  select *
  from STATION;
  
   select *
  from Users;
  