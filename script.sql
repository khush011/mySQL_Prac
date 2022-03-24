-- create
CREATE TABLE EMPLOYEE (
  emp_id INTEGER PRIMARY KEY,
  name text NOT NULL,
  dept TEXT NOT NULL
);

CREATE Table product1 (
 p_id int(4) not null, 
 prod varchar(20), 
 price int(7)
);

CREATE Table product2 (
 p_id int(4) not null, 
 prod varchar(20), 
 price int(7)
);


-- product1 
insert into product1 VALUES (1,"smsung", 10000);
insert into product1 VALUES (2,"mi", 20000);
insert into product1 VALUES (5,"vivo", 25000);
insert into product1 VALUES (3,"mi", 100000);
-- product2
insert into product2 VALUES (16,"apple", 50000);
insert into product2 VALUES (12,"iqoo", 120000);
insert into product2 VALUES (41,"mi", 250000);
insert into product2 VALUES (3,"nokia", 1000);
-- employee
INSERT INTO EMPLOYEE VALUES (0001, 'Clark', 'Sales');
INSERT INTO EMPLOYEE VALUES (0002, 'Dave', 'Accounting');
INSERT INTO EMPLOYEE VALUES (0003, 'Ava', 'Sales');
INSERT INTO EMPLOYEE(emp_id, name, dept) VALUES (0004, 'Avika', 'support');
-- display 
select * from employee;
select * from product1;
select * from product2;

-- altering table employee
alter table EMPLOYEE add column income int(10);

-- updating employee values
update EMPLOYEE 
set income = 10000
where emp_id = 0001;

update EMPLOYEE 
set income = 20000
where emp_id = 0002;

update EMPLOYEE 
set income = 5000
where emp_id = 0003;

update EMPLOYEE 
set income = 80000
where emp_id = 0004;
-- creating index
create index Ind10 on employee(emp_id);

-- foreign key of employee table
Create table City(
id int not null auto_increment,
emp_id Integer,
Age Int,
City varchar(10),
primary key(id),
foreign key (emp_id) references employee(emp_id) on delete cascade
);
drop table city;

insert into City(emp_id, Age, City)values(001, 32,"agra");
insert into City(emp_id, Age, City)values(002, 23,"Pune");
insert into City(emp_id, Age, City)values(003, 42,"Delhi");
insert into City(emp_id, Age, City)values(004, 21,"Banglore");

select * from city;

delete from employee where emp_id = 0004;


