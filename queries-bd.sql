/* Maurício Pereira / Rafael Oliveira / Romero Caetano */
USE BD2
GO
/* Inserção de dados */
INSERT LOJA (idloja, nome, cnpj, cep, numero, telefone)
values (1,'Chang-João Pessoa',14698147000170,58079410,90,'83987651478')
INSERT LOJA (idloja, nome, cnpj, cep, numero, telefone)
values (2,'Chang-Salvador',14698148000150,58059410,190,'83984551478')
INSERT LOJA (idloja, nome, cnpj, cep, numero, telefone)
values (3,'Chang-Fortaleza',14622147000160,58029310,20,'83914852123')
INSERT LOJA (idloja, nome, cnpj, cep, numero, telefone)
values (4,'Chang-Recife',14298547000170,58049110,40,'83981476234')
INSERT LOJA (idloja, nome, cnpj, cep, numero, telefone)
values (5,'Chang-Cabedelo',14698124000110,58079410,90,'83987651478')

INSERT PAIS (idpais,nome)
values ('BR','Brasil')
INSERT PAIS (idpais, nome)
values ('EU','Estados Unidos')
INSERT PAIS (idpais, nome)
values ('ES','Espanha')
INSERT PAIS (idpais, nome)
values ('RU','Russia')
INSERT PAIS (idpais, nome)
values ('JP','Japão')

INSERT CIDADE (idcidade, nome, idpais)
values (1, 'João Pessoa', (Select idpais from pais where idpais = 'BR'))
INSERT CIDADE (idcidade, nome, idpais)
values (2, 'Salvador', (Select idpais from pais where idpais = 'BR'))
INSERT CIDADE (idcidade, nome, idpais)
values (3, 'Fortaleza', (Select idpais from pais where idpais = 'BR'))
INSERT CIDADE (idcidade, nome, idpais)
values (4, 'Recife', (Select idpais from pais where idpais = 'BR'))
INSERT CIDADE (idcidade, nome, idpais)
values (5, 'Cabedelo', (Select idpais from pais where idpais = 'BR'))

INSERT FUNCIONARIO (idfuncionario, nome, cpf, rg, telefone, rua, numero, tipo, sexo, salario, cnh, idchefe, idreside, idnasceu, idsetor, idloja)
values (1, 'Maria', '11122233344', '123456789', '83985641524', 'irma maria das neves', 824, 'V', 'F', 4500.00, NULL, NULL, 
(select idcidade from cidade where idcidade = 1), 
(select idcidade from cidade where idcidade = 2), 
(select idsetor from setor where idsetor = 2), 
(select idloja from loja where idloja = 1))
INSERT FUNCIONARIO (idfuncionario, nome, cpf, rg, telefone, rua, numero, tipo, sexo, salario, cnh, idchefe, idreside, idnasceu, idsetor, idloja)
values (2, 'Pedro', '22211133344', '123442789', '83981241524', 'irma dulce das neves', 812, 'E', 'M',2000.00, '43214567899', NULL, 
		(select idcidade from cidade where idcidade = 1), 
		(select idcidade from cidade where idcidade = 3), 
		(select idsetor from setor where idsetor = 1), 
		(select idloja from loja where idloja = 1))
INSERT FUNCIONARIO (idfuncionario, nome, cpf, rg, telefone, rua, numero, tipo, sexo, salario, cnh, idchefe, idreside, idnasceu, idsetor, idloja)
values (3, 'Marcio', '22233311144', '123412289', '83981121524', 'irma dulce severina', 834, 'E', 'M',2000.00, '43211567899', NULL, 
		(select idcidade from cidade where idcidade = 1), 
		(select idcidade from cidade where idcidade = 1), 
		(select idsetor from setor where idsetor = 1), 
		(select idloja from loja where idloja = 1))
INSERT FUNCIONARIO (idfuncionario, nome, cpf, rg, telefone, rua, numero, tipo, sexo, salario, cnh, idchefe, idreside, idnasceu, idsetor, idloja)
values (4, 'Ana', '12121233344', '124456719', '83985143144', 'AV. Epitacio Pessoa', 845, 'V', 'F',2500.00, NULL, NULL, 
		(select idcidade from cidade where idcidade = 1), 
		(select idcidade from cidade where idcidade = 4), 
		(select idsetor from setor where idsetor = 3), 
		(select idloja from loja where idloja = 1))
INSERT FUNCIONARIO (idfuncionario, nome, cpf, rg, telefone, rua, numero, tipo, sexo, salario, cnh, idchefe, idreside, idnasceu, idsetor, idloja)
values (5, 'Cristie', '11214233344', '113416789', '83984243524', 'Av. Julio Freire', 852, 'E', 'F', 6500.00, '43211263899', NULL, 
		(select idcidade from cidade where idcidade = 1), 
		(select idcidade from cidade where idcidade = 5), 
		(select idsetor from setor where idsetor = 1), 
		(select idloja from loja where idloja = 1))

