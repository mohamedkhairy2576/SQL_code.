-- Agg Function

-- sum salary for all Instructors

select sum(salary) as total_salary
from Instructor

--count all rows
select count(*)
from Student

-- Average age of students
select avg(st_age) as avg_age
from Student

-- oldest_student
select max(st_age) as  oldest_student
from Student

-- youngest student

select min(st_age) as youngest_student
from Student

-- group by 

select St_Address , count(st_id) 
from Student
group by st_address


select Dept_Id ,   sum(salary) as t_salary
from Instructor
group by Dept_Id

-- group by with  (where) 

select Dept_Id , count(st_id)
from Student
where St_Address in ('cairo' , 'alex')
group by Dept_Id

-- group by with  (having)

select Ins_Degree , sum(salary) as total_sala
from Instructor
group by Ins_Degree
having sum(salary) > 19500