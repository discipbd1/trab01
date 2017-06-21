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
	foreign key (id_estado)
	references estado(id_estado)
);

CREATE TABLE bairro(
	id_bairro INT primary key,
	id_cidade INT,
	nome_bairro VARCHAR(45),
	foreign key (id_cidade)
	references cidade(id_cidade)
);

CREATE TABLE cep(
	cep INT primary key,
	id_bairro INT,
	rua VARCHAR(45),
	foreign key (id_bairro)
	references bairro(id_bairro)
);

CREATE TABLE endereco(
	id_endereco INT primary key,
	id_bairro INT,
	cep INT,
	numero INT,
	foreign key (id_bairro)
	references bairro(id_bairro),
	foreign key (cep)
	references cep(cep)
);

CREATE TABLE pessoa(
	cpf INT primary key,
	nome VARCHAR(45),
	rg INT,
	tipo VARCHAR(60),
	id_endereco INT,
	cli_tipo INT,
	foreign key (id_endereco)
	references endereco(id_endereco)
);

CREATE TABLE usuario(
	cpf INT primary key,
	login VARCHAR(45),
	senha VARCHAR(45),
	foreign key (cpf)
	references pessoa(cpf)
);

CREATE TABLE contato_cliente(
	cpf INT,
	id_contato INT,
	contato VARCHAR(45),
	foreign key (cpf)
	references pessoa(cpf),
	foreign key (id_contato)
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
	foreign key (cpf)
	references pessoa(cpf)
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
	foreign key (cpf)
	references pessoa(cpf),
	foreign key (id_endereco)
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
	foreign key (id_padaria)
	references padaria(id_padaria)
);


CREATE TABLE contato_padaria(
	id_padaria INT,
	id_contato INT,
	contato VARCHAR(45),
	foreign key (id_padaria)
	references padaria(id_padaria),
	foreign key (id_contato)
	references tipo_contato(id_contato)
);


CREATE TABLE tipo_pagamento(
	id_pagamento INT primary key,
	descricao VARCHAR(50)
);

CREATE TABLE pedido(
	id_pedido INT primary key,
	cpf INT,
	id_padaria INT,
	valor_total MONEY,
	data_pedido TIMESTAMP,
	data_pagamento TIMESTAMP,
	id_pagamento INT,
	foreign key (cpf)
	references pessoa(cpf),
	foreign key (id_padaria)
	references padaria(id_padaria),
	foreign key (id_pagamento)
	references tipo_pagamento(id_pagamento)
);

CREATE TABLE entrega(
	id_entrega INT primary key,
	id_pedido INT,
	hora TIME,
	data DATE,
	foreign key (id_pedido)
	references pedido(id_pedido)
);


CREATE TABLE produtos_pedido(
	id_pedido INT,
	id_produto INT,
	qtd INT,
	foreign key (id_pedido)
	references pedido(id_pedido),
	foreign key (id_produto)
	references produto(id_produto)
);


CREATE TABLE padaria_rating(
	cpf INT,
	id_pedido INT,
	estrelas INT,
	recomenda INT,
	opiniao TEXT,
	foreign key (cpf)
	references pessoa(cpf),
	foreign key (id_pedido)
	references pedido(id_pedido)
);

INSERT INTO tipo_contato(id_contato,tipo)
VALUES	(11,'telefone'),
		(22,'celular'),
		(33,'celular'),
		(44,'celular'),
		(55,'email'),
		(66,'telefone'),
		(77,'facebook'),
		(88,'celular'),
		(99,'celular'),
		(153,'email');

INSERT INTO estado(id_estado,nome,sigla)
VALUES	(12,'Sao Paulo','SP'),
		(22,'Pernambuco','PE'),
		(11,'Rio de Janeiro','RJ'),
		(13,'Parana','PR'),
		(17,'Minas Gerais','MG'),
		(19,'Rio Grande do Sul','RS'),
		(20,'Espirito Santo','ES'),
		(15,'PARA','PA'),
		(14,'Bahia','BA'),
		(16,'Tocantins','TO');


