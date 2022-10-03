-- inner join risolta con where clause
-- quali sono gli ordini effettuati dai clienti?
select c.id_cliente, c.nome, c.cognome, o.valore
from clienti c, ordini o -- gli alias sono necessari a causa del medesimo nome della colonna id_cliente sulle tabelle
where c.id_cliente = o.id_cliente
order by 1;

-- inner join
-- quali sono gli ordini effettuati dai clienti?
select c.id_cliente, c.nome, c.cognome, o.valore
from clienti c
inner join ordini o
on c.id_cliente = o.id_cliente;

-- inner join con sintassi compatta
-- quali sono gli ordini effettuati dai clienti?
select c.id_cliente, c.nome, c.cognome, o.valore
from clienti c
inner join ordini o
using (id_cliente);

-- prodotto cartesiano
select a.x, b.x
from cjdA a, cjdB b;

-- esercizio province del lazio

select r.id, r.nome as NomeRegione, p.id, p.nome as NomeProvincia
from province p
inner join regioni r
on p.id_regione = r.id
where r.nome = "Lazio";


-- eserccizio i comuni delle provice del lazio ordinati per provincia/comune
select c.id, c.nome as NomeComune, p.id, p.nome as NomeProvincia 
from comuni c 
inner join province p 
on c.id_provincia  = p.id
inner join regioni r on r.id = p.id_regione 
where r.nome = "Lazio"
order by r.nome, p.nome, c.nome;

-- left (outer) join
select a.id_cliente, b.id_cliente, a.nome, a.cognome, b.data, b.valore
from clienti a
left outer join ordini b
on a.id_cliente = b.id_cliente;

-- left (outer) join dei clienti che non hanno comprato 
select c.id_cliente, o.id_cliente, c.nome, c.cognome, p.nome
from clienti c
left outer join ordini o
on c.id_cliente = o.id_cliente
inner join province p 
on c.provincia = p.sigla_automobilistica 
where o.id_cliente is null;

-- full join (left union right)
select a.id_cliente, b.id_cliente, a.nome, a.cognome, b.data, b.valore
from clienti a
left outer join ordini b
on a.id_cliente = b.id_cliente
union
select a.id_cliente, b.id_cliente, a.nome, a.cognome, b.data, b.valore
from clienti a
right outer join ordini b
on a.id_cliente = b.id_cliente;




