-----------
-- Row_number

select * , ROW_NUMBER() over(partition by st_address order by st_age) as r_num
from Student

-- dense_rank

select * , dense_rank() over(order by salary desc) as d_rank_salary
from Instructor

-- Rank
select * , rank() over(order by salary desc) as d_rank_salary
from Instructor

-- ntile
select *  , NTILE(4) over(order by st_id) 
from Student

-- first_value - last_value

SELECT *,
    FIRST_VALUE(Salary) OVER(PARTITION BY ins_degree ORDER BY Salary) AS LowestSalary,
    LAST_VALUE(Salary) OVER(PARTITION BY ins_degree ORDER BY Salary 
                         ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS HighestSalary
FROM Instructor;

--- Agg Fun with window Function

--Number of students in each city
select * , COUNT(st_id) over(partition by st_address) 
from Student

--Total salary for each grade
select * , SUM(salary) over(partition by ins_degree)
from Instructor