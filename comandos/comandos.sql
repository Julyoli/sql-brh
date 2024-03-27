/*Inserir novo colaborador
Fulano de Tal no novo projeto BI para exercer o papel de Especialista de Neg�cios.

Informa��es sobre o colaborador
Possui o telefone celular (61) 9 9999-9999;
Possui o telefone residencial (61) 3030-4040;
Email pessoal � fulano@email.com;
Email de trabalho ser� � fulano.tal@brh.com;
Possui dois dependentes:
Filha Beltrana de Tal;
Esposa Cicrana de Tal.
Aten��o
Voc� deve escolher os valores dos demais campos para o colaborador, dependentes e projeto;
Aten��o � ordem em que os registros devem ser inseridos.*/

select * from brh.endereco

INSERT INTO brh.endereco 
(cep, uf, cidade, bairro) 
VALUES 
('04050-002', 'SP', 'Sao Paulo', 'Vila Guarani');

select * from brh.papel

INSERT INTO brh.papel 
(id, nome)
VALUES
('8', 'Especialista de Neg�cios')

select * from brh.colaborador

INSERT INTO brh.colaborador
(matricula, nome, cpf, salario, departamento, cep, logradouro, complemento_endereco)
VALUES
('X999', 'Fulano de Tal', '123.456.789-00', 1500, 'SECAP', '04050-002', 'Avenida Arvore', '254 bloco 3');

select * from brh.projeto

INSERT INTO brh.projeto 
(id, nome, responsavel, inicio, fim) 
VALUES 
(5, 'BI', 'H123', to_date('2024-03-24', 'yyyy-mm-dd'), null);

select * from brh.dependente

INSERT INTO brh.dependente
(cpf, nome, data_nascimento, parentesco, colaborador ) 
VALUES 
('123.456.789-02', 'Beltrana de Tal', to_date('2022-05-15', 'yyyy-mm-dd'), 'Filho(a)', 'X999');

INSERT INTO brh.dependente
(cpf, nome, data_nascimento, parentesco, colaborador ) 
VALUES 
('014.258.369-09', 'Cicrana de Tal', to_date('1985-02-15', 'yyyy-mm-dd'), 'Cônjuge', 'X999');

select * from brh.telefone_colaborador

INSERT INTO brh.telefone_colaborador
(numero, colaborador, tipo)
VALUES
('(61) 9 9999-9999', 'X999', 'M')

INSERT INTO brh.telefone_colaborador
(numero, colaborador, tipo)
VALUES
('(61) 3030-4040', 'X999', 'R')

select * from brh.email_colaborador

INSERT INTO brh.email_colaborador
(email, colaborador, tipo)
VALUES
('fulano@email.com', 'X999', 'P')

INSERT INTO brh.email_colaborador
(email, colaborador, tipo)
VALUES
('fulano.tal@brh.com', 'X999', 'T')

SELECT * FROM brh.atribuicao

INSERT INTO brh.atribuicao
(projeto, colaborador, papel) 
VALUES 
('5', 'X999', '8')

/*Atualizar cadastro de colaborador
Maria casou e precisa que seus dados sejam atualizados na base.
Informa��es sobre o colaborador
Nome de casada: Maria Mendon�a;
Email: maria.mendonca@email.com;
Tarefa
Atualize os dados da Maria; */

SELECT * FROM brh.colaborador

UPDATE brh.colaborador
set nome = 'Maria Mendon�a'
where
matricula = 'M123'

SELECT * FROM brh.email_colaborador

UPDATE brh.email_colaborador
set email = 'maria.mendonca@email.com'
where
colaborador = 'M123'
AND
tipo = 'P'

COMMIT

/*Relat�rio de c�njuges
Crie uma consulta que liste:
matricula do colaborador;
nome do dependente;
data de nascimento do dependente.
Regras de aceita��o
A consulta deve listar somente os dependentes que s�o C�njuge.*/

SELECT * FROM brh.dependente;

SELECT colaborador 
AS "MATR�CULA DO COLABORADOR", nome 
AS "NOME DO DEPENDENTE", data_nascimento 
AS "DATA DE NASCIMENTO" 
FROM brh.dependente 
WHERE parentesco = 'Cônjuge';

/*Relat�rio de contatos telef�nicos
Crie uma consulta que liste:
matricula do colaborador;
n�mero de telefone.
Regras de aceita��o
A consulta deve listar somente telefones m�veis ou comerciais;
O resultado deve ser ordenado pela matr�cula do colaborador e pelo n�mero do telefone.*/

SELECT * FROM brh.telefone_colaborador

