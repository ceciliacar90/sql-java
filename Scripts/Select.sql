DESCRIBE regioni;

-- SELECT campo (as:  rinominare se si vuole) FROM table
-- WHERE campo = values (si possono aggiungere variazioni con gli or)
-- se non metto il WHERE seleziona tutto

SELECT id, nome as regione, latitudine, longitudine 
from regioni

-- where id in(5, 13, aggiungi roba) è la stessa cosa
where id = 5 or id = 13
order by 2;

-- esercizio SELECT 

describe regioni;

select nome from regioni order by nome;
 

select id, nome from regioni where nome in ("Campania", "Lazio")
order by nome;


describe province;

select nome from province where id_regione in(15, 12)
order by nome;

describe comuni;

select id, nome from regioni where nome in ("Basilicata");

select nome from comuni where id_regione in (17)
order by nome;


select id_regione, id, nome as comune
from comuni
where id_regione in (
select id
from regioni
where nome in ("Basilicata")
)
order by comune;



select "Regioni:" as tipo , count(*) from regioni as conteggio
union
select "Province:", count(*) from province 
union
select "Comuni:", count(*) from comuni
;

-- come righe
select count(*) as "#Regioni" from regioni;
select count(*) as "#Province" from province;
select count(*) as "#Comuni" from comuni;

-- come colonne
select
(select count(*) from regioni) as "#Regioni",
(select count(*) from province) as "#Province",
(select count(*)  from comuni) as "#Comuni"
;

describe regioni;
describe province;
describe comuni;

select nome from comuni where id_provincia not in (
select id from province 
where nome not in ("Napoli")
) and id_regione in (
select id from regioni where nome in ("Campania")
)
order by nome;








