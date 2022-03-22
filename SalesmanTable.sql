create table Salesman 
(
	Salesman_id int,
	Name varchar(30),
	City varchar(15),
	Commission decimal(5,2)
)
insert into Salesman values(5001,'James Hoog','New York',0.15)
insert into Salesman values(5002,'Nail Knite','Paris',0.13)
insert into Salesman values(5005,'Pix Alex','London',0.11)
insert into Salesman values(5006,'MC Lyon','Paris',0.14)
insert into Salesman values(5007,'Paul Adam','Rome',0.13)
insert into Salesman values(5003,'Lauson Hen','San Jose',0.12)
select * from Salesman

SELECT name,city
FROM salesman
WHERE city='Paris';

SELECT salesman_id,name,city,commission 
FROM salesman 
WHERE (commission > 0.10 
AND commission< 0.12);

SELECT a.cust_name AS "Customer Name", 
a.city, b.name AS "Salesman", b.commission 
FROM customer a 
INNER JOIN salesman b 
ON a.salesman_id=b.salesman_id 
WHERE b.commission>.12;

SELECT a.cust_name,a.city,a.grade, 
b.name AS "Salesman",b.city 
FROM customer a 
LEFT JOIN salesman b 
ON a.salesman_id=b.salesman_id 
order by a.customer_id;