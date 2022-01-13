create database db_farmacia_do_bem;
use db_farmacia_do_bem;

create table tb_categoria(
id bigint auto_increment,
forma varchar(40),
tipo varchar(40),
primary key (id)
);

insert into tb_categoria(forma,tipo) values("Liquido","Anti_inflamatorio");
insert into tb_categoria(forma,tipo) values("Comprimido","Anti_inflamatorio");
insert into tb_categoria(forma,tipo) values("Liquido","Analgesico");
insert into tb_categoria(forma,tipo) values("comprimido","Analgesico");

create table tb_produto(
id bigint auto_increment,
nome varchar(100),
valor decimal(6,2),
quantidade int, 
disponivel boolean,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_produto(nome,valor,quantidade,disponivel,categoria_id) values("Ibuprofeno",16.00,25,true,1);
insert into tb_produto(nome,valor,quantidade,disponivel,categoria_id) values("Nimesulida",18.50,15,true,2);
insert into tb_produto(nome,valor,quantidade,disponivel,categoria_id) values("Ibuprofeno",16.00,0,false,2);
insert into tb_produto(nome,valor,quantidade,disponivel,categoria_id) values("Dipirona",6.00,85,true,3);
insert into tb_produto(nome,valor,quantidade,disponivel,categoria_id) values("Dipirona",3.00,35,true,4);
insert into tb_produto(nome,valor,quantidade,disponivel,categoria_id) values("Paracetamol",11.00,5,true,3);

select * from tb_produto where valor > 15;

select * from tb_produto where valor between 3 and 60;

select * from tb_produto where disponivel = true;

select * from tb_produto where nome like "%B%";

select tb_produto.nome,tb_produto.valor,tb_produto.disponivel, tb_categoria.forma,tb_categoria.tipo
from tb_produto inner join tb_categoria
on tb_categoria.id = tb_produto.categoria_id;

select tb_produto.nome,tb_produto.valor,tb_produto.disponivel, tb_categoria.forma,tb_categoria.tipo
from tb_produto inner join tb_categoria
on tb_categoria.id = tb_produto.categoria_id
where tb_categoria.tipo = "Analgesico";



