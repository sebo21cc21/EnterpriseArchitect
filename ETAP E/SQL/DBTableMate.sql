/* ---------------------------------------------------- */
/*  Generated by Enterprise Architect Version 14.1 		*/
/*  Created On : 28-mar-2025 21:58:06 				*/
/*  DBMS       : SQLite 								*/
/* ---------------------------------------------------- */

/* Drop Views */

DROP VIEW IF EXISTS 'VIEW_A'
;

/* Drop Tables */

DROP TABLE IF EXISTS 'Administrator'
;

DROP TABLE IF EXISTS 'BazaSprzętuIt'
;

DROP TABLE IF EXISTS 'Biurko'
;

DROP TABLE IF EXISTS 'Dostawa'
;

DROP TABLE IF EXISTS 'DostępnośćZasobu'
;

DROP TABLE IF EXISTS 'HistoriaZamówień'
;

DROP TABLE IF EXISTS 'ListaUżytkowników'
;

DROP TABLE IF EXISTS 'Menu'
;

DROP TABLE IF EXISTS 'MiejsceParkingowe'
;

DROP TABLE IF EXISTS 'Posiłek'
;

DROP TABLE IF EXISTS 'Powiadomienie'
;

DROP TABLE IF EXISTS 'Raport'
;

DROP TABLE IF EXISTS 'RaportRezerwacji'
;

DROP TABLE IF EXISTS 'RaportZamówień'
;

DROP TABLE IF EXISTS 'Rezerwacja'
;

DROP TABLE IF EXISTS 'RezerwacjeUżytkowników'
;

DROP TABLE IF EXISTS 'SalaKonferencyjna'
;

DROP TABLE IF EXISTS 'SprzętIt'
;

DROP TABLE IF EXISTS 'Uzytkownik'
;

DROP TABLE IF EXISTS 'Zamówienie'
;

DROP TABLE IF EXISTS 'Zasob'
;

/* Create Tables with Primary and Foreign Keys, Check and Unique Constraints */

	-- Użytkownik systemu o roli administratora
CREATE TABLE 'Administrator'
(
	'Rola' varchar NULL,
	'AdministratorID' INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	'ListaUżytkownikówID' INTEGER NOT NULL,
	CONSTRAINT 'FK_Administrator_zarządza' FOREIGN KEY ('ListaUżytkownikówID') REFERENCES 'ListaUżytkowników' ('ListaUżytkownikówID') ON DELETE No Action ON UPDATE No Action
)
;

	-- Lista dostępnych urządzeń
CREATE TABLE 'BazaSprzętuIt'
(
	'Identyfikator' varchar NULL,
	'BazaSprzętuItID' INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	'SprzętItID' INTEGER NULL,
	CONSTRAINT 'FK_BazaSprzętuIt_SprzętIt' FOREIGN KEY ('SprzętItID') REFERENCES 'SprzętIt' ('SprzętItID') ON DELETE No Action ON UPDATE No Action
)
;

	-- Stanowisko pracy
CREATE TABLE 'Biurko'
(
	'Numer' varchar NULL,
	'BiurkoID' INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	CONSTRAINT 'FK_Biurko_Zasob' FOREIGN KEY ('BiurkoID') REFERENCES 'Zasob' ('ZasobID') ON DELETE No Action ON UPDATE No Action
)
;

	-- Szczegóły dostawy zamówienia
CREATE TABLE 'Dostawa'
(
	'Identyfikator' varchar NULL,
	'Stanowisko' varchar NULL,
	'DostawaID' INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT
)
;

	-- Dostępność zasobu w danym czasie
CREATE TABLE 'DostępnośćZasobu'
(
	'Czas' varchar NULL,
	'Data' varchar NULL,
	'Dostępność' varchar NULL,
	'DostępnośćZasobuID' INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	'UzytkownikID' INTEGER NULL,
	CONSTRAINT 'FK_Dostępność zasobu_sprawdza' FOREIGN KEY ('UzytkownikID') REFERENCES 'Uzytkownik' ('UzytkownikID') ON DELETE No Action ON UPDATE No Action
)
;

	-- Historia zamówień zalogowanego użytkownika
