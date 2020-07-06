/*** Criação do banco de dados ***/
CREATE DATABASE BD2
GO
USE BD2
GO

/*** Criação da tabela Pais ***/ 
CREATE TABLE Pais 
(
  idpais      varchar(2)         NOT NULL,
  nome        varchar(30)        NOT NULL,

  CONSTRAINT  PK_pais          PRIMARY KEY (idpais),
  CONSTRAINT  CK_pais_idpais   CHECK (idpais LIKE '[a-Z][a-Z]'),
  CONSTRAINT  AK_pais_nome     UNIQUE (nome),
)


/*** Criação da tabela Cidade ***/ 
CREATE TABLE Cidade 
(
  idcidade smallint         NOT NULL,
  nome     varchar(30)      NOT NULL,
  uf       varchar(2)       NULL,
  idpais	varchar(2)		NOT NULL,

  CONSTRAINT PK_cidade      PRIMARY KEY (idcidade),
  CONSTRAINT AK_cidade_nome UNIQUE (nome,idpais),
  CONSTRAINT CK_cidade_uf   CHECK (LEN(uf)=2),
  CONSTRAINT FK_cidade_pais FOREIGN KEY(idpais)   REFERENCES Pais
)


/*** Criação da tabela Fornecedor ***/ 
CREATE TABLE Fornecedor
(
  idfornecedor      smallint		NOT NULL,
  nome				varchar(15)		NOT NULL,
  cep				varchar(8)		NULL,
  numero			smallint		NOT NULL,
  cnpj				varchar(50)		NOT NULL,

  CONSTRAINT PK_fornecedor			PRIMARY KEY (idfornecedor),
  CONSTRAINT AK_fornecedor_cnpj		UNIQUE(cnpj),
  CONSTRAINT CK_fornecedor_cnpj		CHECK(cnpj LIKE '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
  CONSTRAINT CK_fornecedor_cep		CHECK(cep LIKE '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]')
);


/*** Criação da tabela Produto ***/ 
CREATE TABLE Produto 
(
  idproduto		smallint         NOT NULL,
  nome			varchar(40)      NOT NULL,
  descricao		varchar(200)      NOT NULL,
  valorUnit		decimal(8,2)     NOT NULL,
  quantestoque  int              NOT NULL,

  CONSTRAINT PK_produto      PRIMARY KEY (idproduto),
  CONSTRAINT AK_produto_nome UNIQUE (nome),
)


/*** Criação da tabela Fornecedor_Produto (Adquirido) ***/ 
CREATE TABLE Adquirido
(
  idproduto						smallint         NOT NULL,
  idfornecedor					smallint		 NOT NULL,

  CONSTRAINT FK_produto			FOREIGN KEY(idproduto)   REFERENCES Produto,
  CONSTRAINT PK_produto1		PRIMARY KEY (idproduto, idfornecedor),
  CONSTRAINT FK_fornecedor		FOREIGN KEY(idfornecedor)   REFERENCES Fornecedor
)


/*** Criação da tabela Cliente***/ 
CREATE TABLE Cliente
(
  idcliente  smallint           NOT NULL,
  nome       varchar(45)        NOT NULL,
  cpf        varchar(11)         NOT NULL,
  rua		 varchar(40)		NOT NULL,
  numero        smallint		NOT NULL,
  telefone       varchar(16)        NULL,

  CONSTRAINT PK_cliente         PRIMARY KEY (idcliente),
  CONSTRAINT AK_cliente_cpf		UNIQUE (cpf),
  CONSTRAINT CK_cliente_cpf		CHECK(cpf LIKE '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
)

/*** Criação da tabela Loja***/ 
CREATE TABLE Loja 
(
  idloja	smallint		NOT NULL,
  nome		varchar(45)		NOT NULL,
  cnpj		varchar(14)		NOT NULL, 
  cep		varchar(10)		NOT NULL,
  numero	smallint		NOT NULL,
  telefone	varchar(11)	NULL,

  CONSTRAINT PK_loja        PRIMARY KEY (idloja),
  CONSTRAINT AK_loja_cnpj	UNIQUE (cnpj),
  CONSTRAINT CK_loja_cnpj	CHECK(cnpj LIKE '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
  CONSTRAINT CK_loja_cep	CHECK(cep LIKE '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]')
)


/*** Criação da tabela Setor ***/ 
CREATE TABLE Setor 
(
  idsetor	smallint			NOT NULL,
  nome		varchar(55)			NOT NULL,
  idloja	smallint			NOT NULL,
  idchefe	smallint			NOT NULL,

  CONSTRAINT PK_setor      PRIMARY KEY (idsetor, idloja),
  CONSTRAINT FK_setor_loja FOREIGN KEY (idloja)   REFERENCES Loja,
  
 
)
/*** Depois que criar tabela funcionario***/
/***  CONSTRAINT FK_setor_funcionario  FOREIGN KEY (idchefe)   REFERENCES Funcionario***/

/*** Criação da tabela Funcionario ***/ 
CREATE TABLE Funcionario 
(
  idfuncionario smallint             NOT NULL,
  nome          varchar(45)          NOT NULL,
  sexo          varchar(1)           NOT NULL,
  cpf           varchar(11)          NOT NULL,
  rg			varchar(15)			 NOT NULL,
  telefone      varchar(11)			 NULL,
  rua			varchar(100)		 NOT NULL,
  numero		smallint			 NOT NULL,
  tipo			varchar(1)			 NOT NULL,
  salario		decimal(8,2)		 NULL,
  cnh			varchar(45)          NULL,
  /*** chaves estrangeiras ***/
  idsetor       smallint		     NULL,
  idloja		smallint			 NULL,
  idnasceu    smallint		     NOT NULL,
  idreside      smallint			 NOT NULL,
  idchefe		smallint			 NULL,
  /*** referencias chaves estrangeiras ***/
  CONSTRAINT PK_funcionario              PRIMARY KEY (idfuncionario),
  CONSTRAINT CK_funcionario_sexo		 CHECK (sexo LIKE '[FM]'),
  CONSTRAINT AK_funcionario_cpf          UNIQUE (cpf),
  CONSTRAINT CK_funcionario_cpf			 CHECK(cpf LIKE '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
  CONSTRAINT AK_funcionario_rg           UNIQUE (rg),
  CONSTRAINT CK_funcionario_tipo		 CHECK (tipo LIKE '[VE]'),
  CONSTRAINT FK_funcionario_cidade1      FOREIGN KEY (idnasceu) REFERENCES Cidade,
  CONSTRAINT FK_funcionario_cidade2      FOREIGN KEY (idreside) REFERENCES Cidade,
  CONSTRAINT FK_funcionario_setor        FOREIGN KEY (idsetor,idloja) REFERENCES Setor,
  CONSTRAINT FK_funcionario_chefe		 FOREIGN KEY (idchefe) REFERENCES Funcionario,
 )
/*** Criação da tabela Venda ***/ 
CREATE TABLE Venda
(
  idcliente		smallint	NOT NULL,
  idvendedor	smallint	NOT NULL,
  identregador  smallint	NULL,
  datavenda		date		NOT NULL,
 
  CONSTRAINT FK_venda_funcionario		FOREIGN KEY (idvendedor) REFERENCES Funcionario,
  CONSTRAINT FK_venda_funcionario2		FOREIGN KEY (identregador) REFERENCES Funcionario,
  CONSTRAINT FK_venda_cliente			FOREIGN KEY (idcliente) REFERENCES Cliente,
  CONSTRAINT PK_venda					PRIMARY KEY (idvendedor, idcliente,datavenda),
)


/*** Criação da tabela Venda_Produto (Possui) ***/ 
CREATE TABLE Possui
(
  idcliente		smallint	NOT NULL,
  idvendedor	smallint	NOT NULL,
  datavenda		date		NOT NULL,
  idproduto		smallint	NOT NULL,
  quantidade	smallint	NOT NULL,


  CONSTRAINT FK_produto2			FOREIGN KEY (idproduto) REFERENCES Produto,
  CONSTRAINT PK_vendaproduto	PRIMARY KEY (idproduto, idvendedor, idcliente, datavenda),
  CONSTRAINT FK_vendedor2		FOREIGN KEY (idvendedor) REFERENCES Funcionario,
  CONSTRAINT FK_cliente2		FOREIGN KEY (idcliente) REFERENCES Cliente,
  CONSTRAINT FK_data			FOREIGN KEY (idvendedor,idcliente,datavenda) REFERENCES Venda

)

ALTER TABLE Setor 
	Add constraint FK_setor_funcionario  FOREIGN KEY (idchefe)   REFERENCES Funcionario