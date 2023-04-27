CREATE TABLE funcionario (
	codigo serial primary key,
	nome varchar(50),
	sexo char(1),
	dt_nasc date,
	salario decimal(10,2),
	cod_depto int
);

CREATE TABLE departamento (
	codigo serial,
	descricao varchar(50),
	cod_gerente int,
	PRIMARY KEY (codigo),
	FOREIGN KEY (cod_gerente) REFERENCES funcionario(codigo) on delete set null on update cascade
);

CREATE TABLE projeto (
	codigo serial,
	nome varchar(50) unique,
	descricao varchar(250),
	cod_responsavel int,
	cod_depto int,
	data_inicio date, 
	data_fim date,
	PRIMARY KEY (codigo),
	FOREIGN KEY (cod_responsavel) REFERENCES funcionario(codigo) on delete set null on update cascade,
	FOREIGN KEY (cod_depto) REFERENCES departamento(codigo) on delete set null on update cascade
);
 
CREATE TABLE atividade (
	codigo serial,
  	nome varchar(100),
	descricao varchar(250),
  	cod_responsavel int,
	data_inicio date, 
	data_fim date,
	PRIMARY KEY (codigo),
	FOREIGN KEY (cod_responsavel) REFERENCES funcionario(codigo) on delete set null on update cascade

);

create table atividade_projeto (
  cod_projeto int not null,
  cod_atividade int not null,
  foreign key (cod_projeto) references projeto(codigo),
  foreign key (cod_atividade) references atividade(codigo),
  primary key (cod_projeto, cod_atividade)
);

alter table funcionario ADD CONSTRAINT funcDeptoFK FOREIGN KEY (cod_depto) REFERENCES departamento(codigo) on delete set null on update cascade;
