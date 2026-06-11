-- SQL-Schema basierend auf erd_file_test.erd
-- Bibliothekssystem: Leser, Buch, Exemplar, Mitarbeiter, Ausleihe

create table Leser (
    id int primary key,
    name text not null,
    email text not null unique,
    mitglied_seit text not null
);

create table Buch (
    id int primary key,
    titel text not null,
    autor text not null,
    isbn text unique,
    verfuegbar int default 1
);

create table Mitarbeiter (
    id int primary key,
    name text not null,
    position text not null
);

create table Exemplar (
    id int primary key,
    buch_id int not null,
    standort text not null,
    status text not null default 'verfügbar',
    foreign key (buch_id) references Buch(id)
);

create table Ausleihe (
    id int primary key,
    leser_id int not null,
    mitarbeiter_id int not null,
    exemplar_id int not null,
    ausleih_datum text not null,
    rueckgabe_datum text,
    foreign key (leser_id) references Leser(id),
    foreign key (mitarbeiter_id) references Mitarbeiter(id),
    foreign key (exemplar_id) references Exemplar(id)
);
