# TRABALHO 01: IPAO

Trabalho desenvolvido durante a disciplina de BD

# Sumário

### 1. COMPONENTES

Yan de Paula Gonçalves / yanw100@gmail.com<br>
Lucas Gomes Flegher / lukas.gomes2010@gmail.com<br>
Tadeu da Penha Moraes Junior / tadeu_junior@outlook.com<br>
Ewerson Vieira / ewersonv@gmail.com<br>

### 2.INTRODUÇÃO E MOTIVAÇÃO

Com o avanço da tecnologia e o aumento de novas padarias, foi pensado em um aplicativo, inicialmente para dispositivos móveis, que auxilie diversos usuários a encontrar padarias perto de onde os mesmos se encontram.
Com esse aplicativo o usuário terá várias opções, dentre elas: saber quais sao os produtos que existem na padaria, fazer uma encomenda e pedidos, saber o horário de funcionamento, avaliar a padaria, dentre outras funcionalidades.

### 3.MINI-MUNDO

Devido ao grande aumento de padarias, foi proposto um aplicativo, inicialmente para celulares, que auxilie o usuário encontrar e obter informações a respeito de padarias em sua região. A principal atividade realizada por esse aplicativo é facilitar a comunicação entre o usuário do aplicativo e a padaria.

Sobre as informações da padaria, deseja-se saber o nome da padaria, o endereço, os tipos e horário de produtos, se realiza entrega, formas de pagamento, o horário de funcionamento. Para cadastro da padaria, deseja-se saber o nome do dono, endereço, CEP, e-mail, CPF do dono, telefone. Para cadastro de usuários, deseja-se saber o nome, CPF, RG, endereço,telefone, número do cartão de crédito(caso o usuário queira pagar pelo aplicativo).

O cliente, altera as informações  da padaria, como preços, formas de pagamento, horário de funcionamento no sistema para que os dados estejam atualizados para os usuários do aplicativo. Além de, verificar o histórico de compra e venda verifica a situação da padaria, podendo ver todos os produtos vendidos durante um período de tempo.Para o cliente é importante um relatório de seus produtos mais vendidos, bem como os produtos menos vendidos, para o fim de controlar a produção evitando o desperdício de mercadoria e como consequência aumentar seus lucros.

O usuário, tem acesso ao local da padaria, horário de funcionamento, se realiza entrega, formas de pagamento e encomendas de produtos. Ao verificar o produto, o usuário, se for cadastrado no sistema, pode realizar a compra por aplicativo. O usuário avalia o serviço prestado. Para o usuário é importante que a padaria esteja com suas informações atualizadas.

### 4.RASCUNHOS BÁSICOS DA INTERFACE (MOCKUPS)

https://github.com/Tadeujr/trab01/blob/yan/AIpao3.2.pdf


#### 4.1 TABELA DE DADOS DO SISTEMA:
https://github.com/Tadeujr/trab01/blob/master/Padaria/Campos%20IPAO.ods

### 5.MODELO CONCEITUAL
A) NOTACAO ENTIDADE RELACIONAMENTO:
<br><img src="https://github.com/Tadeujr/trab01/blob/master/Padaria/imagens%20do%20trabalho/modelo_conceitual.jpg"/>


#### 5.1 Validação do Modelo Conceitual

[TransPoint]: [Elimar, Hellesandro, André, Serena]<br>
[InviteMe]: [David, Icaro, Luiz, Leonardo]


#### 5.2 DECISÕES DE PROJETO



#### 5.3 DESCRIÇÃO DOS DADOS<br><br>

<b>Tipo de contato:</b> tabela de contato , composta por :
Id_contato: chave primária da tabela tipo de contato;
Tipo: criado para diferenciar o tipo de contato, que pode ser, contato, padaria, dono de padaria ou usuário ;</br>

<b>Cartao:</b> tabela que armazena os dados do cartão do cliente 
Cpf: chave primária, faz relação com a tabela cliente
Numero_cartao: armazena o número do cartão;
Nome_cartao: armazena o nome do titular do cartão 
Sec_cod: armazena o código de segurança do cartão
Primeiro_nome: armazena o primeiro nome do titular do cartão;
Segundo_nome: armazena o segundo nome do titular do cartão;
Mes: armazena o mês de vencimento do cartão;
Ano: armazena o ano do vencimento do cartão;</br>
 
