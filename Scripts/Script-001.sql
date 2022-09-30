
DROP TABLE IF EXISTS prova_creazione;

CREATE TABLE IF NOT EXISTS prova_creazione (
codice int,
descrizione varchar (256),
PRIMARY KEY (codice)
);


-- inserire dati
INSERT INTO prova_creazione (codice, descrizione) VALUES (1, "articolo di prova 001");
INSERT INTO prova_creazione (codice, descrizione) VALUES (2, "articolo di prova 002");


-- esercizio
DROP table if exists studenti;

create table if not exists studenti (
matricola char (5),
nome varchar (50),
cognome varchar (50),
primary key (matricola)
);

insert into studenti (matricola, nome, cognome) values ("fpres", "cristina", "chirichella");
insert into studenti (matricola, nome, cognome) values ("fpoes", "marta", "danesi");
insert into studenti (matricola, nome, cognome) values ("fprps", "alessia", "orro");
insert into studenti (matricola, nome, cognome) values ("ftres", "simone", "giannelli");
insert into studenti (matricola, nome, cognome) values ("frees", "daniele", "lavia");

delete from studenti where nome = "daniele";

update studenti set nome = "anna" where matricola = "fpoes";







