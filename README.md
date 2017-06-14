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
   https://github.com/Tadeujr/trab01/blob/master/Padaria/INSERTS.txt

#### 8.3 INCLUSÃO DO SCRIPT PARA CRIAÇÃO DE TABELA E INSERÇÃO DOS DADOS<br>
   https://github.com/Tadeujr/trab01/blob/lucas/Padaria/tabelas/tabelas%20ipao.sql
   https://github.com/Tadeujr/trab01/blob/master/Padaria/INSERTS.txt
    
    Entrega até este ponto em: (Data a ser definida)


### 9	TABELAS E PRINCIPAIS CONSULTAS
#### 9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas) 
<h3>select*from bairro<h3>
 <img src='https://github.com/Tadeujr/trab01/blob/master/Padaria/imagens%20do%20trabalho/bairro.png'/>
 
 <h3>select*from cartao<h3>
 <img src='https://github.com/Tadeujr/trab01/blob/master/Padaria/imagens%20do%20trabalho/cartao.png'/>

<h3>select*from cep<h3>
 <img src='https://github.com/Tadeujr/trab01/blob/master/Padaria/imagens%20do%20trabalho/cep.png'/>
 
 <h3>select*from cidade<h3>
 <img src='https://github.com/Tadeujr/trab01/blob/master/Padaria/imagens%20do%20trabalho/cidade.png'/>
 
 <h3>select*from cliente<h3>
 <img src='https://github.com/Tadeujr/trab01/blob/master/Padaria/imagens%20do%20trabalho/cliente.png'/>
 
 <h3>select*from contato_cliente<h3>
 <img src='https://github.com/Tadeujr/trab01/blob/master/Padaria/imagens%20do%20trabalho/contato_cliente.png'/>
 
 <h3>select*from contato_padaria<h3>
 <img src='https://github.com/Tadeujr/trab01/blob/master/Padaria/imagens%20do%20trabalho/contato_padaria.png'/>
 
 <h3>select*from endereco<h3>
 <img src='https://github.com/Tadeujr/trab01/blob/master/Padaria/imagens%20do%20trabalho/endereco.png'/>
 
 <h3>select*from entrega<h3>
 <img src='https://github.com/Tadeujr/trab01/blob/master/Padaria/imagens%20do%20trabalho/entrega.png'/>
 
 <h3>select*from estado<h3>
 <img src='https://github.com/Tadeujr/trab01/blob/master/Padaria/imagens%20do%20trabalho/estado.png'/>
 
 <h3>select*from padaria<h3>
 <img src='https://github.com/Tadeujr/trab01/blob/master/Padaria/imagens%20do%20trabalho/padaria.png'/>
 
 <h3>select*from cartao<h3>
 <img src='https://github.com/Tadeujr/trab01/blob/master/Padaria/imagens%20do%20trabalho/cartao.png'/>
 
 <h3>select*from padaria_rating<h3>
 <img src='https://github.com/Tadeujr/trab01/blob/master/Padaria/imagens%20do%20trabalho/padaria_rating.png'/>
 
 <h3>select*from pedido<h3>
 <img src='https://github.com/Tadeujr/trab01/blob/master/Padaria/imagens%20do%20trabalho/pedido.png'/>
 
 <h3>select*from produto<h3>
 <img src='https://github.com/Tadeujr/trab01/blob/master/Padaria/imagens%20do%20trabalho/produto.png'/>
 
 <h3>select*from produto_pedido<h3>
 <img src='https://github.com/Tadeujr/trab01/blob/master/Padaria/imagens%20do%20trabalho/produto_pedido.png'/>
 
  <h3>select*from tipo_contato<h3>
 <img src='https://github.com/Tadeujr/trab01/blob/master/Padaria/imagens%20do%20trabalho/tipo_contato.png'/>
 
  <h3>select*from tipo_pagamento<h3>
 <img src='https://github.com/Tadeujr/trab01/blob/master/Padaria/imagens%20do%20trabalho/tipo_pagamento.png'/> 
 

#### 9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE (Mínimo 3)

 
#### 9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E CAMPOS RENOMEADOS (Mínimo 2)

 <h3>SELECT id_produto AS COD_Produto, id_padaria, nome, descricao, valor_unit, quantidade FROM produto where quantidade > 10 OR quantidade = 5;<h3>
 <img src='https://github.com/Tadeujr/trab01/blob/master/Padaria/imagens%20do%20trabalho/where_contidade.png'/> 
 
 <h3>SELECT nome, id_padaria AS cod_padaria FROM produto where valor_unit >= 'R$50,00' AND id_padaria = 190<h3>
 <img src='https://github.com/Tadeujr/trab01/blob/master/Padaria/imagens%20do%20trabalho/where_produto.png'/> 
 
 
#### 9.4	CONSULTAS QUE USAM OPERADORES LIKE (Mínimo 3) 
 <h3>SELECT id_produto, id_padaria, nome, descricao, valor_unit, quantidade,foto FROM produto where descricao like '%Trigo%';<h3>
 <img src='https://github.com/Tadeujr/trab01/blob/master/Padaria/imagens%20do%20trabalho/like_trigo.png'/> 
 
  <h3>SELECT * FROM padaria where descricao like '%confeitaria%';<h3>
 <img src='https://github.com/Tadeujr/trab01/blob/master/Padaria/imagens%20do%20trabalho/like_confeitaria.png'/> 
 
   <h3>SELECT nome,descricao FROM produto where nome like '%Bolo%';<h3>
 <img src='https://github.com/Tadeujr/trab01/blob/master/Padaria/imagens%20do%20trabalho/like_blo.png'/> 
 
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



