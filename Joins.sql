
--- inner join
select s.St_Id , s.St_Fname , s.St_Address , d.Dept_Id,d.Dept_Desc
from Student as s 
inner join Department as d
on s.Dept_Id = d.Dept_Id


--- left join 

select  Crs_Id , Crs_Name , top_name
from Course as c 
left outer join Topic as t
on c.Top_Id = t.Top_Id


-- Right join 

select Ins_Name , ins.Dept_Id , d.Dept_Manager , d.Dept_Desc
from Instructor as ins 
right outer join Department as d 
on ins.Dept_Id = d.Dept_Id

-- full join

select s.* , d.Dept_Desc , d.Dept_Manager
from Student as s
full outer join Department as d
on s.Dept_Id = d.Dept_Id

-- self join 


select s_1.* , s_2.St_Fname
from Student as s_1
inner join Student as s_2 
on s_1.St_Id = s_2.St_super