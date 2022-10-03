-- esercitazione


-- elencare l'età dei figli e delle madri
SELECT m.mother  AS Nome, p.age as eta
from motherchild m
inner join person p
on m.mother = p.name
UNION
SELECT m.child, p.age as eta
from motherchild m
inner join person p
on m.child  = p.name;

-- oppure
select m.mother as nomeMadre, p.age as etaMadre, m.child as NomeFiglio, p2.age as etaFiglio
from motherchild m
inner join person p
on m.mother = p.name
inner join person p2
on m.child = p2.name;

-- stampare padre e madre sulla stessa riga

select
m.mother as NomeMadre,
f.father as NomePadre,
m.child as NomeFiglio
from motherchild m
left join fatherchild f
on m.child = f.child
union 
select
m.mother as NomeMadre,
f.father as NomePadre,
f.child as NomeFiglio
from fatherchild f
left join motherchild m
on m.child = f.child;



-- join left e join right considerano l'ordine di dichiarazione delle tabelle
select
m.mother as NomeMadre,
f.father as NomePadre,
m.child as NomeFiglio
from motherchild m
left join fatherchild f
on m.child = f.child

union 

select
m.mother as NomeMadre,
f.father as NomePadre,
f.child as NomeFiglio
from motherchild m
right join fatherchild f
on m.child = f.child;


select 
m.mother as NomeMadre, pm.age as etaMadre,
f.father as NomePadre, pf.age as etaPdre,
m.child as NomeFiglio, pm.age as etaFiglio