<b>Padaria:</b> tabela armazena os dados da padaria;
Id_padaria: chave primária, armazena o id da padaria; 
Cpf: chave estrangeira faz relação com cliente;
nome :armazena o nome da padaria;
Cnpj: armazena o cnpj da padaria;
Hora_abre: armazena horário de abertura da padaria; 
Hora_fecha: armazena horário de fechamento da padaria;
Descricao: armazena a descrição da padaria; 
Valor_minimo: armazena o valor minimo de entrega se existir;
Foto: armazena foto da padaria; 
Id_endereco: chave estrangeira faz relação com a tabela de endereço;</br>
 
<b>Produto:</b> tabela armazena dados dos produtos da padaria;
Id_produto: chave primária da tabela de produtos; 
Id_padaria: chave estrangeira, faz relação com a tabela padaria;
Nome: armazena o nome do produto;
Descricao: armazena a descrição do produto;
Valor_unit: armazena o valor do produto;  
Quantidade: armazena a quantidade disponível do produto;
Foto: armazena a foto do produto ;<br>
 
<b>Contato_padaria:</b> tabela armazena o contato da padaria;
Id_padaria: chave estrangeira, tem relação com a tabela padaria;
Id_contato: chave estrangeira, tem relação com a tabela tipo de contato;
Contato: armazena contatos da padaria;<br>
 
<b>Pedido:</b> tabela armazena os pedidos;
Id_pedido: chave primária da tabela pedido;
cpf: chave estrangeira, faz relação com a tabela cliente;
Id_padaria: chave estrangeira, faz relação com a tabela padaria;<br>
 
<b>Valor_total:</b> armazena o valor total a pagar;
Data: armazena a data do pedido;
Hora: armazena hora do pedido; <br>
 
<b>Entrega:</b> tabela armazena dados da entrega do pedido;
Id_entrega: chave primária da tabela entrega;
Id_pedido: chave estrangeira, faz relação com a tabela pedido
Hora: armazena hora da entrega;
Data: armazena data da entrega;<br>
 
<b>Produtos_pedido:</b> tabela armazena os produtos pedido, para um leratório;
Id_pedido: chave estrangeira que faz relação com a tabela  pedido;
Id_produto: chave estrangeira que faz relação com a tabela produto;
Qtd: armazena a quantidade pedida do produto;<br>
 
<b>Padaria_rating:</b> armazena a classificação da padaria
Cpf: chave estrangeira que faz relação com a tabela faz relação com a tabela cliente;
Id_pedido: chave estrangeira que faz relação com a tabela pedido;
Estrelas; armazena a quantidade de estrelas classificada pelo o usuário;
Recomenda: armazena se o usuário recomenda ou não a padaria;
Opiniao: armazena a opinião do cliente; <br>
 
<b>Tipo_contato:</b> tabela armazena o tipo de contato;
Id_contato: chave primaria da tabela tipo de contato;
Tipo:armazena o tipo de contato;<br>
 
<b>Estado:</b> tabela armazena dados sobre o estado do cliente;
Id_estado: chave primária da tabela estado;
Nome: armazena o nome do estado;
Sigla: armazena a sigla do estado;<br>
 
<b>Cidade:</b> tabela armazena dados da cidade do usuário;
Id_cidade: chave primária da tabela cidade;
Id_estado: chave estrangeira que faz relação com a tabela estado;
Nome: armazena o nome da cidade;<br>
 
<b>Bairro:</b> tabela armazena o bairro do cliente;
Id_bairro: chave primária da tabela bairro;
Id_cidade: chave estrangeira que faz relação com a tabela cidade;
Nome_bairro: armazena o nome do bairro; <br>
 
<b>Cep:</b> tabela armazena cep do usuário;
Cep: chave primária da tabela cep;
Id_bairro: chave estrangeira que faz relação com a tabela bairro
Rua: armazena o nome da rua;<br>
 
