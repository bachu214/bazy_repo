/* (procedura) Z powodu nowych wytycznych dot. wieku, masaże nie są zalecane dla osób powyżej 70 roku życia. 
Usuń te osoby z bazy danych klientów. ??? */

DELIMITER $$
CREATE PROCEDURE restrykcje_usun_klientow()
BEGIN 
	DELETE FROM klienci_p 
	WHERE (YEAR(CURRENT_DATE()) - YEAR(data_urodzenia))>70;
END $$
DELIMITER ;

/* (trigger) Z powodu wytycznych dot. osób starszych, nie dopuść by do bazy dostały się osoby o wieku wyższym niż 70 lat. */

DELIMITER $$

CREATE TRIGGER restrykcje_blokada_klientow AFTER INSERT ON klienci_p
FOR EACH ROW
BEGIN
IF (YEAR(NEW.klienci_p.data_urodzenia) < '1950')
THEN
    SIGNAL SQLSTATE '50004'
    SET MESSAGE_TEXT = 'Pacjent nie moze byc dodany ze wzgledu na wiek';
END IF;
END $$
DELIMITER ; 

/* TRIGGER Spraw, by PESEL nie był zbyt krótki przy dodawaniu klientów */

DELIMITER $$

CREATE TRIGGER sprawdzanie_pesel BEFORE INSERT ON klienci_p
FOR EACH ROW
BEGIN
IF (char_length(NEW.pesel) <> 11)
THEN
    SIGNAL SQLSTATE '50003'
    SET MESSAGE_TEXT = 'Pesel nie ma wlasciwej ilosci znakow';
END IF;
END $$
DELIMITER ; 