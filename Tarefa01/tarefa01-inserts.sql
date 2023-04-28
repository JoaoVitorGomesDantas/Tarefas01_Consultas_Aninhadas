
INSERT INTO departamento(descricao, cod_gerente) VALUES 
('Departamento de Matemática', null),
('Departamento de História', null),
('Departamento de Geografia', null),
('Departamento de Sistemas de Informação', null),
(null, null);

INSERT INTO funcionario (nome, sexo, dt_nasc, salario, cod_depto) VALUES 
('Maria', 'F', '1988-05-04', 2500.00, 1),
('João Vitor', 'M', '1989-05-07', 2500.00, 2),
('Luiza', 'F', '1987-05-05', 2500.00, 1),
('Pedro', 'M', '1990-05-22', 2500.00, 2),
('Leonardo', 'M', '1985-01-25', 2500.00, 2);

UPDATE departamento SET cod_gerente = 1 WHERE codigo = 1;
UPDATE departamento SET cod_gerente = 2 WHERE codigo = 2;

INSERT INTO funcionario (nome, sexo, dt_nasc, salario, cod_depto) VALUES 
('João Vitor', 'M', '1981-07-01', 3200.00, 1),
('Pedro', 'M', '1986-09-17', 2400.00, 1),
('Leonardo', 'M', '1985-11-21', 2500.00, 2),
('Humberto', 'M', '1970-05-07', 1800.00, 2),
('Chico', 'M', '1979-07-12', 3200.00, 2),
('Maria', 'F', '1970-03-28', 10200.00, null),
('Luiza', 'F', '1970-03-28', 900.00, 1),
('Victor', 'M', '1970-03-28', 500.00, 1),
('Alicia', 'F', '1980-07-14', 3400.00, 3),
('Letícia', 'F', '1992-09-01', 1500.00, 3);

INSERT INTO projeto (nome, descricao, cod_depto, cod_responsavel, data_inicio, data_fim) VALUES 
('PWEB', 'Projeto de Programação Web', 2, 2, '2018-02-26', '2018-06-30'),
('POO', 'Projeto de Programação Orientada a Objetos', 1, 6, '2018-02-26', '2018-12-30'),
('BD', 'Projeto de Banco de Dados', 3, 5, '2018-02-26', '2018-06-30'),
('BD2', 'Projeto de Banco de Dados 2', 3, 5, '2018-02-26', '2018-06-30'),
('ES', 'Projeto de Engenharia de Software', 1, 1, '2018-02-26', '2018-06-30');

INSERT INTO atividade (nome, descricao, cod_responsavel, data_inicio, data_fim) VALUES 
('PWEB - Atividade 1', 'PWEB - Atividade 1', 1, '2018-02-26', '2018-06-30'),
('PWEB - Atividade 2','PWEB - Atividade 2', 2, '2018-06-26', '2018-07-30'),
('PWEB - Atividade 3','PWEB - Atividade 3', 3, '2018-08-26', '2018-09-30'),
('PWEB - Atividade 4','PWEB - Atividade 4', 4, '2018-08-26', '2018-09-30'),
('PWEB - Atividade 5', 'PWEB - Atividade 5', 1, '2018-09-30', '2018-10-30'),
('POO - Atividade 1', 'POO - Atividade 1', 2, '2018-06-26', '2018-07-30'),
('BD - Atividade 1', 'BD - Atividade 1', 3, '2018-06-26', '2018-07-30'),
('BD - Atividade 2', 'BD - Atividade 2', 4, '2018-08-26', '2018-09-30'),
('BD2 - Atividade 1','BD - Atividade 1', 1, '2018-08-26', '2018-09-30'),
('ES - Atividade 1','ES - Atividade 1', 2, '2018-09-30', '2018-10-30'),
('ES - Atividade 2','ES - Atividade 2', 2, '2018-09-30', '2018-10-30'),
('ES - Atividade 3', 'ES - Atividade 3', 3, '2018-10-30', '2018-11-30');

INSERT INTO atividade_projeto (cod_projeto, cod_atividade) VALUES 
(1, 1), (1, 2), (1, 3), (1, 4), (1, 5),
(2, 1),
(3, 1), (3, 2), (3, 3),
(4, 1), (4, 2);
