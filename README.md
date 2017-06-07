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
https://docs.google.com/spreadsheets/d/1JBbAo0VUQsOB8ZVPGZQFmyrlxMNNWYwclLrhofatXZA/edit#gid=0

### 5.MODELO CONCEITUAL
A) NOTACAO ENTIDADE RELACIONAMENTO:
<br><img src="https://github.com/Tadeujr/trab01/blob/master/Padaria/imagens%20do%20trabalho/modeloconceitual.jpg"/>


#### 5.1 Validação do Modelo Conceitual

[TransPoint]: [Elimar, Hellesandro, André, Serena]<br>
[InviteMe]: [David, Icaro, Luiz, Leonardo]


#### 5.2 DECISÕES DE PROJETO
[atributo]: [descrição da decisão]

EXEMPLO:
a) Campo endereço: em nosso projeto optamos por um campo multivalorado e composto, pois a empresa 
pode possuir para cada departamento mais de uma localização... 
b) justifique!


#### 5.3 DESCRIÇÃO DOS DADOS

Tabela do Cartão, composta por (cpf, numero_cartao, nome_cartao, sec_cod, primeiro_nome, segundo_nome, mês, ano): Criada com o objetivo de agilizar a compra do cliente, ele pode querer guardar os dados do cartão ou não. Os campos são para legitimar o dono do cartão.

Tabela endereco, composta por (id_endereco,id_cidade,cep,numero), tabela armazena os dados referente aos endereços tanto das padarias como dos clientes.

Tabela bairro, composta por (id_bairro,id_cidade,nome_bairro), tabela armazena os bairros.

Tabela cep, composta por (cep,id_bairro,rua), tabela armazena os CEPs do sistema.

Tabela cidade, composta por (id_cidade,id_estado,nome,sigla), tabela armazena as cidade cadastradas no sistema.

Tabela estado, composta por (id_estado,nome,sigla), tabela armazena os estados cadastrado no sistema.

Tabela de entrega, composta por(id_ entrega, id_pedido, hora, data),tabela para armazenar os dados da entrega.

Tabela padaria, composta por(id_padaria, cpf, nome, cnpj, email, celular, telefone, hora_abre, hora_fecha, descricao, valor_minimo, foto ), tabela armazena os dados da pessoa jurídica padaria.


Tabela padaria_rating, composta por (cpf, id_pedido, estrelas, recomenda, piniao), tabela que armazena os dados sobre avaliações da padaria.

Tabela pedido, composta por(id_pedido, cpf, id_padaria, valor_total, data, hora), tabela que contém os historico de pedidos do usuário e tambem histórico de vendas da empresa.

Tabela produto, composta por(id_produto, id_padaria, nome, descricao, valor_unit, quantidade), utilizada para atualização dos campos do produto.

Tabela produtos_pedido, composta por(id_pedido, id_produto, qtd), tabela onde ficam armazenados os pedidos feitos pelo usuário.

Tabela cliente, composta por(cpf, nome, rg, senha,id_enderco,cli_tipo), tabela com os campos para identificação do Cliente.

Tabela contato_cliente, composta por (cpf,id_contato,contato), tabela que armazena os diversos meios de contato do usuário.

Tabela contato_padaria, composta por (id_padaria,id_contato,contato), tabela que armazena os diversos meios de contato do usuário.

Tabela tipo_contato, composta por (id_contato,tipo), tabela que armazena os tipos de contato do sistema.

### 6	MODELO LÓGICO <br>
   
   <img src='https://github.com/Tadeujr/trab01/blob/master/Padaria/imagens%20do%20trabalho/modelologico.jpg'/>
   


### 7	MODELO FÍSICO
   a) inclusão das instruções de criacão das estruturas DDL 
    (criação de tabelas, alterações, etc..)
    
    
    
    Entrega até este ponto em: (Data a ser definida)


### 8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS
#### 8.1 DETALHAMENTO DAS INFORMAÇÕES
   Detalhamento sobre as informações e processo de obtenção ou geração dos dados.
    Referenciar todas as fontes referentes a :
    a) obtenção dos dados
    b) obtenção de códigos reutilizados
    c) fontes de estudo para desenvolvimento do projeto


#### 8.2 INCLUSÃO DO SCRIPT DE INSERÇÃO DOS DADOS
   a) inclusão das instruções de inserção dos dados nas tabelas criadas pelo script de modelo físico
    b) inclusão das instruções para execução de outros procedimentos necessários (caso existam)


#### 8.3 INCLUSÃO DO SCRIPT PARA CRIAÇÃO DE TABELA E INSERÇÃO DOS DADOS<br>
https://github.com/Tadeujr/trab01/blob/lucas/Padaria/tabelas/tabelas%20ipao.sql
    
    
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



