-- 1.	Selecione todos os eventos que aconteceram entre a data 2018-01-01 e 2018-06-30.

select *
from Evento e
where e.data_evento between '2018-01-01' and '2018-06-30';

-- 2.	Selecione o nome de todos os clientes que começam ou terminam com 'A';

select c.nome
from Cliente c
where c.nome like 'A%' or c.nome like '%A';

-- 3.	Selecione o número de clientes por bairro;

select c.bairro, count(*)
from Cliente c
group by c.bairro;

-- 4.	Retorne apenas os clientes que possuem o complemento do endereço nulo;

select *
from Cliente c
where c.complemento is null;

-- 5.	Recupere a descrição, o horário e o valor de todos os eventos agendados para o dia '2018/09/12'.

select descricao, horario, valor
from Evento
where data_evento = '2018/09/12';

-- 6.	(subconsulta) Recupere os dados de todos os locais que não possuem reserva.

select le.cod_local, le.descricao, le.nome_local
from local_evento le
where le.cod_local not in
(select Local_cod_local1 from Evento e, Reserva r where r.Evento_cod_Evento = e.cod_evento);

-- 7.	Recupere os nomes dos clientes que realizaram eventos com um valor maior do que R$2.000,00 no local de nome “Parque de Exposições”.

