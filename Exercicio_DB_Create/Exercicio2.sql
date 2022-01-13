create database db_ecommerce;

use db_ecommerce;

create table tb_produtos(
id bigint auto_increment,
nome varchar(100) not null,
valor decimal(6,2) not null,
nicho varchar(20) not null,
quantidade int not null,
primary key(id)
);

insert into tb_produtos(nome,valor,nicho,quantidade) values("Televisão 20 Polegadas",800.00,"Tecnologia",25);
insert into tb_produtos(nome,valor,nicho,quantidade) values("Televisão 40 Polegadas",3000.00,"Tecnologia",10);
insert into tb_produtos(nome,valor,nicho,quantidade) values("Televisão 70 Polegadas",7800.00,"Tecnologia",48);
insert into tb_produtos(nome,valor,nicho,quantidade) values("Celular TecToy",699.99,"Tecnologia",12);
insert into tb_produtos(nome,valor,nicho,quantidade) values("Creme para pentear",80.00,"Beleza",21);
insert into tb_produtos(nome,valor,nicho,quantidade) values("Camisa do Flamengo",120.00,"Roupa",78);
insert into tb_produtos(nome,valor,nicho,quantidade) values("Placa de video",800.00,"Tecnologia",15);
insert into tb_produtos(nome,valor,nicho,quantidade) values("Notebook",250.00,"Tecnologia",10);

SELECT * FROM db_ecommerce.tb_produtos;

select valor from tb_produtos where valor > 500.00;

select valor from tb_produtos where valor < 500.00;

update tb_produtos set valor = 100.00 where id = 6;
SELECT * FROM db_ecommerce.tb_produtos;




