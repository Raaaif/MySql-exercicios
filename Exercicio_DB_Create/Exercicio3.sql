create database db_registro;

use db_registro;

create table tb_alunos(
id bigint auto_increment,
nome varchar(200) not null,
idade int not null,
data_nascimento date not null,
telefone_responsável bigint,
primary key (id)
);

insert into tb_alunos(nome,idade,data_nascimento,telefone_responsável) values("Raif",13,14/06/2007,11956181235);
insert into tb_alunos(nome,idade,data_nascimento,telefone_responsável) values("Caio",16,15/02/2004,11956188654);
insert into tb_alunos(nome,idade,data_nascimento,telefone_responsável) values("Ana",15,14/08/2005,11956187623);
insert into tb_alunos(nome,idade,data_nascimento,telefone_responsável) values("Carol",15,20/07/2005,11956188945);
insert into tb_alunos(nome,idade,data_nascimento,telefone_responsável) values("Tamires",12,23/06/2008,11955548838);

SELECT * FROM db_registro.tb_alunos;

select idade from tb_alunos where idade > 8;

select idade from tb_alunos where idade < 14;

update tb_alunos set nome = "Lucas" where id = 1;
update tb_alunos set idade = 13 where id = 1;
update tb_alunos set data_nascimento = 12/09/2007 where id = 1;
update tb_alunos set telefone_responsável = 11956187542 where id = 1;

SELECT * FROM db_registro.tb_alunos;








