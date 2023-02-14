create database nutricao;

use nutricao;

create table paciente(
     ID int not null auto_increment,
     nomePaciente varchar(45),
	 dataNasc int,
     datacadastro datetime,
     pesoPaciente double,
     altPaciente int,
     primary key(ID)
);

drop table paciente;

insert into paciente
(nomePaciente,dataNasc,pesoPaciente,altPaciente)
values
("joão", 35, 60, 1.7);

insert into paciente
(nomePaciente,dataNasc,pesoPaciente,altPaciente)
values
("Francisco", 38, 70, 1.8);

insert into paciente
(nomePaciente,dataNasc,pesoPaciente,altPaciente)
values
("Larissa", 28, 50, 1.6);

create table dia(
     ID int not null auto_increment,
     day date,
     nomePaciente varchar(45),
     user_id int,
     primary key(ID),
     foreign key(user_id) references paciente(ID)
);


create table alimentos(
     meal_num int not null auto_increment,
     calories int not null,
     fat int not null,
     carbohydrates int not null,
     fibre int not null,
     protein int not null,
     day_idDay int,
     primary key(meal_num),
     foreign key(day_idDay) references dia(ID)
);
insert into alimentos
(calories, fat, carbohydrates, fibre, protein)
values
(1000, 35, 500, 100, 50);

insert into alimentos
(calories, fat, carbohydrates, fibre, protein)
values
(1500, 31, 600, 150, 50);

insert into alimentos
(calories, fat, carbohydrates, fibre, protein)
values
(2000, 40, 700, 200, 70);
select *from alimentos;

drop table alimentos;

