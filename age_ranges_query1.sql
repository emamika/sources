select * from SQLTraining.dbo.EmployeeAges

select * from SQLTraining.dbo.ranges

/******/

select a.[Emplyee Code],a.Department,a.[Emplyee Age in November 2021],b.Range 
into #temp_table1
from SQLTraining.dbo.EmployeeAges a left join SQLTraining.dbo.ranges b on a.[Emplyee Age in November 2021]=b.Age



select a.Range,count(*) 'count' from #temp_table1 a group by a.Range order by count(*) desc