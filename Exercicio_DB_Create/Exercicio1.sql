create database db_RH;

use db_RH;

create table tb_funcionario(
	id bigint auto_increment,
	nome varchar(200) not null,
	salario decimal not null,
	idade int not null,
	turno varchar(20) not null,
	primary key (id)
    );
    
    alter table tb_funcionario modify salario decimal(6,2);
    
    insert into tb_funcionario(nome,salario,idade,turno) values("Rafael",2500.00,25,"Tarde");
	insert into tb_funcionario(nome,salario,idade,turno) values("Rafaela",4000.00,25,"Manhã");
    insert into tb_funcionario(nome,salario,idade,turno) values("Carol",5000.00,25,"Tarde");
    insert into tb_funcionario(nome,salario,idade,turno) values("Ludmila",2000.00,25,"Manhã");
	insert into tb_funcionario(nome,salario,idade,turno) values("Marcela",1500.00,25,"Tarde");
    
    use db_rh;
    
    update tb_funcionario set salario = 2500.00 where id = 4;
    
    


    
    
    
    