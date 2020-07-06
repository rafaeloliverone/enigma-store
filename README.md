# Enigma Store

O banco de dados tem como objetivo atender as demandas de armazenamento de dados de uma empresa de venda de móveis e eletrodomésticos fictícia.

<hr>

Esta empresa possui várias lojas, cada loja possui os seguintes dados que devem ser armazenados: idloja, nome, cnpj, cep, número, telefone. 
Uma loja pode ter um ou vários setores, armazenados de forma sequencial e identificados pela loja ao qual ela pertence. 
Os dados de setor são: idsetor, nome.

O funcionário está alocado em um setor e um setor possui vários funcionários. 
Um funcionário pode gerenciar nenhum ou vários funcionários, mas somente é gerenciado por um. 
Os dados de funcionário são: idfuncionario, nome, sexo, cpf, rg, endereço (rua, número, cep), telefone (1, n), tipo, salário. 
Funcionário também pode ser chefe de nenhum ou um único setor, setor podendo ter somente um chefe . 

Vendedores são responsáveis por atender os clientes e realizar as vendas, eles podem vender para nenhum ou vários clientes. 
A venda pode conter um ou vários produtos. 
Entregadores são responsáveis por entregar produtos na residência dos clientes e possuem CNH.

Cada funcionário reside somente em uma cidade, assim como, também nasceu em somente uma cidade.
Em uma cidade residem nenhum ou vários funcionários, e nela  nasceram nenhum ou vários funcionários.
Os dados de cidade são: idcidade, nome. 

Toda cidade está localizada em um país, e cada país possui uma ou várias cidades. 
Os dados de país são: idpais, nome.

Os clientes que compram na loja podem ser atendidos por um ou vários vendedores ao decorrer do tempo. 
Quando atendidos, podem comprar um ou vários produtos. 
Os dados de cliente são: idcliente, nome, sexo, cpf, endereço (rua, número), telefone (1, n). Quando concluída a venda, elas podem ou não ser entregues por um entregador.
	
Os produtos são adquiridos de um ou vários fornecedores e um fornecedor possui um ou vários produtos. 
Os dados de produto são: idproduto, nome, descrição, quantidade em estoque, valor unitário. Os dados de Fornecedor são: idfornecedor, nome, cnpj, endereço ( número, cep).


### Consultas realizadas no SGBD

1. Exibir o nome da cidade e a soma dos salários, dos funcionários do sexo feminino que recebam entre 4 e 8 mil reais.
1. Exibir nome do funcionario, sexo e a media salarial daqueles que realizaram vendas e tenham uma média maior que R$ 2.000,00, que não contenham Maria e Pedro no seu nome, ordenando pelo nome do funcionário.
1. Exibir entre todos os vendedores, mesmo os que não realizaram venda, qual recebe o maior salário, agrupados por sexo.
1. Exibir a quantidade de pedidos realizados por mês, desconsiderando o ano de 2017, que tenham sido entregues pela loja.
1. Exibir o salário máximo e o mínimo, agrupados por sexo e cidade, que residam em João Pessoa ou Cabedelo que não tenham telefone cadastrado.