CREATE TABLE 'HistoriaZamówień'
(
	'Identyfikator' varchar NULL,
	'HistoriaZamówieńID' INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	'UzytkownikID' INTEGER NULL,
	CONSTRAINT 'FK_Historia zamówień_przegląda' FOREIGN KEY ('UzytkownikID') REFERENCES 'Uzytkownik' ('UzytkownikID') ON DELETE No Action ON UPDATE No Action
)
;

	-- Lista użytkowników systemu
CREATE TABLE 'ListaUżytkowników'
(
	'Identyfikator' varchar NULL,
	'ListaUżytkownikówID' INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT
)
;

	-- Lista pozycji w menu
CREATE TABLE 'Menu'
(
	'Identyfikator' varchar NULL,
	'MenuID' INTEGER NOT NULL PRIMARY KEY
)
;

	-- Miejsce parkingowe
CREATE TABLE 'MiejsceParkingowe'
(
	'Położenie' varchar NULL,
	'MiejsceParkingoweID' INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	CONSTRAINT 'FK_Miejsce parkingowe_Zasob' FOREIGN KEY ('MiejsceParkingoweID') REFERENCES 'Zasob' ('ZasobID') ON DELETE No Action ON UPDATE No Action
)
;

	-- Pozycja w menu
CREATE TABLE 'Posiłek'
(
	'Identyfikator' varchar NULL,
	'Nazwa' varchar NULL,
	'Opis' varchar NULL,
	'PosiłekID' INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	'MenuID' INTEGER NULL,
	CONSTRAINT 'FK_Posiłek_zawiera' FOREIGN KEY ('MenuID') REFERENCES 'Menu' ('MenuID') ON DELETE No Action ON UPDATE No Action
)
;

	-- Powiadomienie o rezerwacji
CREATE TABLE 'Powiadomienie'
(
	'Identyfikator' varchar NULL,
	'Odbiorca' varchar NULL,
	'Treść' varchar NULL,
	'Tytuł' varchar NULL,
	'PowiadomienieID' INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	'UzytkownikID' INTEGER NULL,
	CONSTRAINT 'FK_Powiadomienie_otrzymuje' FOREIGN KEY ('UzytkownikID') REFERENCES 'Uzytkownik' ('UzytkownikID') ON DELETE No Action ON UPDATE No Action
)
;

	-- Raport systemu TableMate
CREATE TABLE 'Raport'
(
	'Identyfikator' varchar NULL,
	'RaportID' varchar NOT NULL PRIMARY KEY,
	'AdministratorID' INTEGER NULL,
	CONSTRAINT 'FK_Raport_generuje' FOREIGN KEY ('AdministratorID') REFERENCES 'Administrator' ('AdministratorID') ON DELETE No Action ON UPDATE No Action
)
;

	-- Raport z listą rezerwacji
CREATE TABLE 'RaportRezerwacji'
(
	'Rezerwacja' varchar NULL,
	'RaportRezerwacjiID' INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	CONSTRAINT 'FK_Raport rezerwacji_Raport' FOREIGN KEY ('RaportRezerwacjiID') REFERENCES 'Raport' ('RaportID') ON DELETE No Action ON UPDATE No Action
)
;

	-- Raport z listą zamówień
CREATE TABLE 'RaportZamówień'
(
	'RaportZamówieńID' INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	CONSTRAINT 'FK_Raport zamówień_Raport' FOREIGN KEY ('RaportZamówieńID') REFERENCES 'Raport' ('RaportID') ON DELETE No Action ON UPDATE No Action
)
;

	-- Rezerwacja użytkownika
