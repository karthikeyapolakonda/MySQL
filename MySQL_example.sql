-- create
CREATE TABLE EMPLOYEE (
  empId int PRIMARY KEY,
  name TEXT NOT NULL,
  dept TEXT
);

-- insert
INSERT INTO EMPLOYEE VALUES (0001, 'Clark', 'Sales');
INSERT INTO EMPLOYEE VALUES (0002, 'Dave', 'Accounting');
INSERT INTO EMPLOYEE VALUES (0003, 'Ava', 'Sales');

-- fetch
insert into EMPLOYEE VALUES (4, 'Ram', 'Manager');
update EMPLOYEE
set name = 'Karthik'
where empId = 1;
delete from EMPLOYEE where dept = 'Manager';
update EMPLOYEE set dept = 'Manager' where name = 'Dave';
insert into EMPLOYEE(empId, name) VALUES(7, 'Nani');
select * from EMPLOYEE;
select empId, name from EMPLOYEE where dept = 'Sales';
select * from EMPLOYEE where dept like "Sales" order by name;
