------------
--create view


create view st_from_cairo
as
select *
from Student
where St_Address = 'cairo'

-- alter view 
alter view st_from_cairo
as
select *
from Student
where St_Address = 'cairo' and St_Age > 22

-- call view

select *
from st_from_cairo

-- insert into view

insert into st_from_cairo(St_Id , St_Fname , Dept_Id)
values(50 , 'ahmed' , 30)

-- update from view

update st_from_cairo 
set St_Lname = 'fares'
where St_Id = 18


-- drop view
drop view st_from_cairo