-- a) Encontre os nomes e as idades de todos os marinheiros:

SELECT m.nomeMarinheiro, m.idade as 'idadeMarinheiro'
from Marinheiro m;

-- b) Encontre todos os marinheiros com uma avaliação bom

select *
from marinheiro
where avaliacao = 'bom';


-- c) Encontre os nomes de marinheiros que reservaram o barco 103

select m.nomeMarinheiro
from marinheiro m, Reserva r
where m.idMarinheiro = r.idMarinheiro and r.idBarco = 103;

-- d) Encontre os idMarinheiro dos marinheiros que reservaram um barco vermelho

select r.idMarinheiro
from Reserva r, Barco b
where  r.idBarco = b.idBarco 
and b.cor = 'vermelho';


-- e) Encontre os nomes dos marinheiros que reservaram um barco vermelho

select distinct m.nomeMarinheiro
from Reserva r, barco b, Marinheiro m
where r.idBarco = b.idBarco and 
r.idMarinheiro = m.idMarinheiro and
b.cor = 'vermelho';

-- f) Encontre as cores dos barcos reservados por Lubber

select distinct b.cor
from Reserva r, barco b, Marinheiro m
where r.idBarco = b.idBarco and 
r.idMarinheiro = m.idMarinheiro and
m.nomeMarinheiro = 'Lubber';

-- g) Encontre os nomes dos marinheiros que reservaram pelo menos um barco

select distinct m.nomeMarinheiro
from Reserva r, Marinheiro m
where r.idMarinheiro = m.idMarinheiro;

-- subconsulta para mostrar marinheiros que não realizaram reservas
select distinct m.nomeMarinheiro
from Marinheiro m
where m.idMarinheiro not in (select r.idMarinheiro
							from Reserva r); 

-- h) Encontre as idades dos marinheiros cujos nomes começam ou terminam com B e têm no mínimo três caracteres

select m.nomeMarinheiro, m.idade
from Marinheiro m
where m.nomeMarinheiro like 'B__%' or m.nomeMarinheiro like '__b';

-- i) Encontre a idade média de todos os marinheiros

select avg(m.idade)
from Marinheiro m;

-- j) Encontre a idade média dos marinheiros com idade maior que 27

select avg(m.idade)
from Marinheiro m
where idade > 27;

-- k) Encontre o quantidade total de marinheiros

select count(*)
from Marinheiro;

select count(idMarinheiro)
from Marinheiro m;

-- l) Encontre o número de nomes diferentes de marinheiros

select count(distinct m.nomeMarinheiro)
from Marinheiro m;
