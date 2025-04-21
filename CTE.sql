-- Common Table Expressions


---The youngest student in every city
with cte1 as (
select * , ROW_NUMBER() over(partition by st_address order by st_age) as r_num
from Student ) 
select *
from cte1 
where r_num = 1


--Top two students in each course
with top_2_student as (
select * , ROW_NUMBER() over(partition by crs_name order by grade desc) as top_st
from st_grade
)
select *
from top_2_student 
where top_st <= 2

---
with f_name as (
select St_Id , St_Fname +' '+ St_Lname as full_name , St_Address
from Student)
select * 
from f_name
where full_name like 'S___%'



