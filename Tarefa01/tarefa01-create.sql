CREATE TABLE funcionario (
  codigo INT PRIMARY KEY,
  nome VARCHAR(255),
  sexo CHAR(1),
  dt_nasc DATE,
  salario DECIMAL(10,2),
  cod_depto INT
);

CREATE TABLE departamento (
  codigo INT PRIMARY KEY,
  descricao VARCHAR(255),
  cod_gerente INT,
  FOREIGN KEY (cod_gerente) REFERENCES funcionario(codigo) on delete set null on update cascade
);

ALTER TABLE funcionario ADD CONSTRAINT fk_depto FOREIGN KEY (cod_depto) REFERENCES departamento(codigo) on delete set null on update cascade;

CREATE TABLE projeto (
  codigo INT PRIMARY KEY,
  nome VARCHAR(255),
  descricao VARCHAR(255),
  cod_depto INT,
  cod_responsavel INT,
  data_inicio DATE,
  data_fim DATE,
  FOREIGN KEY (cod_depto) REFERENCES departamento(codigo) on delete set null on update cascade,
  FOREIGN KEY (cod_responsavel) REFERENCES funcionario(codigo) on delete set null on update cascade
);

CREATE TABLE atividade (
  codigo INT PRIMARY KEY,
  nome VARCHAR(255),
  descricao VARCHAR(255),
  cod_responsavel INT,
  data_inicio DATE,
  data_fim DATE,
  FOREIGN KEY (cod_responsavel) REFERENCES funcionario(codigo) on delete set null on update cascade
);

CREATE TABLE atividade_projeto (
  cod_projeto INT,
  cod_atividade INT,
  cod_responsavel INT,
  FOREIGN KEY (cod_projeto) REFERENCES projeto(codigo) on delete set null on update cascade,
  FOREIGN KEY (cod_atividade) REFERENCES atividade(codigo) on delete set null on update cascade,
  FOREIGN KEY (cod_responsavel) REFERENCES funcionario(codigo) on delete set null on update cascade
);
