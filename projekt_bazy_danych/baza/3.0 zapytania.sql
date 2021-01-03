/* 1. Sprawdzenie fukckcji pracownikow oraz ilosc kadr w tych funkcjach  */

SELECT funkcja,COUNT(funkcja) AS ilosc
FROM pracownicy_p
GROUP BY funkcja;

/* 2. Sprawdzania ilości klientów */

SELECT COUNT(pesel) AS ilosc_klientow FROM klienci_p;

/* 3. Sprawdzanie miast klientów np. */

SELECT 
	klienci_p.imie, klienci_p.nazwisko, klienci_p.telefon, adresy_klientw_p.miasto
FROM klienci_p
INNER JOIN adresy_klientw_p ON klienci_p.id_adresu = adresy_klientw_p.id_adresu;


/* 4. Sprawdzenie 3 najstarszych klientów (np. dla akcji marketingowej dla seniorów) oraz obliczenie wieku */

SELECT 
	imie, nazwisko, telefon, YEAR(CURRENT_DATE()) - YEAR(data_urodzenia) AS wiek
FROM klienci_p
ORDER BY data_urodzenia
LIMIT 3;

/* 5. Sprawdzenie rodzaju zamowionego masazu u klientow, posegreguj od najblizszego terminu */

SELECT wizyty_p.data_wizyty, klienci_p.imie, klienci_p.nazwisko, rodzaje_masazu_p.nazwa 
FROM wizyty_p
LEFT JOIN rodzaje_masazu_p ON wizyty_p.rodzaj_masazu = rodzaje_masazu_p.id_rodzaju
LEFT JOIN klienci_p ON wizyty_p.klient = klienci_p.pesel
ORDER by wizyty_p.data_wizyty;

/* 6. Sprawdzenie ilosci zamowionych terminow wedlug miesiaca  */

SELECT MONTH(data_wizyty) AS miesiac, COUNT(data_wizyty) AS ilosc 
FROM wizyty_p
GROUP BY MONTH(data_wizyty);

/* 7. Sprawdzenie wizyt wraz z imionami klientow o cenie wyzszej niz 90 (wizyty + klienci) */

SELECT 
	wizyty_p.data_wizyty, wizyty_p.godzina_wizyty, wizyty_p.cena, klienci_p.imie, klienci_p.nazwisko
FROM wizyty_p
LEFT JOIN klienci_p ON wizyty_p.klient = klienci_p.pesel
WHERE (wizyty_p.cena > 90);


/* 8. Sprawdzenie ilosci zaplanowanych masazow wedlug typu masazu */

SELECT
	rodzaje_masazu_p.typ ,COUNT(rodzaje_masazu_p.typ)
FROM wizyty_p
LEFT JOIN rodzaje_masazu_p ON wizyty_p.rodzaj_masazu = rodzaje_masazu_p.id_rodzaju
GROUP BY rodzaje_masazu_p.typ;

/* 9. Sprawdzenie sumy zarobkow z planowanych wizyt na okres lutego */

SELECT 
	MONTH(data_wizyty) AS miesiac , SUM(cena) AS suma_zarobkow
FROM wizyty_p
WHERE MONTH(data_wizyty) = 2
GROUP BY MONTH(data_wizyty);

/* 10. Wyświetl wszystkie kobiety (reguła w języku polskim jest taka, że wszystkie współczesne damskie imiona kończą się na A, niebędące zdrobnieniami)
w postaci imion, nazwisk, adresu zamieszkania (czyli wszystkie dane postrzebne do zaadresowania) np. by rozesłać koperty z kodami rabatowymi na dzień kobiet.  */

SELECT 
	CONCAT(klienci_p.imie, ' ', klienci_p.nazwisko) AS imie_i_nazwisko,
	CONCAT(adresy_klientw_p.miasto, ' ', adresy_klientw_p.wojewodztwo, ' ', adresy_klientw_p.kod_pocztowy, ' ', adresy_klientw_p.ulica) AS dane_miasta ,
	CONCAT(adresy_klientw_p.nr_domu ,' m ', adresy_klientw_p.nr_mieszkania) AS dom_i_mieszkanie
FROM klienci_p 
LEFT JOIN adresy_klientw_p ON klienci_p.id_adresu = adresy_klientw_p.id_adresu
WHERE klienci_p.imie LIKE '%a';