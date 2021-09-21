-- How many orders were shipped by Speedy Express in total? 

The Answer: 54

select count(*) as SpeedyExpress_shipper_total from orders o left join shippers s on s.shipperid = o.shipperid where shippername = 'Speedy Express'



-- What is the last name of the employee with the most orders?

The Answer:
Lastname: Peacock , Total_ordered: 3232

SELECT lastname, sum(quantity) Total_Ordered FROM 
employees e join orders o on e.employeeid = o.employeeid
join orderdetails ord on o.orderid = ord.orderid group by lastname order by Total_Ordered desc limit 1



-- What product was ordered the most by customers in Germany?

The Answer:
ProductName: Boston Crab Meat, Country: Germany, Total_Ordered: 256

select productname, country, sum(quantity) Total_ordered from 
products p join orderdetails ord on p.productid = ord.productid
join orders o on ord.orderid = o.orderid
join customers c on o.customerid = c.customerid group by productname having country="Germany" order by Total_Ordered DESC limit 1