INSERT SETOR (idsetor, nome, idloja, idchefe)
values (1,'Entregas', 1, 2)
INSERT SETOR (idsetor, nome, idloja, idchefe)
values (2,'Marketing', 1, 3)
INSERT SETOR (idsetor, nome, idloja, idchefe)
values (3,'Administrativo', 1, 4)
INSERT SETOR (idsetor, nome, idloja, idchefe)
values (4,'Comercial', 1, 1)
INSERT SETOR (idsetor, nome, idloja, idchefe)
values (5,'Recursos Humanos', 1, 5)

INSERT CLIENTE (idcliente, nome, cpf, rua, numero, telefone)
values (1, 'Juan', '12345678123', 'Cleonice dos santos', 123, '83982341237')
INSERT CLIENTE (idcliente, nome, cpf, rua, numero, telefone)
values (2, 'Isabella', '12325678145', 'Cleonice das dores', 121, '83981241237')
INSERT CLIENTE (idcliente, nome, cpf, rua, numero, telefone)
values (3, 'Patricia', '13345678112', 'Jupira Alves', 133, '83984241237')
INSERT CLIENTE (idcliente, nome, cpf, rua, numero, telefone)
values (4, 'Diego', '12345428134', 'Feliciano Peixoto', 143, '83982331137')
INSERT CLIENTE (idcliente, nome, cpf, rua, numero, telefone)
values (5, 'Fernanda', '12342136711', 'José Americo', 223, '83982311234')

INSERT FORNECEDOR (idfornecedor, nome, cep, numero, cnpj)
values (1, 'Val-Verde', '12442241', 732, 12345678914562)
INSERT FORNECEDOR (idfornecedor, nome, cep, numero, cnpj)
values (2, 'Toshiba', '14252421', 762, 12345678912562)
INSERT FORNECEDOR (idfornecedor, nome, cep, numero, cnpj)
values (3, 'Samsumg', '24511423', 772, 12344278914562)
INSERT FORNECEDOR (idfornecedor, nome, cep, numero, cnpj)
values (4, 'Capesberg', '14521424', 736, 12345673214562)
INSERT FORNECEDOR (idfornecedor, nome, cep, numero, cnpj)
values (5, 'Azalte', '24223425', 737, 12315674214562)

INSERT PRODUTO (idproduto, nome, descricao, valorunit, quantestoque)
values (1, 'Roupeiro Val-Verde 4 portas', 'Roupeiro quatro portas com 6 gavetas e espelho', 300.00,20)
INSERT PRODUTO (idproduto, nome, descricao, valorunit, quantestoque)
values (2, 'Televisão Toshiba', 'Televisão Toshiba 32 polegadas', 1200.00,5)
INSERT PRODUTO (idproduto, nome, descricao, valorunit, quantestoque)
values (3, 'Samsumg Galaxy S8', 'Smart-Phone da mais alta tecnologia', 2000.00,5)
INSERT PRODUTO (idproduto, nome, descricao, valorunit, quantestoque)
values (4, 'Roupeiro Capesberg 10 portas', 'Roupeiro dez portas com 2 gavetas e espelho grande', 700.12,10)
INSERT PRODUTO (idproduto, nome, descricao, valorunit, quantestoque)
values (5, 'Microondas Azalte', 'Microondas de alta qualidade.', 500.00,50)

INSERT ADQUIRIDO (idproduto, idfornecedor)
values ((select idproduto from produto where idproduto = 1),
		(select idfornecedor from fornecedor where idfornecedor = 1))
INSERT ADQUIRIDO (idproduto, idfornecedor)
values ((select idproduto from produto where idproduto = 2),
		(select idfornecedor from fornecedor where idfornecedor = 2))
INSERT ADQUIRIDO (idproduto, idfornecedor)
values ((select idproduto from produto where idproduto = 3),
		(select idfornecedor from fornecedor where idfornecedor = 3))
INSERT ADQUIRIDO (idproduto, idfornecedor)
values ((select idproduto from produto where idproduto = 4),
		(select idfornecedor from fornecedor where idfornecedor = 4))
INSERT ADQUIRIDO (idproduto, idfornecedor)
values ((select idproduto from produto where idproduto = 5),
		(select idfornecedor from fornecedor where idfornecedor = 5))

INSERT VENDA (idvendedor, idcliente, datavenda, identregador)
values ((select idfuncionario from funcionario where nome = 'Maria'), 2, '11/02/2019', 2)
INSERT VENDA (idvendedor, idcliente, datavenda, identregador)
values ((select idfuncionario from funcionario where nome = 'Ana'), 1, '12/02/2019', 3)
INSERT VENDA (idvendedor, idcliente, datavenda, identregador)
values ((select idfuncionario from funcionario where nome = 'Ana'), 4, '13/02/2019', NULL)
INSERT VENDA (idvendedor, idcliente, datavenda, identregador)
values ((select idfuncionario from funcionario where nome = 'Maria'), 5, '14/02/2019', 5)
INSERT VENDA (idvendedor, idcliente, datavenda, identregador)
values ((select idfuncionario from funcionario where nome = 'Ana'), 3, '16/02/2019', NULL)
INSERT VENDA (idvendedor, idcliente, datavenda, identregador)
values (4, 4, '17/02/2019', NULL)