<b>Endereco:</b> tabela armazena dados do endereço;
Id_endereco: chave primária da tabela endereço;
id_bairro: chave estrangeira que faz relação com a tabela bairro;
Cep: chave estrangeira que faz relação com a tabela cep;
Numero: armazena o numero do local;<br>
 
<b>Cliente:</b> tabela armazena os dados do cliente;
Cpf: chave primária da tabela cliente;
Nome: armazena o nome do cliente;
Rg: armazena o rg do cliente;
Login: armazena o nome de login do cliente;
Senha: armazena a senha do cliente;
Tipo: armazena o tip de cliente;
Id_endereco: chave estrangeira que faz relação com a tabela endereço;
Cli_tipo: armazena o tipo de cliente;<br>
 
<b>Contato_cliente:</b> tabela armazena o contato do cliente;
Cpf: chave estrangeira que faz relação com a tabela cliente;
Id_contato: chave estrangeira que faz relação com a tabela tipo de contato;
Contato: armazena o contato do cliente;<br><br>

### 6	MODELO LÓGICO <br>
   
   <img src='https://github.com/Tadeujr/trab01/blob/master/Padaria/imagens%20do%20trabalho/foto_modelo_logico.jpg'/>
   


### 7	MODELO FÍSICO
   a) inclusão das instruções de criacão das estruturas DDL 
    (criação de tabelas, alterações, etc..)
    
    
    
    Entrega até este ponto em: (Data a ser definida)


### 8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS
#### 8.1 DETALHAMENTO DAS INFORMAÇÕES
   https://github.com/Tadeujr/trab01/blob/lucas/Padaria/tabelas/tabelas%20ipao.sql


#### 8.2 INCLUSÃO DO SCRIPT DE INSERÇÃO DOS DADOS
   INSERT INTO tipo_contato(id_contato,tipo)
VALUES(11,'telefone'),(22,'celular'),(33,'celular'),(44,'celular'),(55,'email'),(66,'telefone'),(77,'facebook'),(88,'celular'),(99,'celular'),(153,'email');

INSERT INTO estado(id_estado,nome,sigla)
VALUES(12,'Sao Paulo','SP'),(22,'Pernambuco','PE'),(11,'Rio de Janeiro','RJ'),(13,'Parana','PR'),(17,'Minas Gerais','MG'),(19,'Rio Grande do Sul','RS'),(20,'Espirito Santo','ES'),(15,'PARA','PA'),(14,'Bahia','BA'),(16,'Tocantins','TO');


INSERT INTO cidade(id_cidade,id_estado,nome)
VALUES(4565,12,'Sao Paulo'),(2348,12,'Santos'),(7861,11,'Rio de Janeiro'),(8123,13,'Curitiba'),(8155,17,'Belo Horizonte'),(5468,19,'Porto Alegre'),(2137,20,'Vila Velha'),(5668,20,'Vitoria'),(9412,14,'Salvador'),(7563,14,'Porto Seguro');

INSERT INTO bairro(id_bairro,id_cidade,nome_bairro)
VALUES(312,4565,'ABC'),(345,2348,'Boqueirao'),(387,7861,'Botafogo'),(356,8123,'Agua verde'),(245,8155,'Cidade Jardim'),(278,5468,'Cidade Baixa'),(255,2137,'Itapua'),(159,5668,'Jardim da Penha'),(671,9412,'Aguas Claras'),(892,7563,'Pindorama');

INSERT INTO cep(cep,rua,id_bairro)
VALUES(29180054,'Rua Café Filho',312),(28746896,'Rua Diamante',345),(29000000,'Rua Pedra Bonita',387),(25689211,'Rua da Paz',356),(87964294,'Rua da Guerra',245),(45464789,'Rua dos Aprovados',278),(98653597,'Rua Goiás',255),(98569221,'Rua Sem Nome',159),(89641321,'Rua do Beco',671),(12365589,'Rua Isabel',892);

