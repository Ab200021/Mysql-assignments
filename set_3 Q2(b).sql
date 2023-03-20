CREATE DEFINER=`root`@`localhost` PROCEDURE `status_2`()
BEGIN
 insert into cancellations(customernumber,orderNumber)
 select customerNumber,orderNumber
 from orders where status='Cancelled' ;
END