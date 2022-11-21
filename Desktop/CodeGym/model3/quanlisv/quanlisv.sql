create database quanlysinhvien;
use quanlysinhvien;
create table class(
classID int not null auto_increment primary key,
className varchar(60) not null,
StartDate datetime not null,
Status bit
);
create table student(
StudentID int not null auto_increment primary key,
StudentName varchar (30) not null,
Addresss varchar(50),
Phone varchar(20),
Status bit,
Class int not null,
foreign key (classID) references class (classID)
);
create table subject(
SubId int not null auto_increment primary key,
SubName varchar (30) not null,
Credit tinyint not null default 1 check (credit >= 1),
Status bit default 1
);
create table Mark(
MarkId int not null auto_increment primary key,
SubId int not null,
StudentID int not null,
Mark float default 0 check (Mark between 0 and 100),
ExamTimes tinyint default 1,
unique ( SubId, StudentID),
foreign key (SubId) references Subject (SubId),
foreign key (StudentID) references Student(StudentID)
);




