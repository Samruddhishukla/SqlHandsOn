create table Orders
(
	Ord_no numeric(5),
	Purch_amt decimal(8,2),
	Ord_date date,
	Customer_id numeric(5),
	Salesman_id numeric(5)
)
insert into Orders values(70001,150.5,'2012/10/05',3005,5002)
insert into Orders values(70009,270.65,'2012/09/10',3001,5005)
insert into Orders values(70002,65.26,'2012/10/05',3002,5001)
insert into Orders values(70004,110.5,'2012/08/17',3009,5003)
insert into Orders values(70007,948.5,'2012/09/10',3005,5002)
insert into Orders values(70005,2400.6,'2012/07/27',3007,5001)
insert into Orders values(70008,5760,'2012/09/10',3002,5001)
insert into Orders values(70010,1983.43,'2012/10/10',3004,5006)
insert into Orders values(70003,2480.4,'2012/10/10',3009,5003)
insert into Orders values(70012,250.45,'2012/06/27',3008,5002)
insert into Orders values(70011,75.29,'2012/08/17',3003,5007)
select * from Orders

SELECT Ord_date, Salesman_id, Ord_no, Purch_amt
FROM orders;
SELECT DISTINCT salesman_id
FROM orders;
SELECT ord_no, ord_date, purch_amt
FROM orders
WHERE salesman_id=5001;

SELECT SUM (purch_amt) 
FROM orders;

SELECT AVG (purch_amt) 
FROM orders;

SELECT COUNT (DISTINCT salesman_id) 
FROM orders;

SELECT customer_id,MAX(purch_amt) 
FROM orders 
GROUP BY customer_id;

SELECT customer_id,ord_date,MAX(purch_amt) 
FROM orders 
GROUP BY customer_id,ord_date;

SELECT salesman_id,MAX(purch_amt) 
FROM orders 
WHERE ord_date = '2012-08-17' 
GROUP BY salesman_id;

SELECT  a.ord_no,a.purch_amt,
b.cust_name,b.city 
FROM orders a,customer b 
WHERE a.customer_id=b.customer_id 
AND a.purch_amt BETWEEN 500 AND 2000;

SELECT *
FROM orders
WHERE salesman_id =
    (SELECT salesman_id 
     FROM salesman 
     WHERE name='Paul Adam');


SELECT *
FROM orders
WHERE salesman_id IN
    (SELECT salesman_id 
     FROM salesman 
     WHERE city='London');

SELECT *
FROM orders
WHERE salesman_id =
    (SELECT DISTINCT salesman_id 
     FROM orders 
     WHERE customer_id =3007);

SELECT *
FROM orders
WHERE purch_amt >
    (SELECT  AVG(purch_amt) 
     FROM orders 
     WHERE ord_date ='10/10/2012');

SELECT *
FROM orders
WHERE salesman_id IN
    (SELECT salesman_id 
     FROM salesman 
     WHERE city ='New York');

SELECT salesman_id,name 
FROM salesman a 
WHERE 1 < 
    (SELECT COUNT(*) 
     FROM customer 
     WHERE salesman_id=a.salesman_id);

SELECT * 
FROM orders a
WHERE purch_amt >=
    (SELECT AVG(purch_amt) FROM orders b 
     WHERE b.customer_id = a.customer_id);

SELECT ord_date, SUM (purch_amt)
FROM orders a
GROUP BY ord_date
HAVING SUM (purch_amt) >
    (SELECT 1000.00 + MAX(purch_amt) 
     FROM orders b 
     WHERE a.ord_date = b.ord_date);

SELECT customer_id,cust_name, city
FROM customer
WHERE EXISTS
   (SELECT *
    FROM customer 
    WHERE city='London');


SELECT customer_id,cust_name, city
FROM customer  where city='London'