INSERT INTO cidade(id_cidade,id_estado,nome)
VALUES	(4565,12,'Sao Paulo'),
		(2348,12,'Santos'),
		(7861,11,'Rio de Janeiro'),
		(8123,13,'Curitiba'),
		(8155,17,'Belo Horizonte'),
		(5468,19,'Porto Alegre'),
		(2137,20,'Vila Velha'),
		(5668,20,'Vitoria'),
		(9412,14,'Salvador'),
		(7563,14,'Porto Seguro');

INSERT INTO bairro(id_bairro,id_cidade,nome_bairro)
VALUES	(312,4565,'ABC'),
		(345,2348,'Boqueirao'),
		(387,7861,'Botafogo'),
		(356,8123,'Agua verde'),
		(245,8155,'Cidade Jardim'),
		(278,5468,'Cidade Baixa'),
		(255,2137,'Itapua'),
		(159,5668,'Jardim da Penha'),
		(671,9412,'Aguas Claras'),
		(892,7563,'Pindorama');

INSERT INTO cep(cep,rua,id_bairro)
VALUES	(29180054,'Rua Café Filho',312),
		(28746896,'Rua Diamante',345),
		(29000000,'Rua Pedra Bonita',387),
		(25689211,'Rua da Paz',356),
		(87964294,'Rua da Guerra',245),
		(45464789,'Rua dos Aprovados',278),
		(98653597,'Rua Goiás',255),
		(98569221,'Rua Sem Nome',159),
		(89641321,'Rua do Beco',671),
		(12365589,'Rua Isabel',892);

INSERT INTO endereco(id_endereco,id_bairro,cep,numero)
VALUES	(1111111,312,29180054,55),
		(2222222,345,28746896,456),
		(3333333,387,29000000,89),
		(4444444,356,25689211,86),
		(5555555,245,87964294,47),
		(6666666,278,45464789,22),
		(7777777,255,98653597,36),
		(8888888,159,98569221,35),
		(9999999,671,89641321,327),
		(1010101,892,12365589,641);

INSERT INTO pessoa(cpf,nome,rg,tipo,id_endereco,cli_tipo)
VALUES	(11111,'Tadeu Junior',22334,'cliente',1111111,1),
		(22222,'Yan de Paula',88776,'dono',2222222,0),
		(33333,'Ewerson Vieira',32345,'cliente',3333333,1),
		(44444,'Lucas Gomes Irinel',26526,'cliente',4444444,1),
		(55555,'Icaro Duarte',22334,'cliente',5555555,1),
		(66666,'David Vilaca',44556,'cliente',6666666,1),
		(77777,'Leandro Goias',77889,'cliente',7777777,1),
		(88888,'Luiz Melodia',34523,'cliente',8888888,1),
		(99999,'Elimar Lolzin',56753,'cliente',9999999,1),
		(12345,'Julio Faker',45678,'cliente',1010101,1);

INSERT INTO usuario(cpf,login,senha)
VALUES	(22222,'yandp','22222'),
		(11111,'tadeujun1or','111111'),
		(33333,'ewersonv','33333'),
		(44444,'luca_irinel','44444'),
		(55555,'icaroduarte','55555'),
		(66666,'vilacadavid','66666'),
		(77777,'leandro_goias','77777'),
		(88888,'luizmelodia','88888'),
		(99999,'elimarlolzero','99999'),
		(12345,'juliofaker','12345');

INSERT INTO contato_cliente(cpf,id_contato,contato)
VALUES	(11111,11,'telefone'),
		(22222,22,'celular'),
		(33333,33,'celular'),
		(44444,44,'celular'),
		(55555,55,'email'),
		(66666,66,'telefone'),
		(77777,77,'facebook'),
		(88888,88,'celular'),
		(99999,99,'celular'),
		(12345,153,'email');

