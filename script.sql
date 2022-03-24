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
insert into product1 VALUES (1,"samsung", 10000);
insert into product1 VALUES (2,"mi", 20000);
insert into product1 VALUES (3,"vivo", 25000);
insert into product1 VALUES (4,"mi", 100000);
insert into product1 VALUES (5,"apple", 280000);
insert into product1 VALUES (6,"mi", 10000);
insert into product1 VALUES (7,"iqoo", 65000);
insert into product1 VALUES (8,"letv", 1000);

-- product2
insert into product2 VALUES (11,"apple", 50000);
insert into product2 VALUES (12,"iqoo", 120000);
insert into product2 VALUES (13,"mi", 250000);
insert into product2 VALUES (14,"nokia", 1000);
insert into product2 VALUES (15,"vivo", 12000);
insert into product2 VALUES (16,"samsung", 13000);
insert into product2 VALUES (17,"shark", 98000);
insert into product2 VALUES (18,"apple", 50000);

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
truncate table product1;

insert into City(emp_id, Age, City)values(001, 32,"agra");
insert into City(emp_id, Age, City)values(002, 23,"Pune");
insert into City(emp_id, Age, City)values(003, 42,"Delhi");
insert into City(emp_id, Age, City)values(004, 21,"Banglore");

select * from city;

delete from employee where emp_id = 0004;

-- join
-- Cross Joins outputs every combination and returns (n*m) rows
set @n := 0;
select *,(select @n := @n + 1 n)as ind from product1
cross join product2;

-- left outer join  -> returns unmatched rows from left table
select p.p_id,p2.p_id, p.prod,p.price as price1,p2.price as price2 from product1 as p
left outer join product2 as p2
on p.prod = p2.prod;

-- right outer join -> returns unmatched rows from right table
select p.p_id,p2.p_id, p.prod,p2.prod,p.price as price1,p2.price as price2 from product1 as p
right outer join product2 as p2
on p.prod = p2.prod;

-- inner join -> returns only matching values
select p.p_id,p2.p_id, p.prod,p.price as price1,p2.price as price2 from product1 as p
inner join product2 as p2
on p.prod = p2.prod;

-- Inner joins



