CREATE DEFINER=`root`@`localhost` PROCEDURE `set_3`(month1 varchar(20) , year1 int)
BEGIN
select orderNumber,orderDate,status from orders 
where year(orderdate)=year1 
and left(monthname(orderdate),3)=month1;
END