INSERT INTO endereco(id_endereco,id_bairro,cep,numero)
VALUES(1111111,312,29180054,55),(2222222,345,28746896,456),(3333333,387,29000000,89),(4444444,356,25689211,86),(5555555,245,87964294,47),(6666666,278,45464789,22),(7777777,255,98653597,36),(8888888,159,98569221,35),(9999999,671,89641321,327),(1010101,892,12365589,641);

INSERT INTO cliente(cpf,nome,rg,login,senha,tipo,id_endereco,cli_tipo)
VALUES(11111,'Tadeu Junior',22334,'tadeujun1or','111111','cliente',1111111,1),(22222,'Yan de Paula',88776,'yandp','22222','dono',2222222,0),(33333,'Ewerson Vieira',32345,'ewersonv','33333','cliente',3333333,1),(44444,'Lucas Gomes Irinel',26526,'luca_irinel','44444','cliente',4444444,1),(55555,'Icaro Duarte',22334,'icaroduarte','55555','cliente',5555555,1),(66666,'David Vilaca',44556,'vilacadavid','66666','cliente',6666666,1),(77777,'Leandro Goias',77889,'leandro_goias','77777','cliente',7777777,1),(88888,'Luiz Melodia',34523,'luizmelodia','88888','cliente',8888888,1),(99999,'Elimar Lolzin',56753,'elimarlolzero','99999','cliente',9999999,1),(12345,'Julio Faker',45678,'juliofaker','12345','cliente',1010101,1);

INSERT INTO contato_cliente(cpf,id_contato,contato)
VALUES(11111,11,'telefone'),(22222,22,'celular'),(33333,33,'celular'),(44444,44,'celular'),(55555,55,'email'),(66666,66,'telefone'),(77777,77,'facebook'),(88888,88,'celular'),(99999,99,'celular'),(12345,153,'email');

INSERT INTO cartao(cpf,numero_cartao,nome_cartao,sec_cod,primeiro_nome,segundo_nome,mes,ano)
VALUES(11111,'11122233345','Tadeu Junior',234,'Tadeu','Junior','9','18'),(22222,'11133344456','Yan Paula',345,'Yan','Paula','5','19'),(33333,'11122255678','Ewerso Vieira',462,'Ewerso','Vieira','3','20'),(44444,'11145678902','Lucas G Irinel',345,'Lucas','Irineu','3','27'),(55555,'11234567890','Icaro Duarte',567,'Icaro','Duarte','12','20'),(66666,'23411123456','David Vilaca',456,'David','Vilaca','10','19'),(77777,'45322234567','Leandro Goias',432,'Leandro','Goias','12','20'),(88888,'66677788906','Luiz Melodia',456,'Luiz','Melodia','9','12'),(99999,'23451234567','Elimar Lolzin',765,'Elimar','Lolzin','5','23'),(12345,'23451789654','Julio Faker',567,'Julio','Faker','9','21');

INSERT INTO padaria(id_padaria,cpf,nome,cnpj,hora_abre,hora_fecha,descricao,valor_minimo,foto,id_endereco)
VALUES(321,11111,'Manoel Padoca',23,'6:00:00AM','21:00:00','Padaria e confeitaria, pães de todos os tipos e sob encomenda',10,'foto manoel padoca',1111111),(432,22222,'Pão da Hora',99,'05:00:00','22:00:00','Padaria com pães de variados tipos e sob encomenda',10,'foto pao da hora',2222222),(543,33333,'No céu tem Pão',67,'06:00:00','19:00:00','Padaria e confeitaria, pães, tortas, doces e salgados',15,'foto no ceu tem pao',3333333),(654,44444,'Pão certo',61,'07:00:00','23:00:00','Pães de todos os tipos e sob encomenda',15,'foto pao certo',4444444),(765,55555,'Panteon',25,'05:00:00','18:00:00','Padaria e confeitaria com itens sob encomenda',15,'foto panteon',5555555),(876,66666,'Padaria Minuto',55,'05:00:00','22:00:00','Padaria tradicional, temos pães de vários tipos, tortas, doces e salgados',15,'foto padaria minuto',6666666),(987,77777,'Pão de luxo',38,'06:00:00','23:00:00','Além de pães, temos tortas, doces e salgados sob encomenda',15,'foto pao de luxo',7777777),(912,88888,'Pão de mel',58,'05:00:00','22:00:00','Variados tipos de pães prontos e sob encomenda. Temos também tortas, doces e salgados',15,'foto pao de mel',8888888),(190,99999,'Aqui tem Pão',32,'05:00:00','19:00:00','Padaria e confeitaria tradicional da região, com pães de todos os tipos e sob encomenda',15,'foto aqui tem pao',9999999),(164,12345,'Padaria Mix',85,'05:00:00','21:00:00','Temos vários tipos de pães e tortas, doces e salgados sob encomenda',15,'foto padaria mix',1010101);

