create table cancellations(id int PRIMARY KEY 
auto_increment,customernumber
 int,FOREIGN KEY(customerNumber)
 REFERENCES customers(customerNumber) ,orderNumber int, 
 FOREIGN KEY(orderNumber)REFERENCES 
 orders(orderNumber));
 