INSERT INTO cartao(cpf,numero_cartao,nome_cartao,sec_cod,primeiro_nome,segundo_nome,mes,ano)
VALUES	(11111,'11122233345','Tadeu Junior',234,'Tadeu','Junior','9','18'),
		(22222,'11133344456','Yan Paula',345,'Yan','Paula','5','19'),
		(33333,'11122255678','Ewerso Vieira',462,'Ewerso','Vieira','3','20'),
		(44444,'11145678902','Lucas G Irinel',345,'Lucas','Irineu','3','27'),
		(55555,'11234567890','Icaro Duarte',567,'Icaro','Duarte','12','20'),
		(66666,'23411123456','David Vilaca',456,'David','Vilaca','10','19'),
		(77777,'45322234567','Leandro Goias',432,'Leandro','Goias','12','20'),
		(88888,'66677788906','Luiz Melodia',456,'Luiz','Melodia','9','12'),
		(99999,'23451234567','Elimar Lolzin',765,'Elimar','Lolzin','5','23'),
		(12345,'23451789654','Julio Faker',567,'Julio','Faker','9','21');

INSERT INTO padaria(id_padaria,cpf,nome,cnpj,hora_abre,hora_fecha,descricao,valor_minimo,foto,id_endereco)
VALUES	(321,11111,'Manoel Padoca',23,'6:00:00AM','21:00:00','Padaria e confeitaria, pães de todos os tipos e sob encomenda',10,'foto manoel padoca',1111111),
		(432,22222,'Pão da Hora',99,'05:00:00','22:00:00','Padaria com pães de variados tipos e sob encomenda',10,'foto pao da hora',2222222),
		(543,33333,'No céu tem Pão',67,'06:00:00','19:00:00','Padaria e confeitaria, pães, tortas, doces e salgados',15,'foto no ceu tem pao',3333333),
		(654,44444,'Pão certo',61,'07:00:00','23:00:00','Pães de todos os tipos e sob encomenda',15,'foto pao certo',4444444),
		(765,55555,'Panteon',25,'05:00:00','18:00:00','Padaria e confeitaria com itens sob encomenda',15,'foto panteon',5555555),
		(876,66666,'Padaria Minuto',55,'05:00:00','22:00:00','Padaria tradicional, temos pães de vários tipos, tortas, doces e salgados',15,'foto padaria minuto',6666666),
		(987,77777,'Pão de luxo',38,'06:00:00','23:00:00','Além de pães, temos tortas, doces e salgados sob encomenda',15,'foto pao de luxo',7777777),
		(912,88888,'Pão de mel',58,'05:00:00','22:00:00','Variados tipos de pães prontos e sob encomenda. Temos também tortas, doces e salgados',15,'foto pao de mel',8888888),
		(190,99999,'Aqui tem Pão',32,'05:00:00','19:00:00','Padaria e confeitaria tradicional da região, com pães de todos os tipos e sob encomenda',15,'foto aqui tem pao',9999999),
		(164,12345,'Padaria Mix',85,'05:00:00','21:00:00','Temos vários tipos de pães e tortas, doces e salgados sob encomenda',15,'foto padaria mix',1010101);

INSERT INTO produto(id_produto,id_padaria,nome,descricao,valor_unit,quantidade,foto)
VALUES	(111,321,'Bolo de Fubá','Trigo, Milho, Ovos e Leite',5,5,'Foto Bolo Fubá'),
		(222,432,'Pão','Trigo, Leite, Fermento e Ovos',7,10,'Foto Pão'),
		(333,543,'Bolo de Chocolate','Trigo, Fermento, Leite e Chocolate',10,2,'Foto Bolo Chocolate'),
		(444,654,'Rocambole','Trigo, Fermento, doce de leite, coco, Ovos',15,3,'Foto Rocambole'),
		(555,765,'Torta Salgada','Pão, Frango, milho, ervilha, sal e batata',20,5,'Foto Torta Salgada'),
		(666,876,'Bolo Festa','Trigo, ovos, leite, fermento, óleo, chocolate e coco',50,5,'Foto Bolo Festa'),
		(777,987,'Salgados Diversos','Trigo , óleo, Leite, frango, carne, queijo (diversos)',70,100,'Foto Salgados Diversos'),
		(888,912,'Cachorro Quente','pão, salcicha, milho, ervilha e queijo ralado',35,20,'Foto Cachorro Quente'),
		(999,190,'Bolo Festa','Trigo, ovos, leite, fermento, óleo, chocolate e morango',50,5,'Foto Bolo Festa'),
		(742,164,'Bolo Festa','Trigo, ovos, leite, fermento, óleo, chocolate e leite condensado',53,5,'Foto Bolo Festa');