INSERT INTO produto(id_produto,id_padaria,nome,descricao,valor_unit,quantidade,foto)
VALUES(111,321,'Bolo de Fubá','Trigo, Milho, Ovos e Leite',5,5,'Foto Bolo Fubá'),(222,432,'Pão','Trigo, Leite, Fermento e Ovos',7,10,'Foto Pão'),(333,543,'Bolo de Chocolate','Trigo, Fermento, Leite e Chocolate',10,2,'Foto Bolo Chocolate'),(444,654,'Rocambole','Trigo, Fermento, doce de leite, coco, Ovos',15,3,'Foto Rocambole'),(555,765,'Torta Salgada','Pão, Frango, milho, ervilha, sal e batata',20,5,'Foto Torta Salgada'),(666,876,'Bolo Festa','Trigo, ovos, leite, fermento, óleo, chocolate e coco',50,5,'Foto Bolo Festa'),(777,987,'Salgados Diversos','Trigo , óleo, Leite, frango, carne, queijo (diversos)',70,100,'Foto Salgados Diversos'),(888,912,'Cachorro Quente','pão, salcicha, milho, ervilha e queijo ralado',35,20,'Foto Cachorro Quente'),(999,190,'Bolo Festa','Trigo, ovos, leite, fermento, óleo, chocolate e morango',50,5,'Foto Bolo Festa'),(742,164,'Bolo Festa','Trigo, ovos, leite, fermento, óleo, chocolate e leite condensado',53,5,'Foto Bolo Festa');

INSERT INTO contato_padaria(id_padaria,id_contato,contato)
VALUES(321,11,'telefone'),(432,22,'celular'),(543,33,'celular'),(654,11,'celular'),(765,22,'email'),(876,33,'telefone'),(987,44,'facebook'),(912,11,'celular'),(190,22,'celular'),(164,33,'email');

INSERT INTO tipo_pagamento(id_pagamento,descricao)
VALUES(45612,'cartao'),(78645,'dinheiro'),(32457,'cartao'),(23154,'cartao'),(22234,'cartao'),(35456,'cartao'),(78632,'cartao'),(95142,'dinheiro'),(35789,'cartao'),(13795,'cartao');

INSERT INTO pedido(id_pedido,cpf,id_padaria,valor_total,data_pedido,data_pagamento,id_pagamento)
VALUES(10,11111,321,10,'2017/01/21','2017/01/21',45612),(12,22222,432,12,'2017/01/25','2017/01/25',78645),(15,33333,543,15,'2017/02/12','2017/02/12',32457),(16,44444,654,25,'2017/02/13','2017/02/13',23154),(18,55555,765,25,'2017/02/13','2017/02/13',22234),(21,66666,876,55,'2017/03/15','2017/03/15',35456),(23,77777,987,80,'2017/04/19','2017/04/19',78632),(27,88888,912,40,'2017/05/20','2017/05/20',95142),(34,99999,190,60,'2017/05/22','2017/05/22',35789),(48,12345,164,58,'2017/06/27','2017/06/27',13795);


INSERT INTO entrega(id_entrega,id_pedido,hora,data)
VALUES(33,10,'15:30:00','2017/01/21'),(12,12,'13:45:00','2017/01/25'),(46,15,'14:30:00','2017/02/12'),(188,16,'16:40:00','2017/02/13'),(96,18,'16:50:00','2017/02/13'),(123,21,'17:00:00','2017/03/15'),(49,23,'18:00:00','2017/04/19'),(88,27,'14:55:00','2017/05/20'),(173,34,'15:25:00','2017/05/22'),(107,48,'18:20:00','2017/06/27');


