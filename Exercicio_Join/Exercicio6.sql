create database db_cursoDaMinhaVida;
use db_cursoDaMinhaVida;

create table tb_categoria(
id bigint auto_increment,
disponivel boolean,
tipo varchar(100),
primary key (id)
);

insert into tb_categoria(disponivel,tipo) values(true,"EAD");
insert into tb_categoria(disponivel,tipo) values(true,"Presencial");
insert into tb_categoria(disponivel,tipo) values(false,"EAD");
insert into tb_categoria(disponivel,tipo) values(false,"Presencial");

create table tb_curso(
id bigint auto_increment,
nome varchar(100),
vagas int,
duracao_horas bigint,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_curso(nome,vagas,duracao_horas,categoria_id) values("Pacote Office", 60, 100,1);
insert into tb_curso(nome,vagas,duracao_horas,categoria_id) values("POO", 40, 120,2);
insert into tb_curso(nome,vagas,duracao_horas,categoria_id) values("Flutter", 0, 200,4);
insert into tb_curso(nome,vagas,duracao_horas,categoria_id) values("Javascript", 0, 150,3);
insert into tb_curso(nome,vagas,duracao_horas,categoria_id) values("HTML/CSS", 30, 80,2);
insert into tb_curso(nome,vagas,duracao_horas,categoria_id) values("C++", 15, 160,4);

select * from tb_curso where vagas > 50;

select * from tb_curso where vagas between 3 and 50;

select * from tb_curso where nome like "%J%";

select tb_curso.nome, tb_curso.duracao_horas, tb_categoria.disponivel
from tb_curso inner join tb_categoria
on tb_categoria.id = tb_curso.categoria_id;

select tb_curso.nome, tb_curso.duracao_horas, tb_categoria.disponivel
from tb_curso inner join tb_categoria
on tb_categoria.id = tb_curso.categoria_id
where tb_categoria.disponivel = true;


