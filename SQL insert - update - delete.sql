--------

--- insert values

insert into Department 
values
(10 ,  'Information Technology' ,'cairo', null ,null) ,
(20 ,  'Computer Science' ,'aswan',null , null ) ,
(30 ,  'Software Engineering' ,'alex',null , null ),
(40 ,  'Cybersecurity' ,'sharqia',null , null ),
(50 ,  'Artificial Intelligence' ,'cairo',null , null ),
(60 ,  'Machine Learning' ,'cairo',null , null )

insert into Student
values ('ahmed', 'sayed', 'sharqia', 23, 10),
       ('fatma', 'mostafa', 'sharqia', 27, 10),
       ('omar', 'hassan', 'sharqia', 25, 10),
       ('noura', 'ali', 'sharqia', 22, 10),
       ('youssef', 'mahmoud', 'sharqia', 29, 10),
       ('sara', 'ibrahim', 'sharqia', 24, 10),
       ('khaled', 'adel', 'sharqia', 28, 10);

insert into Student
values ('hassan', 'mohamed', 'sharqia', 24, 20),
       ('mona', 'ahmed', 'sharqia', 26, 20),
       ('ali', 'fathy', 'sharqia', 22, 20),
       ('esraa', 'sayed', 'sharqia', 28, 20),
       ('mahmoud', 'khaled', 'sharqia', 25, 20);


insert into Student
values ('zainab', 'omar', 'sharqia', 27, 30),
       ('tarek', 'hassan', 'sharqia', 23, 30),
       ('layla', 'mostafa', 'sharqia', 29, 30),
       ('ibrahim', 'ali', 'sharqia', 22, 30),
       ('nadia', 'adel', 'sharqia', 26, 30);


-------- update 
select *from Student
update Student 
	set st_address = 'aswan' 
	where st_id between 14 and 17 ;

update Student 
	set st_address = 'cairo' 
	where st_id between 1 and 8 ;

-----------

delete from Student 
where st_id = 17 ; 