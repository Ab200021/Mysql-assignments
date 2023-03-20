CREATE DEFINER=`root`@`localhost` TRIGGER `before_update` BEFORE UPDATE ON `movies` FOR EACH ROW BEGIN
UPDATE rentals
    SET movieid = NEW.id
    WHERE movieid = OLD.id;
END