SELECT colaborador
AS "MATR�CULA DO COLABORADOR", numero 
AS "N�MERO DE TELEFONE" 
FROM brh.telefone_colaborador 
WHERE tipo = 'M' OR tipo = 'C' ORDER BY colaborador ASC, numero ASC;

/*Excluir departamento SECAP
O departamento SECAP n�o � mais parte da nossa organiza��o
todos os colaboradores ser�o dispensados (somente para fins did�ticos).
Tarefa: Remova o departamento SECAP da base de dados;*/

SELECT * FROM brh.colaborador
WHERE departamento = 'SECAP'; /*H123, M123, R123, W123, X999*/

SELECT * FROM brh.telefone_colaborador 
WHERE colaborador = 'H123' 
OR colaborador = 'M123' OR colaborador = 'R123' OR colaborador = 'W123' OR colaborador = 'X999';

DELETE FROM brh.telefone_colaborador 
WHERE colaborador = 'H123' 
OR colaborador = 'M123' OR colaborador = 'R123' OR colaborador = 'W123' OR colaborador = 'X999'; 

SELECT * FROM brh.email_colaborador 
WHERE colaborador = 'H123' 
OR colaborador = 'M123' OR colaborador = 'R123' OR colaborador = 'W123' OR colaborador = 'X999'; 

DELETE FROM brh.email_colaborador 
WHERE colaborador = 'H123' 
OR colaborador = 'M123' OR colaborador = 'R123' OR colaborador = 'W123' OR colaborador = 'X999'; 

SELECT * FROM brh.dependente 
WHERE colaborador = 'H123' 
OR colaborador = 'M123' OR colaborador = 'R123' OR colaborador = 'W123' OR colaborador = 'X999'

DELETE FROM brh.dependente 
WHERE colaborador = 'H123'
OR colaborador = 'M123' OR colaborador = 'R123' OR colaborador = 'W123' OR colaborador = 'X999';

SELECT * FROM brh.departamento 
WHERE sigla = 'SECAP'; 

DELETE FROM brh.departamento 
WHERE sigla = 'SECAP'; 

SELECT * FROM brh.colaborador 
WHERE departamento = 'SECAP';

SELECT * FROM brh.projeto
WHERE responsavel = 'H123'; 

DELETE FROM brh.projeto 
WHERE responsavel = 'H123'; 

SELECT * FROM brh.colaborador 
WHERE departamento = 'SECAP';

DELETE FROM brh.colaborador 
WHERE departamento = 'SECAP'; 

/*Relat�rio de departamentos
Crie uma consulta que liste a sigla e o nome do departamento;
Regras de aceita��o: A consulta deve listar somente os colaboradores que:
1. morem no CEP 71777-700;
2. trabalhem nos departamentos SECAP ou SESEG.
O resultado da consulta deve ser ordenado pelo nome do departamento.*/

SELECT * FROM brh.departamento

SELECT * FROM brh.colaborador

SELECT brh.departamento.sigla 
AS "SIGLA DO DEPARTAMENTO", brh.departamento.nome 
AS "NOME DO DEPARTAMENTO" 
FROM brh.departamento 
JOIN brh.colaborador 
ON brh.departamento.sigla = brh.colaborador.departamento 
WHERE brh.colaborador.cep = '71777-700' 
AND (brh.departamento.sigla = 'SECAP' OR brh.departamento.sigla = 'SESEG');

/*DESAFIO
Relat�rio de dependentes menores de idade
Crie uma consulta que liste:
a matr�cula do colaborador;
o nome do dependente;
e a idade do dependente (n�o a data de nascimento)
Regras de aceita��o
A consulta deve listar somente os colaboradores que s�o menores de idade em rela��o � data atual.
Dica: usar a fun��o que pega a data e hora atual do Oracle: SYSDATE.
A fun��o MONTHS_BETWEEN tamb�m pode te ajudar a chegar no resultado esperado.

TRUNC
Trunca uma data, hora ou carimbo de data/hora para a parte especificada. 
Sintaxe TRUNC( <date_or_time_expr>, <date_or_time_part> )

MONTH: arredonda para o in�cio do m�s
DAY: arredonda para o in�cio do dia
HOUR: arredonda para o in�cio da hora
MINUTE: arredonda para o in�cio do minuto

FIM ATIVIDADES SEMANA 2*/

SELECT * FROM brh.dependente;
SELECT * FROM brh.colaborador;

SELECT colaborador 
AS "MATR�CULA DO COLABORADOR", nome 
AS "NOME DO DEPENDENTE", 
TRUNC(MONTHS_BETWEEN(SYSDATE, data_nascimento)/12) 
AS "IDADE" FROM brh.dependente;


