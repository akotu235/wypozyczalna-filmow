INSERT INTO grupy_cenowe (nazwa, cena_dzienna)
VALUES ('normal', 10);

INSERT INTO kara_spoznienie (wartosc_proc)
VALUES (150);

INSERT INTO gatunki (nazwa)
VALUES ('Sci-Fi'),
       ('Thriller'),
       ('Adventure'),
       ('Crime'),
       ('Drama'),
       ('Action');

INSERT INTO filmy (tytul, rok_produkcji, czas_trwania, grupa_cenowa_id)
VALUES ('Incepcja', 2010, 148, 1),
       ('Interstellar', 2014, 169, 1),
       ('Pulp Fiction', 1994, 154, 1),
       ('The Matrix', 1999, 136, 1),
       ('Fight Club', 1999, 139, 1);

INSERT INTO gatunek_film (film_id, gatunek_id)
VALUES (1, 1),
       (1, 2),
       (2, 1),
       (2, 5),
       (3, 4),
       (4, 1),
       (4, 6),
       (5, 5);

INSERT INTO rezyser (imie, nazwisko)
VALUES ('Christopher', 'Nolan'),
       ('Quentin', 'Tarantino'),
       ('Lana', 'Wachowski'),
       ('Lilly', 'Wachowski'),
       ('David', 'Fincher');

INSERT INTO rezyser_film (film_id, rezyser_id)
VALUES (1, 1),
       (2, 1),
       (3, 2),
       (4, 3),
       (5, 4);

INSERT INTO klienci (imie, nazwisko, data_urodzenia, adres, miasto)
VALUES ('Jan', 'Kowalski', '1985-05-20', 'ul. Warszawska 24', 'Warszawa'),
       ('Anna', 'Nowak', '1992-03-15', 'ul. Krakowska 56', 'Krak�w'),
       ('Marek', 'Wieczorek', '1978-11-30', 'ul. Parkowa 12', 'Wroc�aw'),
       ('Ewa', 'Maj', '1989-07-09', 'ul. S�oneczna 44', 'Gda�sk'),
       ('Tomasz', 'Czerwi�ski', '1990-09-14', 'ul. Le�na 23', 'Pozna�');

INSERT INTO egzemplarze (film_id, dostepny)
VALUES (1, 1),
       (1, 1),
       (2, 1),
       (2, 1),
       (3, 1),
       (3, 1),
       (4, 1),
       (4, 1),
       (5, 1),
       (5, 1);

EXEC sp_dodaj_wypozyczenie
    @egzemplarz_id = 1,
    @klient_id = 2,
    @data_wypozyczenia = '2024-06-23',
    @data_planowanego_oddania = '2024-06-30';

EXEC sp_dodaj_wypozyczenie
    @egzemplarz_id = 1,
    @klient_id = 2,
    @data_wypozyczenia = '2024-06-23',
    @data_planowanego_oddania = '2024-06-30';

EXEC sp_dodaj_wypozyczenie
    @egzemplarz_id = 2,
    @klient_id = 3,
    @data_wypozyczenia = '2024-06-23',
    @data_planowanego_oddania = '2024-06-30';

EXEC sp_dodaj_wypozyczenie
    @egzemplarz_id = 2,
    @klient_id = 4,
    @data_wypozyczenia = '2024-06-23',
    @data_planowanego_oddania = '2024-06-30';

EXEC sp_dodaj_wypozyczenie
    @egzemplarz_id = 3,
    @klient_id = 4,
    @data_wypozyczenia = '2024-06-23',
    @data_planowanego_oddania = '2024-06-30';

EXEC sp_dodaj_wypozyczenie
    @egzemplarz_id = 3,
    @klient_id = 1,
    @data_wypozyczenia = '2024-06-23',
    @data_planowanego_oddania = '2024-06-30';

EXEC sp_dodaj_wypozyczenie
    @egzemplarz_id = 4,
    @klient_id = 5,
    @data_wypozyczenia = '2024-06-23',
    @data_planowanego_oddania = '2024-06-30';

EXEC sp_dodaj_wypozyczenie
    @egzemplarz_id = 4,
    @klient_id = 5,
    @data_wypozyczenia = '2024-06-23',
    @data_planowanego_oddania = '2024-06-30';

EXEC sp_dodaj_wypozyczenie
    @egzemplarz_id = 5,
    @klient_id = 2,
    @data_wypozyczenia = '2024-06-23',
    @data_planowanego_oddania = '2024-06-30';

EXEC sp_dodaj_wypozyczenie
    @egzemplarz_id = 5,
    @klient_id = 1,
    @data_wypozyczenia = '2024-06-23',
    @data_planowanego_oddania = '2024-06-30';

------------------------------------------------

EXEC sp_zwroc_wypozyczenie
    @wypozyczenie_id = 1,
    @data_faktycznego_oddania = '2024-06-27',
    @ocena = 1;

EXEC sp_zwroc_wypozyczenie
    @wypozyczenie_id = 2,
    @data_faktycznego_oddania = '2024-06-27',
    @ocena = 2;

EXEC sp_zwroc_wypozyczenie
    @wypozyczenie_id = 3,
    @data_faktycznego_oddania = '2024-06-27',
    @ocena = 3;

EXEC sp_zwroc_wypozyczenie
    @wypozyczenie_id = 4,
    @data_faktycznego_oddania = '2024-06-27',
    @ocena = 4;

EXEC sp_zwroc_wypozyczenie
    @wypozyczenie_id = 3,
    @data_faktycznego_oddania = '2024-06-27',
    @ocena = 4;

EXEC sp_zwroc_wypozyczenie
    @wypozyczenie_id = 5,
    @data_faktycznego_oddania = '2024-06-27',
    @ocena = 5;

EXEC sp_zwroc_wypozyczenie
    @wypozyczenie_id = 6,
    @data_faktycznego_oddania = '2024-06-27',
    @ocena = 6;

EXEC sp_zwroc_wypozyczenie
    @wypozyczenie_id = 7,
    @data_faktycznego_oddania = '2024-06-27',
    @ocena = 7;

EXEC sp_zwroc_wypozyczenie
    @wypozyczenie_id = 8,
    @data_faktycznego_oddania = '2024-06-27',
    @ocena = 8;