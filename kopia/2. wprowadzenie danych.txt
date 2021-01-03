/* 1. wprowadzenie danych do tabeli pracownicy (8 rekordów) */

INSERT INTO pracownicy_p VALUES ('7776661112','Joanna','Klimczak','111111111','1950-03-21','terapeuta');
INSERT INTO pracownicy_p VALUES ('7776621118','Marek','Jeż','111111112','1970-08-13','terapeuta');
INSERT INTO pracownicy_p VALUES ('2776661113','Elon','Piżmo','113111111','1971-04-21','terapeuta');
INSERT INTO pracownicy_p VALUES ('7333661118','Mikołaj','Sztasic','1111177111','1997-08-13','terapeuta');
INSERT INTO pracownicy_p VALUES ('7776668118','Joahim','Van Graff','333111111','1990-01-20','terapeuta');
INSERT INTO pracownicy_p VALUES ('7111661118','Aleksander','Radomczyk','111112211','1981-08-11','terapeuta');
INSERT INTO pracownicy_p VALUES ('7772661118','Jakub','Rajten','642114441','1960-12-27','pomocnik');
INSERT INTO pracownicy_p VALUES ('1888661118','Szymon','Kruczel','1217111111','1990-07-05','pracownik_biurowy');

/* 2. wprowadzenie danych do tabeli rodzaje_masazu (5 rekordów) */

INSERT INTO rodzaje_masazu_p (nazwa,typ) VALUES ('Masaż szwedzki','terapeutyczny');
INSERT INTO rodzaje_masazu_p (nazwa,typ) VALUES ('Masaż shiatsu','terapeutyczny');
INSERT INTO rodzaje_masazu_p (nazwa,typ) VALUES ('Masaż prenatalny','terapeutyczny');
INSERT INTO rodzaje_masazu_p (nazwa,typ) VALUES ('Masaż czekoladą','relaksacyjny');
INSERT INTO rodzaje_masazu_p (nazwa,typ) VALUES ('Masaż punktowy','relaksacyjny');

/* 3. wprowadzenie danych do tabeli adresy (8 rekordów) */

INSERT INTO adresy_klientów_p (miasto,wojewodztwo,kod_pocztowy,ulica,nr_mieszkania,nr_domu)
VALUES ('Mrągowo','Warminsko-Mazurskie','12-555','Sezamkowa','5','10');

INSERT INTO adresy_klientów_p (miasto,wojewodztwo,kod_pocztowy,ulica,nr_mieszkania,nr_domu)
VALUES ('Mrągowo','Warminsko-Mazurskie','12-555','Wojskowa','5','10');

INSERT INTO adresy_klientów_p (miasto,wojewodztwo,kod_pocztowy,ulica,nr_mieszkania,nr_domu)
VALUES ('Mrągowo','Warminsko-Mazurskie','12-555','Kanciarska','5','10');

INSERT INTO adresy_klientów_p (miasto,wojewodztwo,kod_pocztowy,ulica,nr_mieszkania,nr_domu)
VALUES ('Mrągowo','Warminsko-Mazurskie','12-555','Krajańska','5','10');

INSERT INTO adresy_klientów_p (miasto,wojewodztwo,kod_pocztowy,ulica,nr_mieszkania,nr_domu)
VALUES ('Mrągowo','Warminsko-Mazurskie','12-555','Niepodległości','5','10');

INSERT INTO adresy_klientów_p (miasto,wojewodztwo,kod_pocztowy,ulica,nr_mieszkania,nr_domu)
VALUES ('Mrągowo','Warminsko-Mazurskie','12-555','Wojskowa','5','10');

INSERT INTO adresy_klientów_p (miasto,wojewodztwo,kod_pocztowy,ulica,nr_mieszkania,nr_domu)
VALUES ('Piecki','Warminsko-Mazurskie','12-400','Szkolna','1','13');

INSERT INTO adresy_klientów_p (miasto,wojewodztwo,kod_pocztowy,ulica,nr_mieszkania,nr_domu)
VALUES ('Piecki','Warminsko-Mazurskie','12-400','Awangardy','7','16');

/* 4. wprowadzenie danych do tabeli klienci (10 rekordów) */

