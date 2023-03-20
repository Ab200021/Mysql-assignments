/* Q3(a) Write function that takes the customernumber as input and 
returns the purchase_status based on the following criteria . [table:Payments]*/

CREATE DEFINER=`root`@`localhost` FUNCTION `pur_stat`(
cid int
) RETURNS varchar(20) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
    DECLARE stat VARCHAR(20);
    DECLARE credit numeric;
    SET credit = (select sum(Amount) from Payments where customerNumber = cid);

    IF credit > 50000 THEN
        SET stat = 'platinum';
    ELSEIF (credit >= 25000 AND 
            credit <= 50000) THEN
        SET stat = 'gold';
    ELSEIF credit < 25000 THEN
        SET stat = 'silver';
    END IF;
    RETURN (stat);
END