INSERT INTO produtos_pedido(id_pedido,id_produto,qtd)
VALUES(10,111,1),(12,222,1),(15,333,1),(16,444,1),(18,555,1),(21,666,1),(23,777,1),(27,888,1),(34,999,1),(48,742,1);

INSERT INTO padaria_rating(cpf,id_pedido,estrelas,recomenda,opiniao)
VALUES(11111,10,5,1,'Muito bom!'),(22222,12,4,1,'Tudo perfeito.'),(33333,15,4,1,'Produto de qualidade.'),(44444,16,4,1,'Adorei. Tudo muito bom.'),(55555,18,5,1,'Ótima padaria!'),(66666,21,2,0,'Produto veio mofado.'),(77777,23,4,1,'Muito bom e chegou antes do previsto'),(88888,27,1,0,'Produto péssimo e demorou demais!'),(99999,34,0,0,'Produto veio estragado!'),(12345,48,4,1,'Excelente padaria!');

#### 8.3 INCLUSÃO DO SCRIPT PARA CRIAÇÃO DE TABELA E INSERÇÃO DOS DADOS<br>
   https://github.com/Tadeujr/trab01/blob/lucas/Padaria/tabelas/tabelas%20ipao.sql
   https://github.com/Tadeujr/trab01/blob/master/Padaria/INSERTS.txt
    
    Entrega até este ponto em: (Data a ser definida)


### 9	TABELAS E PRINCIPAIS CONSULTAS
#### 9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas) 
   Entrega até este ponto em: (Data a ser definida)


#### 9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE (Mínimo 3)
#### 9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E CAMPOS RENOMEADOS (Mínimo 2)
#### 9.4	CONSULTAS QUE USAM OPERADORES LIKE (Mínimo 3) 
#### 9.5	ATUALIZAÇÃO E EXCLUSÃO DE DADOS (Mínimo 6)
#### 9.6	CONSULTAS COM JUNÇÃO E ORDENAÇÃO (Todas Junções)
   Entrega até este ponto em: (Data a ser definida)


#### 9.7	CONSULTAS COM GROUP BY (Mínimo 5)
#### 9.8	CONSULTAS COM LEFT E RIGHT JOIN (Mínimo 4)
#### 9.9	CONSULTAS COM SELF JOIN E VIEW (Todas Possíveis)
#### 9.10	SUBCONSULTAS (Mínimo 3)
   Entrega até este ponto em: (Data a ser definida)


### 10	ATUALIZAÇÃO DA DOCUMENTAÇÃO DOS SLIDES PARA APRESENTAÇAO FINAL (Mínimo 6 e Máximo 10)
### 11	TUTORIAL COMPLETO DE PASSOS PARA RESTAURACAO DO BANCO E EXECUCAO DE PROCEDIMENTOS ENVOLVIDOS NO TRABALHO PARA OBTENÇÃO DOS RESULTADOS
   a) Outros grupos deverão ser capazes de restaurar o banco 
    b) executar todas as consultas presentes no trabalho
    c) executar códigos que tenham sido construídos para o trabalho 
    d) realizar qualquer procedimento executado pelo grupo que desenvolveu o trabalho


### 12 DIFICULDADES ENCONTRADAS PELO GRUPO
### 13 TRABALHO DE MINERAÇÃO DE DADOS
   a) captura das informaçõs
    b) integração com banco de dados em desenvolvimento
    c) atualização da documentação do trabalho incluindo a mineração de dados


### 13 FORMATACAO NO GIT: https://help.github.com/articles/basic-writing-and-formatting-syntax/
### 14 Backup completo do banco de dados postgres
a) deve ser realizado no formato "backup" 
    (Em Dump Options #1 Habilitar opções Don't Save Owner e Privilege)
b) antes de postar o arquivo no git o mesmo deve ser testado/restaurado por outro grupo de alunos/dupla
c) informar aqui o grupo de alunos/dupla que realizou o teste.



