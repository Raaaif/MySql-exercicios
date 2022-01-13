create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria(
id bigint auto_increment,
tipo_alimentacao varchar(100),
tipo_salgadaoudoce varchar(100),
primary key (id)
);

insert into tb_categoria(tipo_alimentacao,tipo_salgadaoudoce) values ("Vegana","salgada");
insert into tb_categoria(tipo_alimentacao,tipo_salgadaoudoce) values ("Vegetariana","salgada");
insert into tb_categoria(tipo_alimentacao,tipo_salgadaoudoce) values ("Sem dieta","salgada");
insert into tb_categoria(tipo_alimentacao,tipo_salgadaoudoce) values ("Vegana","doce");
insert into tb_categoria(tipo_alimentacao,tipo_salgadaoudoce) values ("Vegetariana","doce");
insert into tb_categoria(tipo_alimentacao,tipo_salgadaoudoce) values ("Sem dieta","doce");

create table tb_pizza(
id bigint auto_increment,
sabor varchar(100),
valor decimal(6,2),
borda_recheada boolean,
tamanho int,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert into tb_pizza(sabor,valor,borda_recheada,tamanho,categoria_id) values("Calabresa",30,true,35,3);
insert into tb_pizza(sabor,valor,borda_recheada,tamanho,categoria_id) values("Marguerita",45,false,35,2);
insert into tb_pizza(sabor,valor,borda_recheada,tamanho,categoria_id) values("Estupenda", 50,false,35,1);
insert into tb_pizza(sabor,valor,borda_recheada,tamanho,categoria_id) values("Suprema", 50,true,35,1);
insert into tb_pizza(sabor,valor,borda_recheada,tamanho,categoria_id) values("Atum com queijo",25,true,35,3);
insert into tb_pizza(sabor,valor,borda_recheada,tamanho,categoria_id) values("Chocolate com morango", 20,false,15,6);
insert into tb_pizza(sabor,valor,borda_recheada,tamanho,categoria_id) values("Baunilha", 35,false,20,4);
insert into tb_pizza(sabor,valor,borda_recheada,tamanho,categoria_id) values("Creme de amendoin", 25,false,15,5);

select * from tb_pizza where valor > 45;

select * from tb_pizza where valor between 29 and 60;

select * from tb_pizza where sabor like "%c%";

select tb_pizza.sabor, tb_pizza.valor, tb_categoria.tipo_alimentacao
from tb_pizza inner join tb_categoria
on tb_categoria.id = tb_pizza.categoria_id;

select tb_pizza.sabor, tb_pizza.valor, tb_categoria.tipo_alimentacao
from tb_pizza inner join tb_categoria
on tb_categoria.id = tb_pizza.categoria_id;

select tb_pizza.sabor, tb_pizza.valor, tb_categoria.tipo_alimentacao
from tb_pizza inner join tb_categoria
on tb_categoria.id = tb_pizza.categoria_id
Where tb_categoria.tipo_alimentacao = "Vegana";


