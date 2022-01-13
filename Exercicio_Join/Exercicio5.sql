create database db_construindo_a_nossa_vida;
use db_construindo_a_nossa_vida;

create table tb_categoria(
id bigint auto_increment,
disponivel boolean,
tipo varchar(20),
primary key (id)
);

insert into tb_categoria(disponivel,tipo) values(false,"construção");
insert into tb_categoria(disponivel,tipo) values(false,"acabamento");
insert into tb_categoria(disponivel,tipo) values(true,"construção");
insert into tb_categoria(disponivel,tipo) values(true,"acabamento");


create table tb_produto(
id bigint auto_increment,
nome varchar(100),
quantidade int,
valor decimal(6,2),
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_produto(nome,quantidade,valor,categoria_id) values("Tinta",42,50.50,4);
insert into tb_produto(nome,quantidade,valor,categoria_id) values("Cimento",18,80.50,3);
insert into tb_produto(nome,quantidade,valor,categoria_id) values("Massa Corrida",85,60,4);
insert into tb_produto(nome,quantidade,valor,categoria_id) values("Areia",0,18.50,1);
insert into tb_produto(nome,quantidade,valor,categoria_id) values("Gesso",0,30.50,2);
insert into tb_produto(nome,quantidade,valor,categoria_id) values("Tijolo",187,10.25,3);

select * from tb_produto where valor > 50;

select * from tb_produto where valor between 3 and 60;

select * from tb_produto where nome like "%C%";

select tb_produto.nome, tb_produto.quantidade,tb_produto.valor, tb_categoria.disponivel,tb_categoria.tipo
from tb_produto inner join tb_categoria
on tb_categoria.id = tb_produto.categoria_id;

select tb_produto.nome, tb_produto.quantidade,tb_produto.valor, tb_categoria.disponivel,tb_categoria.tipo
from tb_produto inner join tb_categoria
on tb_categoria.id = tb_produto.categoria_id
where tb_categoria.tipo = "acabamento";





