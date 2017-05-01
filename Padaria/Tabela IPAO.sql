/* Tabela do Cartao*/
CREATE TABLE cartao(
	cpf INT,
	numero_cartao VARCHAR(99),
	nome_cartao VARCHAR(99),
	sec_cod INT,
	primeiro_nome VARCHAR(45),
	segundo_nome VARCHAR(60),
	mes VARCHAR(10),
	ano VARCHAR(10)
);

/*Tabela dono da padaria*/
CREATE TABLE dono_padaria(
	cpf INT,
	nome VARCHAR(45),
	email VARCHAR(45),
	telefone INT,
	senha VARCHAR(45)
);

/*Tabela do Endereço do dono*/
CREATE TABLE endereco_dono(
	cpf INT,
	estado VARCHAR(2),
	cidade VARCHAR(30),
	bairro VARCHAR(30),
	cep INT,
	rua VARCHAR(45),
	numero INT
);

/*Tabela de endereços das padarias*/
CREATE TABLE endereco_padaria(
	id_padaria INT,
	estado VARCHAR(2),
	cidade VARCHAR(30),
	bairro VARCHAR(30),
	cep INT,
	rua VARCHAR(45),
	numero INT
);

/*Tabela do endereços do usuarios*/
CREATE TABLE endereco_usuario(
	cpf INT,
	estado VARCHAR(2),
	cidade VARCHAR(30),
	bairro VARCHAR(30),
	cep INT,
	rua VARCHAR(45),
	numero INT
);

/*Tabela de entregas*/
CREATE TABLE entrega(
	id_entrega INT,
	id_pedido INT,
	hora TIME,
	data DATE
);

/*Tabela da padaria*/
CREATE TABLE padaria(
	id_padaria INT,
	cpf INT,
	nome VARCHAR(50),
	cnpj INT,
	email VARCHAR(50),
	celular INT,
	telefone INT,
	hora_abre TIME,
	hora_fecha TIME,
	descricao TEXT,
	valor_minimo MONEY,
	foto VARCHAR
);

/* Tabela de rating da padaria*/
CREATE TABLE padaria_rating(
	id_padaria INT,
	cpf INT,
	id_pedido INT,
	estrelas INT,
	recomenda INT,
	opiniao TEXT
);

/*Tabela de Pedido*/
CREATE TABLE pedido(
	id_pedido INT,
	cpf INT,
	id_padaria INT,
	valor_total MONEY,
	data DATE,
	hora TIME
);

/*Tabela de produtos da padaria*/
CREATE TABLE produto(
	id_produto INT,
	id_padaria INT,
	nome VARCHAR(45),
	descricao TEXT,
	valor_unit MONEY,
	quantidade INT
);

/*Tabelas de pedidos*/
CREATE TABLE produtos_pedido(
	id_pedido INT,
	id_produto INT,
	qtd INT
);

/* Tabela de usuarios*/
CREATE TABLE usuario(
	cpf INT,
	nome VARCHAR(45),
	rg INT,
	telefone INT,
	email VARCHAR(45)
);