CREATE TABLE 'Rezerwacja'
(
	'Identyfiaktor' varchar NULL,
	'Zasób' varchar NULL,
	'RezerwacjaID' INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	'RezerwacjeUżytkownikówID' INTEGER NULL,
	'ZasobID' INTEGER NULL,
	CONSTRAINT 'FK_Rezerwacja_zawiera' FOREIGN KEY ('RezerwacjeUżytkownikówID') REFERENCES 'RezerwacjeUżytkowników' ('RezerwacjeUżytkownikówID') ON DELETE No Action ON UPDATE No Action,
	CONSTRAINT 'FK_Rezerwacja_rezerwuje' FOREIGN KEY ('ZasobID') REFERENCES 'Zasob' ('ZasobID') ON DELETE No Action ON UPDATE No Action
)
;

	-- Lista rezerwacji użytkowników
CREATE TABLE 'RezerwacjeUżytkowników'
(
	'Identyfikator' varchar NULL,
	'RezerwacjeUżytkownikówID' INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT
)
;

	-- Sala konferencyjna
CREATE TABLE 'SalaKonferencyjna'
(
	'Nazwa' varchar NULL,
	'SalaKonferencyjnaID' INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	CONSTRAINT 'FK_Sala konferencyjna_Zasob' FOREIGN KEY ('SalaKonferencyjnaID') REFERENCES 'Zasob' ('ZasobID') ON DELETE No Action ON UPDATE No Action
)
;

	-- Sprzęt IT
CREATE TABLE 'SprzętIt'
(
	'Identyfikator' varchar NULL,
	'Nazwa' varchar NULL,
	'Typ' varchar NULL,
	'SprzętItID' INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT
)
;

	-- Użytkownik systemu TableMate
CREATE TABLE 'Uzytkownik'
(
	'Identyfiktor' varchar NULL,
	'Imię' varchar NULL,
	'Nazwisko' varchar NULL,
	'UzytkownikID' INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	'ListaUżytkownikówID' INTEGER NULL,
	'RezerwacjeUżytkownikówID' INTEGER NULL,
	CONSTRAINT 'FK_Uzytkownik_zawiera' FOREIGN KEY ('ListaUżytkownikówID') REFERENCES 'ListaUżytkowników' ('ListaUżytkownikówID') ON DELETE No Action ON UPDATE No Action,
	CONSTRAINT 'FK_Uzytkownik_modyfikuje' FOREIGN KEY ('RezerwacjeUżytkownikówID') REFERENCES 'RezerwacjeUżytkowników' ('RezerwacjeUżytkownikówID') ON DELETE No Action ON UPDATE No Action
)
;

	-- Zamówienie użytkownika w systemie TableMate
CREATE TABLE 'Zamówienie'
(
	'Data' varchar NULL,
	'Dostawa' varchar NULL,
	'Identyfikator' varchar NULL,
	'Posiłek' varchar NULL,
	'Sprzęt' varchar NULL,
	'ZamówienieID' INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	'DostawaID' INTEGER NOT NULL,
	'HistoriaZamówieńID' INTEGER NULL,
	'PosiłekID' INTEGER NULL,
	'SprzętItID' INTEGER NULL,
	CONSTRAINT 'FK_Zamówienie_posiada' FOREIGN KEY ('DostawaID') REFERENCES 'Dostawa' ('DostawaID') ON DELETE No Action ON UPDATE No Action,
	CONSTRAINT 'FK_Zamówienie_zawiera' FOREIGN KEY ('HistoriaZamówieńID') REFERENCES 'HistoriaZamówień' ('HistoriaZamówieńID') ON DELETE No Action ON UPDATE No Action,
	CONSTRAINT 'FK_Zamówienie_Posiłek' FOREIGN KEY ('PosiłekID') REFERENCES 'Posiłek' ('PosiłekID') ON DELETE No Action ON UPDATE No Action,
	CONSTRAINT 'FK_Zamówienie_SprzętIt' FOREIGN KEY ('SprzętItID') REFERENCES 'SprzętIt' ('SprzętItID') ON DELETE No Action ON UPDATE No Action
)
;

	-- Zasób firmy
CREATE TABLE 'Zasob'
(
	'Identyfikator' varchar NULL,
	'ZasobID' INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT
)
;

/* Create Views */

CREATE VIEW 'VIEW_A' AS 
/* SQL statements defining VIEW_A */
;