INSERT POSSUI (idcliente, idvendedor, datavenda, idproduto, quantidade)
values (2, 1, '11/02/2019', 1, 2)
INSERT POSSUI (idcliente, idvendedor, datavenda, idproduto, quantidade)
values (1, 4, '12/02/2019', 2, 1)
INSERT POSSUI (idcliente, idvendedor, datavenda, idproduto, quantidade)
values (4, 4, '13/02/2019', 3, 5)
INSERT POSSUI (idcliente, idvendedor, datavenda, idproduto, quantidade)
values (5, 1, '14/02/2019', 4, 3)
INSERT POSSUI (idcliente, idvendedor, datavenda, idproduto, quantidade)
values (3, 4, '16/02/2019', 5, 6)
INSERT POSSUI (idcliente, idvendedor, datavenda, idproduto, quantidade)
values (4, 4, '17/02/2019', 2, 2)


/* Alteração de dados */
UPDATE funcionario
set idsetor = (select idsetor from setor where nome = 'Comercial')
where tipo = 'V'

UPDATE funcionario
set idsetor = (select idsetor from setor where nome = 'Entregas')
where tipo = 'E'

UPDATE funcionario
set idchefe = (select idfuncionario from funcionario where nome = 'Maria')
where tipo = 'V'

UPDATE funcionario
set idchefe = (select idfuncionario from funcionario where nome = 'Pedro')
where tipo = 'E'

UPDATE setor
set idchefe = 1
where nome = 'Comercial'

UPDATE setor
set idchefe = 2
where nome = 'Entregas'

UPDATE FUNCIONARIO
set telefone = NULL
where idfuncionario in (1,5,3)
/* DELETANDO dados */

DELETE FROM POSSUI
WHERE idcliente = 4 and datavenda = '17/02/2019'
DELETE FROM VENDA
WHERE idcliente = 4 and datavenda = '17/02/2019'


/* Consulta de dados */

-- Exibir o nome da cidade e a soma dos salários, dos funcionários do sexo feminino que recebam entre 4 e 8 mil reais.

SELECT ci.nome AS [Cidade], SUM(salario) AS [Soma dos salários]
FROM Funcionario AS [fu] JOIN Cidade AS [ci]
ON fu.idreside = ci.idcidade
WHERE (sexo NOT LIKE 'M') AND (salario BETWEEN 4000 AND 8000)
GROUP BY ci.nome

-- Exibir nome do funcionario, sexo e a media do salário daqueles que realizaram vendas e tenham uma média maior que R$ 2.000,00. Que também não contenham nem Maria e nem Pedro no seu nome. Ordenando pelo nome do funcionário.

SELECT fu.nome AS [Funcionário], fu.sexo AS [Sexo], AVG(fu.salario) AS [Média Salário]
FROM Funcionario AS [fu] INNER JOIN Venda AS [ve]
ON fu.idfuncionario = ve.idvendedor
WHERE fu.nome NOT IN ('Maria','Pedro')
GROUP BY fu.nome, fu.sexo
HAVING AVG(fu.salario) > 2000
ORDER BY fu.nome ASC

-- Exibir entre todos os vendedores, mesmo os que não realizaram venda, qual recebe o maior salário, agrupados por sexo.

SELECT fu.nome AS [Funcionário], fu.sexo AS [Sexo], MAX(fu.salario) AS [Máximo]
FROM Funcionario AS [fu] LEFT JOIN Venda AS [ve]
ON fu.idfuncionario = ve.idvendedor
WHERE fu.tipo LIKE 'V'
GROUP BY fu.nome, fu.sexo
ORDER BY fu.nome

-- Exibir a quantidade de pedidos realizados por mes, desconsiderando o ano de 2017, que tenham sido entregues pela loja

SELECT po.idproduto, Datepart(month, ve.datavenda) AS [Mes de venda], COUNT(ve.datavenda) AS [Quantidade de pedidos]
FROM Venda AS [ve] RIGHT JOIN possui AS [po] 
ON ve.datavenda = po.datavenda
WHERE (ve.datavenda NOT BETWEEN '01/01/2017' AND '31/12/2017') AND (ve.identregador IS NOT NULL)
GROUP BY po.idproduto, Datepart(month, ve.datavenda)
ORDER BY po.idproduto


-- Exibir o salário máximo e o mínimo, agrupados por sexo e cidade, que residam em João Pessoa ou Cabedelo que não tenham telefone cadastrado.

SELECT fu.sexo AS [Sexo], ci.nome AS [Cidade], MAX(fu.salario) AS [Máximo], MIN(fu.salario) AS [Minímo]
FROM Funcionario AS [fu] FULL JOIN Cidade AS [ci]
ON fu.idreside = ci.idcidade
WHERE ci.nome IN ('João Pessoa','Cabedelo') AND fu.telefone IS NULL
GROUP BY fu.sexo, ci.nome