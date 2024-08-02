create database Hospital;
use Hospital;
create table Registration(
ID int (255) not null unique Primary key auto_increment,
Name varchar(100) not null,
Address varchar(100) not null,
Age int(20) not null,
Phone varchar (20) not null unique,
Reason varchar(255) not null
);
insert into Registration(Name,Address,Age,Phone,Reason)
values("Nahid","Halishahar,b-block",25, "01843270387","Fracture in hand"),
("Alauddin","Halishahar, h-block",24,"01854245617","Osteoarthritis"),
("Samir","Halishahar, G-block",26,"01737-782833", "Quadriplegia"),
("Amimul","Halishahar, L-block",24,"01889245617", "Acne"),
("Aladdin","Halishahar, F-block",24,"01897545617", "Arrhythmia"),
("Abdullah","Halishahar, K-block",24,"01854913617", "Pemphigus "),
("Noman","Halishahar, A-block",24,"01854245000", "Heart failure"),
("Mamun","Halishahar,b-block",25,"01886770387"," Brain cancer"),
("Ayat","GEC",25,"01844570387","Carotid Stenosis"),
("Sajid","Pasliesh",25,"01578670387","Osteoporosis imperfecta");

create table patient(
Pat_id int(255) not null primary key,
Pat_name varchar(100) not null,
Pat_address varchar(100) not null,
Pat_mobile varchar(20) not null unique,
Pat_reason varchar(255) not null,
AssignedDoc_id varchar(50) not null ,
AssignedDoc_Name varchar(80) not null,
foreign key(Pat_id) references registration (ID),
foreign key(AssignedDoc_id) references doctor (Doc_id)
);
insert into patient(Pat_id,Pat_name,Pat_address,Pat_mobile,Pat_reason,AssignedDoc_id,AssignedDoc_Name)
values(1,(select Name from Registration where ID='1'),(select Address from Registration where ID='1'),(select Phone from Registration where ID='1'),(select Reason from Registration where ID='1'),"D202",(select Doc_name from Doctor where Doc_id='D202')),
(2,(select Name from Registration where ID='2'),(select Address from Registration where ID='2'),(select Phone from Registration where ID='2'),(select Reason from Registration where ID='2'),"D202",(select Doc_name from Doctor where Doc_id='D202')),
(3,(select Name from Registration where ID='3'),(select Address from Registration where ID='3'),(select Phone from Registration where ID='3'),(select Reason from Registration where ID='3'),"D203",(select Doc_name from Doctor where Doc_id='D203')),
(4,(select Name from Registration where ID='4'),(select Address from Registration where ID='4'),(select Phone from Registration where ID='4'),(select Reason from Registration where ID='4'),"D204",(select Doc_name from Doctor where Doc_id='D204')),
(5,(select Name from Registration where ID='5'),(select Address from Registration where ID='5'),(select Phone from Registration where ID='5'),(select Reason from Registration where ID='5'),"D205",(select Doc_name from Doctor where Doc_id='D205')),
(6,(select Name from Registration where ID='6'),(select Address from Registration where ID='6'),(select Phone from Registration where ID='6'),(select Reason from Registration where ID='6'),"D205",(select Doc_name from Doctor where Doc_id='D205')),
(7,(select Name from Registration where ID='7'),(select Address from Registration where ID='7'),(select Phone from Registration where ID='7'),(select Reason from Registration where ID='7'),"D205",(select Doc_name from Doctor where Doc_id='D205')),
(8,(select Name from Registration where ID='8'),(select Address from Registration where ID='8'),(select Phone from Registration where ID='8'),(select Reason from Registration where ID='8'),"D201",(select Doc_name from Doctor where Doc_id='D201')),
(9,(select Name from Registration where ID='9'),(select Address from Registration where ID='9'),(select Phone from Registration where ID='9'),(select Reason from Registration where ID='9'),"D203",(select Doc_name from Doctor where Doc_id='D203')),
(10,(select Name from Registration where ID='10'),(select Address from Registration where ID='10'),(select Phone from Registration where ID='10'),(select Reason from Registration where ID='10'),"D202",(select Doc_name from Doctor where Doc_id='D202'));

create table doctor(
Doc_id varchar(50) primary key not null unique,
Doc_name varchar(80) not null,
Doc_address varchar(100) not null,
Doc_mobile varchar(255) not null unique ,
Doc_Speciality varchar(50) not null,
Doc_license int(20) not null unique
);
insert into doctor(Doc_id,Doc_name,Doc_address,Doc_mobile,Doc_Speciality,Doc_license)
values("D201","Abdul Baten","GEC", "015486654654","Cancer specialist",45541212),
("D202","Abdul Harman","lalbagh", "016354878856","Bone specialist",52411521),
("D203","Bijoy Das","Agrabad", "018499635644","Neurosurgeon",52411346),
("D204","Nusrat Jahan","Dewanhut", "01944856565","Skin specialist",52999521),
("D205","Cristiano D'Souza","Oxygen", "01848465764","Heart specialist",45611521);

create table clinic(
ClinicRoom_ID varchar(50) primary key not null,
Clinic_name varchar(100) not null,
Clinic_Type varchar(60) not null
);
insert into clinic(ClinicRoom_ID, Clinic_name, Clinic_Type)
values("R201","Abdul Baten Clinic","Cancer specialist's room"),
("R307","Abdul Harman Clinic","Bone specialist's room"),
("R404","Bijoy Das Clinic","Neurosurgeon specialist's room"),
("R516","Nusrat Jahan Clinic","Skin specialist's room"),
("R612","Cristiano D'Souza Clinic","Heart specialist's room");

create table medicine(
Med_ID varchar(50) primary key not null,
Med_name varchar(80) not null,
Med_type varchar(50) not null
);
insert into medicine(Med_ID,Med_name,Med_type)
values("ff22","Losectil-50","Gastric"),
("kl66","Calcilock-20","Calcium tablet"),
("s989","pyrimidin","skin problem"),
("L65","Napa","Any aches"), 
("K43", "Pantonix","Any Heart Attack"),
("J53", "Napa extra", "Any aches"), 
("kkm2", "Alclometasone", "Any skin problem"),
("BBms", "Alendronate", "Any bone problem"),
("mk87", "ACE inhibitors", "Any heart problem"), 
("ij65", "Ibrance", "Any cancer problem");













