CREATE DEFINER=`root`@`localhost` TRIGGER `before_delete` BEFORE DELETE ON `movies` FOR EACH ROW BEGIN
DELETE FROM rentals WHERE movieid = OLD.id;
END