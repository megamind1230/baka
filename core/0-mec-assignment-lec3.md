#1 
#todo 
```sql
use Company_SD


--1
select *
from Employee

--2
select e.Fname, e.Lname , e.Salary, e.Dno  
from Employee e

--3
select p.Pname, p.Plocation, d.Dname
from Project p, Departments d
where p.Dnum = d.Dnum

--4
select e.Fname +' '+e.Lname FULLNAME , (e.Salary*12)*0.1 "ANNUAL COMM" --, e.Salary*12
from Employee e

--5
select e.SSN
from Employee e
where e.Salary > 1000

--6
select e.SSN, e.Fname +' '+e.Lname FULLNAME 
from Employee e
where e.Salary*12 > 10000

--7
select e.Fname +' '+e.Lname FULLNAME  , e.Salary
from Employee e
where e.Sex='f' --it ignores case ?? what !!

--8
select d.Dnum ID, d.Dname
from Departments d
where d.MGRSSN=968574

--9
select p.Pnumber , p.Pname, p.Plocation
from Project p
where p.Dnum = 10

--10
select d.Dname, d.Dnum, e.Fname+' '+e.Lname FULLNAME, e.SSN
from Employee e, Departments d
where d.MGRSSN=e.SSN

--11
select d.Dname, p.Pname
from Departments d, Project p
where d.Dnum = p.Dnum

--12 #############
select dnt.*, e.Fname +' '+e.Lname eFULLNAME
from Dependent dnt, Employee e
where dnt.ESSN = e.SSN

--13
select p.Pnumber, p.Pname, p.Plocation
from Project p
where p.City in ('Cairo', 'Alex')

--14
select p.*
from Project p
where p.Pname like 'a%'

--15
select e.Fname +' '+e.Lname eFULLNAME --, e.Salary
from Employee e
where e.Dno = 30 and (e.Salary between 1000 and 2000)

--16
select distinct e.Fname +' '+e.Lname eFULLNAME 
from Employee e, Project p, Works_for w
where (e.dno=10) and (w.Hours >= 10 and p.Pname = 'Al Rabwah')

--17
select norm.Fname +' '+norm.Lname eFULLNAME 
from Employee norm, Employee super
where norm.Superssn =  super.SSN and (super.Fname ='Kamel' and super.Lname='Mohamed')

--18
select distinct 
e.Fname +' '+e.Lname eFULLNAME, 
p.Pname
from Employee e, Project p, Works_for w
where w.ESSn = e.SSN
order by p.Pname

-- 19 - inner join 3 tables
/*
from A a
inner join B b on A.a = B.b
inner join C c on B.b = C.c
*/
select p.Pnumber, d.Dname "controlling dep", e.Lname mgrLastName,e.Address, e.Bdate
from Project p 
inner join Departments d on (p.Dnum = d.Dnum) 
inner join Employee e on (d.MGRSSN = e.SSN)
where ( p.City = 'Cairo'  )

--20 self
select distinct
mgr.*
from Employee mgr, Employee norm
where norm.Superssn = mgr.SSN
/* OR
select *
from Employee e
where e.SSN IN (
    SELECT DISTINCT  ee.Superssn
    FROM Employee ee
    WHERE ee.Superssn IS NOT NULL
);
*/

--21
select e.*, d.*
from Employee e left outer join Dependent d
on e.ssn=d.essn
```