INSERT INTO contato_padaria(id_padaria,id_contato,contato)
VALUES	(321,11,'telefone'),
		(432,22,'celular'),
		(543,33,'celular'),
		(654,11,'celular'),
		(765,22,'email'),
		(876,33,'telefone'),
		(987,44,'facebook'),
		(912,11,'celular'),
		(190,22,'celular'),
		(164,33,'email');

INSERT INTO tipo_pagamento(id_pagamento,descricao)
VALUES	(45612,'cartao'),
		(78645,'dinheiro'),
		(32457,'cartao'),
		(23154,'cartao'),
		(22234,'cartao'),
		(35456,'cartao'),
		(78632,'cartao'),
		(95142,'dinheiro'),
		(35789,'cartao'),
		(13795,'cartao');

INSERT INTO pedido(id_pedido,cpf,id_padaria,valor_total,data_pedido,data_pagamento,id_pagamento)
VALUES	(10,11111,321,10,'2017/01/21','2017/01/21',45612),
		(12,22222,432,12,'2017/01/25','2017/01/25',78645),
		(15,33333,543,15,'2017/02/12','2017/02/12',32457),
		(16,44444,654,25,'2017/02/13','2017/02/13',23154),
		(18,55555,765,25,'2017/02/13','2017/02/13',22234),
		(21,66666,876,55,'2017/03/15','2017/03/15',35456),
		(23,77777,987,80,'2017/04/19','2017/04/19',78632),
		(27,88888,912,40,'2017/05/20','2017/05/20',95142),
		(34,99999,190,60,'2017/05/22','2017/05/22',35789),
		(48,12345,164,58,'2017/06/27','2017/06/27',13795);


INSERT INTO entrega(id_entrega,id_pedido,hora,data)
VALUES	(33,10,'15:30:00','2017/01/21'),
		(12,12,'13:45:00','2017/01/25'),
		(46,15,'14:30:00','2017/02/12'),
		(188,16,'16:40:00','2017/02/13'),
		(96,18,'16:50:00','2017/02/13'),
		(123,21,'17:00:00','2017/03/15'),
		(49,23,'18:00:00','2017/04/19'),
		(88,27,'14:55:00','2017/05/20'),
		(173,34,'15:25:00','2017/05/22'),
		(107,48,'18:20:00','2017/06/27');


INSERT INTO produtos_pedido(id_pedido,id_produto,qtd)
VALUES	(10,111,1),
		(12,222,1),
		(15,333,1),
		(16,444,1),
		(18,555,1),
		(21,666,1),
		(23,777,1),
		(27,888,1),
		(34,999,1),
		(48,742,1);

INSERT INTO padaria_rating(cpf,id_pedido,estrelas,recomenda,opiniao)
VALUES	(11111,10,5,1,'Muito bom!'),
		(22222,12,4,1,'Tudo perfeito.'),
		(33333,15,4,1,'Produto de qualidade.'),
		(44444,16,4,1,'Adorei. Tudo muito bom.'),
		(55555,18,5,1,'Ótima padaria!'),
		(66666,21,2,0,'Produto veio mofado.'),
		(77777,23,4,1,'Muito bom e chegou antes do previsto'),
		(88888,27,1,0,'Produto péssimo e demorou demais!'),
		(99999,34,0,0,'Produto veio estragado!'),
		(12345,48,4,1,'Excelente padaria!');