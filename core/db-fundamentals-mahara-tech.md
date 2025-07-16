link: [Course: Database Fundamentals\*](https://maharatech.gov.eg/course/view.php?id=740)
- [x] [[0-mec-lec1-29-11-2024]]
# code
---
## insert ex1
```sql
insert into TableName(col1, col2, ...)
Values(val1,val2, ...)
```
## insert ex2
```sql
insert  into TableName Values(val1,val2, ...)
```
## update ex1
```sql
update TableName
set col=val
where condition
```
# ch1
## v2
- why use DBMS
	- no duplication/redundancy
	- auth access
	- backups
	- sharing same DB accross multiple device
		- no inconsistency of updates
- integrity contraints & data quality
## v4
- DBMS archi {levels of schemas}
	1. external {user}
	2. conceputal/logical
	3. physical
## v8
-  distrubuted DB use either/both
	- replica
		- partial OR full
	- frag
	
- [SmartDraw: online tool to draw ERD and more](https://app.smartdraw.com/?nsu=1)
# ch2
## v2
- weak entity : {has no PrimaryKey + totaly dependant on another owner enitity}
	- ex: the dependant of an emp
	- double rect
	- relationship between {owener & weak} entities => identifying relationship
		- double diamond
# ch3
## v1,v2
- domain === field ***must be single valued***
- `primary key` (PK): uniq + not null
	- underlined
- mapping {conceptual design === ERD} into --> {logical design === schema}
	- entity -> table
		- weak enitity: takes a FK from the PK of the owner
			- ?***composite*** key
	- attr --> col
		- `multi-valued` --> has its own table 
			- ?***composite*** key
			- PK from owner as FK
				- `foreign key` (FK): a subset of the PK in another table + can be repeated + can be null
					- ***dashed*** underlined
	- {{rel}} --> adding more FK || join tables || creating new tables
		- btw you can rename things to avoid mis-understanding
		- binary/unary
			- 1:m
				- m partial #done
					- {PK of 1-side as FK on m-side}
					- [ ] ? ***new*** table
						- both as FK
						- but PK is of m-side
				- m total #done
					- no new table .. just on many side add
			- m:m #done
				- {PKs as FKs & create ***new table***}
			- 1:1 {now depends on participation}
				- may-may #done
					- PK of any as FK on the other
					- ?{new table `FK` of any}
				- total #done
					- mix/join/merge tables
				- total-partial #done
					- {PK of `may`-side as FK on `must`-side}
		- ternary
			- PKs as FKs & create ***new*** table
> study that ^
# ch4
## v1
- sql has 3 langs
	- DDL:data `definition` lang
		- create
		- drop
		- alter
		- truncate
	- DML:data `manip` lang
		- select
		- insert
		- update
		- delete
	- DCL:data `control` lang {priviledges}
		- grant امنح
		- revoke ارفض
- one of DB constraints
	- referential integrity {FK}
		- delete
			- delete FKs {child record} then PKs {parent record}
		- insert
			- opposite
				- add PKs then FKs
# ch5 DML:data `manip` lang
## v1 insert
1. ![[Pasted-image-20241204135032.png]]
	- ![[#code#insert ex1#]]
	- either insert in all cols or just some portion that you know
2. ![[Pasted-image-20241204135519.png]]
	- ![[#code#insert ex2]]
## v2 update
- ![[Pasted-image-20241204140152.png]]
	- ![[#code#update ex1]]

## v3 delete vs truncate vs drop

|                | delete                                                           | truncate                       | drop                          |
| -------------- | ---------------------------------------------------------------- | ------------------------------ | ----------------------------- |
| category       | DML                                                              | DDL                            | DDL                           |
| syntax         | `delete from TableName where cond`                               | `truncate table TableName`     | `drop TableName`              |
| usage          | delete row with `where cond` ***OR*** delete table & keep schema | as in `delete` with no `where` | delete table content + schema |
| better used on | some rows                                                        | tables                         | tables                        |
| roll back      | YES                                                              | not that easy                  | not that easy                 |
| speed          | logs each deleted row                                            | fast                           | fast                          |
## v4 select
- ![[Pasted-image-20241204144851.png]] `select col1,col2, [col3 has whitespace] from TableName`
- \* => all
## v5:v9
- `where x between 1 and 4` === 1<=x<=4
- `where x in (a,b)` === x=a OR x=b
- `where x like 'regex'` [[0-regex-or-regular-expressions-MOC|more on regex]]
- expr `as` aliasName
- concat with `+`
- order by prio => `order by colName asc/desc`
	- `order by prio1, prio2 ...`
- `select distinct col from TableName` 
	- show uniq combs {null shows}
## v10
- [x] [CH05\_VID10\_Inner Join - YouTube](https://www.youtube.com/watch?v=jMpKK_WYi68)
## v11
- outer join
	- left: all data from left-hand-side table
	- right
	- full === left + right
- [x] [CH05\_VID11\_Outer , Full Join - YouTube](https://www.youtube.com/watch?v=-JG4a4JZSqU)
## v12
- [x] [CH05\_VID12\_self Join - YouTube](https://www.youtube.com/watch?v=KwBqdGRodpg)
بيكون فيها عكس عكاس شوية
## v13:v16
- `(subquery)`
- `>all`
	- `>in`
	- `>any`
- `count` {no null counted}
- [x] [CH05\_VID15\_Group by & Having - YouTube](https://www.youtube.com/watch?v=sFFS6iWAheE)
	- having vs where
		- `where` does ***not*** come with aggregates

[CH05\_VID16\_SELECT conclusion - YouTube](https://youtu.be/45XPcKgLr1g?t=339)

# ch6
- [x] [Views (create , modify , remove , types)](https://maharatech.gov.eg/mod/hvp/view.php?id=7170&forceview=1)
	- كإنك بتعمل جدول افتراضي وهمي كجزء من الداتا بيز كلها
		- بالتالي بيكون أسهل عليك تعمل عليه queries عن ما تعمل على الداتا كلها
		- بيعطيك طبقة حماية وأمان للداتا الكبيرة نفسها
	- `create view NameofView`
- `with check option`
	- اي تعديل على الفيو
		- لازم هنراعي فيه الشرط بتاع الـ where قبل ما نقبل التعديل
- [x] [CH06\_VD02\_Indexes - YouTube](https://www.youtube.com/watch?v=KYbgX3ZNHQY)
# ch7
- [x] [CH07\_VID02\_Functional Dependency - YouTube](https://www.youtube.com/watch?v=eHSwJ68GYy4)
	- FD = functional dependency
		- full
		- partial
		- transitive
- [x] [CH07\_VID03\_First Normal Form - YouTube](https://www.youtube.com/watch?v=yuCPqhLWio0) 
	- remove { multi - repeating goups - composite }
- [x] [CH07\_VID04\_Second Normal Form - YouTube](https://www.youtube.com/watch?v=_wgUeYqYK4E)  مهمة
- [x] [CH07\_VID05\_Third Normal Form - YouTube](https://www.youtube.com/watch?v=ML8PuuA8-rg)