create database db_cidade_das_frutas;
use db_cidade_das_frutas;

create table tb_categoria(
id bigint auto_increment,
tipo varchar(100),
diponivel boolean,
primary key (id)
);

insert into tb_categoria(tipo,diponivel) values("fruta",true);
insert into tb_categoria(tipo,diponivel) values("legume",true);
insert into tb_categoria(tipo,diponivel) values("fruta",false);
insert into tb_categoria(tipo,diponivel) values("legume",false);



create table tb_produto(
id bigint auto_increment,
nome varchar(100),
valor decimal(6,2),
quantidade int,
categoria_id bigint,
primary key(id),
foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_produto(nome,valor,quantidade,categoria_id) values("Maçã",10,45,1);
insert into tb_produto(nome,valor,quantidade,categoria_id) values("Uva",15,85,1);
insert into tb_produto(nome,valor,quantidade,categoria_id) values("Berinjela",8,20,2);
insert into tb_produto(nome,valor,quantidade,categoria_id) values("Chuchu",20,0,4);
insert into tb_produto(nome,valor,quantidade,categoria_id) values("Batata",3.99,155,2);
insert into tb_produto(nome,valor,quantidade,categoria_id) values("Melancia",14,0,3);
insert into tb_produto(nome,valor,quantidade,categoria_id) values("Pêra",21,14,1);

select * from tb_produto where valor > 12;

select * from tb_produto where valor between 4 and 19;

select * from tb_produto where nome like "%C%";

select tb_produto.nome, tb_produto.valor,tb_categoria.diponivel,tb_categoria.tipo
from tb_produto inner join tb_categoria
on tb_categoria.id = tb_produto.categoria_id;

select tb_produto.nome, tb_produto.valor,tb_categoria.diponivel,tb_categoria.tipo
from tb_produto inner join tb_categoria
on tb_categoria.id = tb_produto.categoria_id
where tb_categoria.tipo = "legume";



