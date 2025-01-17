USE EVENTO;

insert into Cliente values(1, 'Pedro', '88281911', 'Rua 1', 'bairro 1', '232', 'casa', '233-23321');
insert into Cliente values(2, 'Maria', '83829192', 'Rua 2', 'bairro 2', '232', 'casa', '233-23321');
insert into Cliente values(3, 'João', '77488282', 'Rua da Luz', 'centro', '5944', 'sobrado', '233-23321');
insert into Cliente values(4, 'José', '32090933', 'Rua Santo Antônio', 'Santo amaro', '1222', 'apto 302', '234-23321');
insert into Cliente values(5, 'Severina', '99201011', 'Rua Dom Pedro', 'Nazaré', '2332', 'apto 90', '984-00911');
insert into Cliente values(6, 'Antônio', '89282823', 'Rua José Alencar', 'cidade alta', '2002', null, '884-23321');
insert into Cliente values(7, 'Paulo', '898998223', 'Rua São Paulo', 'jardim irene', '0032', 'casa', '903-39922');
insert into Cliente values(8, 'Ana', '88292922', 'Rua Rio de Janeiro', 'iputinga', '232', null, '233-23321');
insert into Cliente values(9, 'Luzia', '79292993', 'Rua Amazonas', 'cidade universitária', '232', 'casa', '230-34421');
insert into Cliente values(10, 'Vitor', '32262727', 'Rua Pará', 'casa amarela', '232', 'apto 605', '402-22910');

insert into Local_evento values(1, 'Parque de Exposições', 'descrição');
insert into Local_evento values(2, 'Parque Dona Lindu', 'parque a céu aberto');
insert into Local_evento values(3, 'Centro de Eventos', 'Local com área aberta e fechada');
insert into Local_evento values(4, 'Downtown', 'Bar fechado');
insert into Local_evento values(5, 'Pier', 'Pier no Marco zero');

insert into Evento values(1, 'Evento de rock direcionado a público jovem', '2018/08/03', '22hr', '2993.33', 1, 5);
insert into Evento values(2, 'dia da saúde- exercicios', '2018/03/23', '09hr', '29.33', 5, 2);
insert into Evento values(3, 'banda cover ac/dc', '2018/02/10', '23hr', '35.00', 4, 4);
insert into Evento values(4, 'show da Shakira', '2018/09/12', '23:30hr', '70.00', 3, 3);
insert into Evento values(5, 'Exposição de animais', '2019/01/03', '08hr', '10.00', 2, 1);
insert into Evento values(6, 'Evento de musica', '2019/08/09', '18hr', '150.00', 4, 1);

insert into Reserva values(1, '2018/09/02', '17hrs', 2, 5);
insert into Reserva values(2, '2018/10/22', '17hrs', 2, 5);
insert into Reserva values(3, '2018/09/06', '17hrs', 2, 5);
insert into Reserva values(4, '2018/03/12', '17hrs', 2, 5);
insert into Reserva values(5, '2018/12/12', '17hrs', 2, 5);
insert into Reserva values(6, '2018/05/10', '17hrs', 2, 5);
insert into Reserva values(7, '2018/09/01', '17hrs', 2, 5);
insert into Reserva values(8, '2018/02/04', '17hrs', 2, 5);
insert into Reserva values(9, '2018/12/12', '17hrs', 2, 5);
insert into Reserva values(10, '2018/11/27', '17hrs', 2, 5);
insert into Reserva values(11, '2018/07/07', '17hrs', 2, 5);
insert into Reserva values(12, '2018/09/01', '10hrs', 4, 1);
insert into Reserva values(13, '2018/02/04', '23hrs', 1, 4);
insert into Reserva values(14, '2018/12/12', '22hrs', 1, 4);
insert into Reserva values(15, '2018/11/27', '23hrs', 3, 3);
insert into Reserva values(16, '2018/07/07', '11hrs', 4, 2);


