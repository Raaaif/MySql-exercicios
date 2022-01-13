create database db_generation_game_online;

use db_generation_game_online;

create table tb_classe(
id bigint auto_increment,
nome varchar(100) not null,
categoria varchar(50),
primary key (id)
);

insert into tb_classe(nome, categoria) values ("Mago", "Supremo");
insert into tb_classe(nome, categoria) values ("Mago", "Iniciante");
insert into tb_classe(nome, categoria) values ("Elfo", "Supremo");
insert into tb_classe(nome, categoria) values ("Elfo", "Iniciante");
insert into tb_classe(nome, categoria) values ("Knight", "Supremo");
insert into tb_classe(nome, categoria) values ("Knight", "Iniciante");

create table tb_personagem(
id bigint auto_increment,
nome varchar(100), 
poder_ataque bigint,
poder_defesa bigint,
mana bigint,
classe_id bigint,
primary key (id),
FOREIGN KEY (classe_id) REFERENCES tb_classe (id)
);

insert into tb_personagem(nome, poder_ataque,poder_defesa,mana,classe_id) values("JoãoZika123",1500,2000,5000,6);
insert into tb_personagem(nome, poder_ataque,poder_defesa,mana,classe_id) values("AhnãoPo",4000,3000,10000,1);
insert into tb_personagem(nome, poder_ataque,poder_defesa,mana,classe_id) values("Sósequefoi",2000,1000,2000,5);
insert into tb_personagem(nome, poder_ataque,poder_defesa,mana,classe_id) values("Bobeoulevou",3000,1400,2000,4);
insert into tb_personagem(nome, poder_ataque,poder_defesa,mana,classe_id) values("Elmexicano",1500,1500,1000,5);
insert into tb_personagem(nome, poder_ataque,poder_defesa,mana,classe_id) values("Óseinãoem",2100,2000,5000,3);
insert into tb_personagem(nome, poder_ataque,poder_defesa,mana,classe_id) values("Soumagonao",3000,2000,3500,2);
insert into tb_personagem(nome, poder_ataque,poder_defesa,mana,classe_id) values("Felipe",8000,4000,15000,1);

select * from tb_personagem where poder_ataque > 2000;

select * from tb_personagem where poder_defesa between 1000 and 2000;

select * from tb_personagem where nome like "%c%";

select tb_personagem.nome, tb_personagem.mana, tb_classe.nome, tb_classe.categoria
from tb_personagem inner join tb_classe
on tb_classe.id = tb_personagem.classe_id;

select tb_personagem.nome, tb_classe.nome, tb_classe.categoria
from tb_personagem right join tb_classe
on tb_classe.id = tb_personagem.classe_id
Where tb_classe.nome = "Elfo";
