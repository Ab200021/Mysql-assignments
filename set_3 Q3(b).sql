use `assignment`;

/* Q 3(b) Write a query that displays customerid, customername and purchase_status */
select customers.customerNumber,customerName ,case when amount < 25000 then'silver'when 
amount between 25000 and 50000 then'Gold'when amount > 50000 then'Platinum'end as 
purchasestatus from payments 
inner join customers ON payments.customerNumber=customers.customerNumber;





