----- Filtering Data


-- where 

select *
from Student
where St_Fname = 'ahmed' 

-- and -- or  

select *
from Student 
where St_Id <= 10 and St_Age > 22

--
select *
from Student
where St_Address = 'Alex' or St_Address = 'cairo'

-- is null  -- is not null 
select *
from Student 
where St_super is not null

--
 select *
 from Student 
 where St_super is null



-- between 
select *
from Student 
where St_Age between 22 and 26

-- like 

select *
from Student
where St_Fname like 'a%'

select *
from Student
where St_Address like '____'

select *
from Student
where St_Fname like '%d'

select *
from Student
where St_Fname like 'S___%'

-- exists
select  *
from Student s
where not exists (
    select 1 
    from Department d 
    where s.Dept_Id = d.Dept_Id
);

