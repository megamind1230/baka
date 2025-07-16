> automatic propagation of actions (like updates or deletes) from a parent table to related records in child tables


Types 
	1. ON DELETE CASCADE
	2. ON UPDATE CASCADE
	3. ON DELETE SET NULL
	4. ON DELETE SET DEFAULT

ex
```sql
CREATE TABLE Parent (
    ParentID INT PRIMARY KEY,
    Name VARCHAR(100)
);

CREATE TABLE Child (
    ChildID INT PRIMARY KEY,
    ParentID INT,
    Name VARCHAR(100),
    FOREIGN KEY (ParentID) REFERENCES Parent(ParentID)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);
```