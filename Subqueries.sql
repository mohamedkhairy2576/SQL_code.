--- sub with select

select * , (select d.dept_name from Department as d where s.dept_id = d.dept_id) as Dept_name
from Student as s


-- sub with from 

select *
from (select concat(st_fname ,' ' ,st_lname) as full_name from Student ) as sub_table
where full_name like 'M%' ; 

-- sub with where 

select *
from Instructor
where Salary >= (select avg(salary) from Instructor )