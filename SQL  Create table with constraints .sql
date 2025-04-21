-- create databast

create database institute ;

use institute ;


--- table Department

create table Department(
dept_id int primary key ,
dept_name varchar(20) ,
dept_location varchar(20) check(dept_location in ('cairo' , 'alex' , 'sharqia' , 'aswan')) ,
dept_manager int ,
manager_hiredate date 
); 

------

--- table Student

create table Student (
st_id int primary key identity(1,1) ,
st_fname varchar(20) ,
st_lname varchar(20) ,
st_address varchar(20) check(st_address in ('cairo' , 'alex' , 'sharqia' , 'aswan')) ,
st_age int not null ,
dept_id int foreign key(dept_id) 
references Department(dept_id)
);

---------


--- table Instructor

create table Instructor(
ins_id int primary key , 
ins_fname varchar(20) ,
ins_lname varchar(20) ,
salary money not null ,
dept_id int foreign key(dept_id) 
references Department(dept_id)
);

-----------------

--- table Topic

create table Topic (
Top_id int primary key ,
Top_name varchar(20) not null 
);

----------------
--- table Course

create table Course (
Crs_id int primary key ,
Crs_name varchar(20) ,
Crs_duration int ,
Top_id int foreign key (Top_id) 
references Topic(Top_id) 
);

----------------

-- table st_course

create table Stud_Course(
Crs_Id int NOT NULL,
St_Id int NOT NULL,
Grade int NULL,
Crs_Name varchar(20) NULL,
constraint PK_Stud_Course PRIMARY KEY ( Crs_Id , st_id)
) ;

alter table Stud_Course add  constraint FK_Stud_Course_crsid foreign key (Crs_Id)
references Course (Crs_Id) ;

alter table Stud_Course add  constraint FK_Stud_Course_stid foreign key (st_id)
references Student (st_id) ;

-------------
--- table stud_course

create table ins_course ( 
ins_id  int not null,
crs_id  int not null,
evaluation  nvarchar(50) null,
constraint pk_ins_course primary key (ins_id ,  crs_id)
) ;

alter table ins_course add constraint ins_c_insid foreign key (ins_id)
references Instructor (ins_id) ;
alter table ins_course add constraint ins_c_crsid foreign key (crs_id)
references Course (crs_id) ;

--------------
--- table st_grade 

create table st_grade (
st_id int foreign key (st_id) references Student (st_id) ,
crs_id int foreign key (crs_id) references  Course (crs_id) ,
grade int ,
crs_name varchar(20) 


