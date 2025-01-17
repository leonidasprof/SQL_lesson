create database banco_next1;


-- domínio onde um aluno estuda curso (1,1) 
-- e curso tem alunos (1,n)



create table curso(
id varchar(20) primary key,
nome varchar(50) unique,
carga_horaria int check (carga_horaria > 30),
coordenador varchar(50)
); 

create table aluno(
matricula int primary key auto_increment,
nome varchar(50),
data_nascimento date not null,
email varchar(50),
fk_curso varchar(20),

foreign key(fk_curso) references curso(id)
);

alter table aluno rename column nome to nomeCompleto;

alter table aluno add telefone varchar(20);

-- drop table aluno;

-- comando de manipulação de DMl

insert into curso (id, nome, carga_horaria, coordenador) 
values ("CC01", "Ciência da Computação", 50, "João");

insert into curso (id, nome, carga_horaria, coordenador) 
values ("SI01", "Gestão da Técnologia da Informação", 50, "Roberto");

update curso set coordenador = "Jorge Alberto"
where id = "SI01";

select * from curso; -- este select exibe abaixo todos os dados da tabela

insert into aluno( nome, data_nascimento, email, fk_curso)
values ("Joaõ Gomes", '1998-09-05', "jg_cantor@gmail.com", "CC01");

insert into aluno(nomeCompleto, data_nascimento, email, fk_curso, telefone)
values ("Leonidas Leandro", '1982-09-05', "inscrofatr@gmail.com", "CC01", "(81) 98291-1203");

select * from aluno;

delete from aluno where matricula = 2;