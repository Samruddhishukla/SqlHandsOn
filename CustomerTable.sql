create table Customer
(
	Customer_id numeric(5),
	Cust_name varchar(30),
	City varchar(15),
	Grade numeric(3),
	Salesman_id numeric(5)
)
insert into Customer values(3002,'Nick Rimando','New York',100,5001)
insert into Customer values(3007,'Brad Davis','New York',200,5001)
insert into Customer values(3005,'Graham Zusi','California',200,5002)
insert into Customer values(3008,'Julian Green','London',300,5002)
insert into Customer values(3004,'Fabian Johnson','Paris',300,5006)
insert into Customer values(3009,'Geoff Cameron','Berlin',100,5003)
insert into Customer values(3003,'Jozy Altidor','Moscow',200,5007)
insert into Customer values(3001,'Brad Guzan','London',100,5005)
select * from Customer

SELECT * 
FROM customer 
WHERE city = 'New York' AND grade>100;

SELECT salesman.name AS "Salesman",
customer.cust_name, customer.city 
FROM salesman,customer 
WHERE salesman.city=customer.city;