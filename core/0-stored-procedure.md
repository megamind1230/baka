# syntax
```sql
-- create or edit
create/alter procedure SelectAllCustomers 
@City nvarchar(30), 
@PostalCode nvarchar(10)
as
begin
select * from Customers
where City = @City and PostalCode = @PostalCode
end;
go;


-- to call
exec SelectAllCustomers @City = 'london', @PostalCode = "WA1 1PD";
```



# procedure-vs-func
> both are reused a bunch of code

| diff                    | proc                                                                    | func                                          |
| ----------------------- | :---------------------------------------------------------------------- | --------------------------------------------- |
| return?                 | may {w `out`}                                                           | must                                          |
| used in sql statements? | no                                                                      | yes                                           |
| mostly used for         | doing some complex sql<br>updating<br>inserting<br>deleting<br>querying | calcs /  showing a single value or table view |
| paras                   | may have `in, out, inout`                                               | only `in` if any                              |
| modify data?            | yes                                                                     | no                                            |
| performance             | good cuz precompiled                                                    | still faster                                  |