INSERT INTO klienci_p VALUES ('99999999991','Janina','Drezek','500500501','1950-05-11',1);
INSERT INTO klienci_p VALUES ('99999999992','Marek','Drezek','500500502','1951-06-11',1);
INSERT INTO klienci_p VALUES ('99999999993','Jonasz','Ciapek','500500503','1970-05-11',2);
INSERT INTO klienci_p VALUES ('99999999994','Jan','Tobojko','500500504','1975-05-11',3);
INSERT INTO klienci_p VALUES ('99999999995','Joahim','Jonasz','500500505','1905-05-11',4);
INSERT INTO klienci_p VALUES ('99999999996','Witold','Krakuski','500500506','1978-05-11',5);
INSERT INTO klienci_p VALUES ('99999999997','Albert','Norek','500500507','1982-05-11',6);
INSERT INTO klienci_p VALUES ('99999999998','Aldona','Kitajek','500500508','1991-05-11',7);
INSERT INTO klienci_p VALUES ('99999999909','Marzena','Wieprz','500500509','1985-05-11',8);
INSERT INTO klienci_p VALUES ('99999999990','Joanna','Kaczorek','500500511','1960-05-11',8);
INSERT INTO klienci_p VALUES ('32122399991','Jonasz','Drezek','500510501','1999-05-11',1);

/* 5. wprowadzenie danych do tabeli wizyty (15 rekordów) */

INSERT INTO wizyty_p (data_wizyty,godzina_wizyty,cena,czas_trwania,rodzaj_masazu,pracownik,klient)
VALUES ('2021-02-11','11:30',60,30,1,'2776661113','99999999991');

INSERT INTO wizyty_p (data_wizyty,godzina_wizyty,cena,czas_trwania,rodzaj_masazu,pracownik,klient)
VALUES ('2021-02-11','12:00',90,45,1,'2776661113','99999999992');

INSERT INTO wizyty_p (data_wizyty,godzina_wizyty,cena,czas_trwania,rodzaj_masazu,pracownik,klient)
VALUES ('2021-02-11','12:45',60,30,1,'2776661113','99999999993');

INSERT INTO wizyty_p (data_wizyty,godzina_wizyty,cena,czas_trwania,rodzaj_masazu,pracownik,klient)
VALUES ('2021-02-13','11:00',100,30,3,'7111661118','99999999909');

INSERT INTO wizyty_p (data_wizyty,godzina_wizyty,cena,czas_trwania,rodzaj_masazu,pracownik,klient)
VALUES ('2021-02-13','11:30',100,30,3,'7111661118','99999999998');

INSERT INTO wizyty_p (data_wizyty,godzina_wizyty,cena,czas_trwania,rodzaj_masazu,pracownik,klient)
VALUES ('2021-02-20','12:00',150,60,3,'7111661118','99999999998');

INSERT INTO wizyty_p (data_wizyty,godzina_wizyty,cena,czas_trwania,rodzaj_masazu,pracownik,klient)
VALUES ('2021-02-15','13:00',70,30,2,'7776668118','99999999994');

INSERT INTO wizyty_p (data_wizyty,godzina_wizyty,cena,czas_trwania,rodzaj_masazu,pracownik,klient)
VALUES ('2021-02-20','13:00',100,20,4,'7111661118','99999999990');

INSERT INTO wizyty_p (data_wizyty,godzina_wizyty,cena,czas_trwania,rodzaj_masazu,pracownik,klient)
VALUES ('2021-03-02','12:00',40,30,5,'7111661118','99999999995');

INSERT INTO wizyty_p (data_wizyty,godzina_wizyty,cena,czas_trwania,rodzaj_masazu,pracownik,klient)
VALUES ('2021-03-02','12:00',80,30,4,'7333661118','99999999996');

INSERT INTO wizyty_p (data_wizyty,godzina_wizyty,cena,czas_trwania,rodzaj_masazu,pracownik,klient)
VALUES ('2021-03-04','11:00',80,30,4,'7776621118','99999999997');

INSERT INTO wizyty_p (data_wizyty,godzina_wizyty,cena,czas_trwania,rodzaj_masazu,pracownik,klient)
VALUES ('2021-03-04','14:00',50,30,5,'7776621118','99999999992');

INSERT INTO wizyty_p (data_wizyty,godzina_wizyty,cena,czas_trwania,rodzaj_masazu,pracownik,klient)
VALUES ('2021-03-02','12:00',80,30,4,'7776621118','99999999997');

INSERT INTO wizyty_p (data_wizyty,godzina_wizyty,cena,czas_trwania,rodzaj_masazu,pracownik,klient)
VALUES ('2021-03-02','12:00',80,30,4,'7776668118','99999999909');

INSERT INTO wizyty_p (data_wizyty,godzina_wizyty,cena,czas_trwania,rodzaj_masazu,pracownik,klient)
VALUES ('2021-03-02','12:00',60,30,1,'7333661118','99999999991');


