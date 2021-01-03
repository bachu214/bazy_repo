/* (procedura) Z powodu nowych wytycznych dot. wieku, masaże nie są zalecane dla osób powyżej 70 roku życia. 
Usuń te osoby z bazy danych klientów. ??? */

DELIMITER $$
CREATE PROCEDURE restrykcje_usun_klientow()_
BEGIN 
	DELETE FROM klienci_p 
	WHERE (YEAR(CURRENT_DATE()) - YEAR(data_urodzenia))>70;
END //
DELIMITER;

/* (trigger) Z powodu wytycznych dot. osób starszych, nie dopuść by do bazy dostały się osoby o wieku wyższym niż 70 lat. */

DELIMITER //

CREATE TRIGGER restrykcje_blokada_klientow BEFORE INSERT ON klienci_p
FOR EACH ROW BEGIN
	IF (klienci_p.data_urodzenia < '1950-01-01') THEN 
		SIGNAL SQLSTATE VALUE '50001' SET MESSAGE_TEXT = 'klient przekroczył wiek 70 lat';
	END IF;
	
	END//

DELIMITER ;

