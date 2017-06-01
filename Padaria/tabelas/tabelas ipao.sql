CREATE TABLE tipo_contato(
	id_contato INT primary key,
	tipo VARCHAR(45)
);

CREATE TABLE estado(
	id_estado INT primary key,
	nome VARCHAR(45),
	sigla VARCHAR(2)
);

CREATE TABLE cidade(
	id_cidade INT primary key,
	id_estado INT,
	nome VARCHAR(45),
	foreign key id_estado
	references estado(id_estado)
);

CREATE TABLE bairro(
	id_bairro INT primary key,
	id_cidade INT,
	nome_bairro VARCHAR(45),
	foreign key id_cidade
	references cidade(id_cidade)
);

CREATE TABLE cep(
	cep INT primary key,
	id_bairro INT,
	rua VARCHAR(45),
	foreign key id_bairro
	references bairro(id_bairro)
);

CREATE TABLE endereco(
	id_endereco INT primary key,
	id_bairro INT,
	cep INT,
	numero INT,
	foreign key id_bairro
	references bairro(id_bairro),
	foreign key cep
	references cep(cep)
);

CREATE TABLE cliente(
	cpf INT primary key,
	nome VARCHAR(45),
	rg INT,
	login VARCHAR(45),
	senha VARCHAR(45),
	tipo VARCHAR(60),
	id_endereco INT,
	cli_tipo INT,
	foreign key id_endereco
	references endereco(id_endereco)
);

CREATE TABLE contato_cliente(
	cpf INT,
	id_contato INT,
	contato VARCHAR(45),
	foreign key cpf
	references cliente(cpf),
	foreign key id_contato
	references tipo_contato(id_contato)
);

CREATE TABLE cartao(
	cpf INT,
	numero_cartao VARCHAR(99),
	nome_cartao VARCHAR(99),
	sec_cod INT,
	primeiro_nome VARCHAR(45),
	segundo_nome VARCHAR(60),
	mes VARCHAR(10),
	ano VARCHAR(10),
	foreign key cpf
	references cliente(cpf)
);

CREATE TABLE padaria(
	id_padaria INT primary KEY,
	cpf INT,
	nome VARCHAR(50),
	cnpj INT,
	hora_abre TIME,
	hora_fecha TIME,
	descricao TEXT,
	valor_minimo MONEY,
	foto VARCHAR(60),
	id_endereco INT,
	foreign key cpf
	references cliente(cpf),
	foreign key id_endereco
	references endereco(id_endereco)
);

CREATE TABLE produto(
	id_produto INT primary key,
	id_padaria INT,
	nome VARCHAR(45),
	descricao TEXT,
	valor_unit MONEY,
	quantidade INT,
	foto VARCHAR(60),
	foreign key id_padaria
	references padaria(id_padaria)
);


CREATE TABLE contato_padaria(
	id_padaria INT,
	id_contato INT,
	contato VARCHAR(45),
	foreign key id_padaria
	references padaria(id_padaria),
	foreign key id_contato
	references tipo_contato(id_contato)
);

CREATE TABLE pedido(
	id_pedido INT primary key,
	cpf INT,
	id_padaria INT,
	valor_total MONEY,
	data DATE,
	hora TIME,
	foreign key cpf
	references cliente(cpf),
	foreign key id_padaria
	references padaria(id_padaria)
);

CREATE TABLE entrega(
	id_entrega INT primary key,
	id_pedido INT,
	hora TIME,
	data DATE,
	foreign key id_pedido
	references pedido(id_pedido)
);


CREATE TABLE produtos_pedido(
	id_pedido INT,
	id_produto INT,
	qtd INT,
	foreign key id_pedido
	references pedido(id_pedido),
	foreign key id_produto
	references produto(id_produto)
);


CREATE TABLE padaria_rating(
	cpf INT,
	id_pedido INT,
	estrelas INT,
	recomenda INT,
	opiniao TEXT,
	foreign key cpf
	references cliente(cpf),
	foreign key id_pedido
	references pedido(id_pedido)
);
