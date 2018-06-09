/* Lógico: */

CREATE TABLE VAGA (
    Seção_Vaga varchar(45),
    Andar_Vaga integer,
    Estado_Vaga varchar(45),
    Cidade_Vaga varchar(45),
    CEP_Vaga integer,
    preco_vaga money,
    Horario_vaga time,
    id_Vaga serial PRIMARY KEY
);

CREATE TABLE VEICULO (
    placa_veiculo varchar(10),
    FK_categoria_Veiculo_categoria_Veiculo_PK varchar(45),
    id_veiculo serial PRIMARY KEY,
    FK_PESSOA_id_pessoa serial
);

CREATE TABLE SENSOR (
    situacao boolean,
    id_sensor serial PRIMARY KEY,
    FK_VAGA_id_Vaga serial,
    FK_TIPO_SENSOR_id_tipo serial
);

CREATE TABLE PESSOA (
    nome varchar(45),
    email varchar(45),
    perfil boolean,
    id_pessoa serial PRIMARY KEY,
    Credito money,
    Cpf varchar(14),
    Cnpj varchar(18),
    PESSOA_TIPO INT,
    Cnh varchar(11),
    Telefone varchar(10),
    FK_PESSOA_id_pessoa serial
);

CREATE TABLE TIPO_SENSOR (
    id_tipo serial PRIMARY KEY,
    descricao varchar(45)
);

CREATE TABLE CARTAO (
    Nome_Impresso varchar(10),
    Data_Validade date,
    Numero varchar(20),
    id_cartao serial PRIMARY KEY,
    FK_PESSOA_id_pessoa serial
);

CREATE TABLE categoria_Veiculo (
    categoria_Veiculo_PK varchar(45) NOT NULL PRIMARY KEY,
    categoria_Veiculo varchar(45)
);

CREATE TABLE Reserva_vaga (
    FK_VAGA_id_Vaga serial,
    FK_PESSOA_id_pessoa serial,
    data date,
    hora_entrada time,
    hora_saida time
);

CREATE TABLE Gerencia (
    FK_VAGA_id_Vaga serial,
    FK_PESSOA_id_pessoa serial
);

CREATE TABLE Paga (
    FK_PESSOA_id_pessoa serial,
    FK_PESSOA_id_pessoa_ serial,
    Valor money,
    Metodo varchar(150)
);
 
ALTER TABLE VEICULO ADD CONSTRAINT FK_VEICULO_1
    FOREIGN KEY (FK_categoria_Veiculo_categoria_Veiculo_PK)
    REFERENCES categoria_Veiculo (categoria_Veiculo_PK)
    ON DELETE NO ACTION ON UPDATE NO ACTION;
 
ALTER TABLE VEICULO ADD CONSTRAINT FK_VEICULO_2
    FOREIGN KEY (FK_PESSOA_id_pessoa)
    REFERENCES PESSOA (id_pessoa)
    ON DELETE CASCADE ON UPDATE CASCADE;
 
ALTER TABLE SENSOR ADD CONSTRAINT FK_SENSOR_1
    FOREIGN KEY (FK_VAGA_id_Vaga)
    REFERENCES VAGA (id_Vaga)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE SENSOR ADD CONSTRAINT FK_SENSOR_2
    FOREIGN KEY (FK_TIPO_SENSOR_id_tipo)
    REFERENCES TIPO_SENSOR (id_tipo)
    ON DELETE CASCADE ON UPDATE CASCADE;
 
ALTER TABLE PESSOA ADD CONSTRAINT FK_PESSOA_0
    FOREIGN KEY (FK_PESSOA_id_pessoa)
    REFERENCES PESSOA (id_pessoa);
 
ALTER TABLE CARTAO ADD CONSTRAINT FK_CARTAO_1
    FOREIGN KEY (FK_PESSOA_id_pessoa)
    REFERENCES PESSOA (id_pessoa)
    ON DELETE CASCADE ON UPDATE CASCADE;
 
ALTER TABLE Reserva_vaga ADD CONSTRAINT FK_Reserva_vaga_0
    FOREIGN KEY (FK_VAGA_id_Vaga)
    REFERENCES VAGA (id_Vaga)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE Reserva_vaga ADD CONSTRAINT FK_Reserva_vaga_1
    FOREIGN KEY (FK_PESSOA_id_pessoa)
    REFERENCES PESSOA (id_pessoa)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE Gerencia ADD CONSTRAINT FK_Gerencia_0
    FOREIGN KEY (FK_VAGA_id_Vaga)
    REFERENCES VAGA (id_Vaga)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE Gerencia ADD CONSTRAINT FK_Gerencia_1
    FOREIGN KEY (FK_PESSOA_id_pessoa)
    REFERENCES PESSOA (id_pessoa)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE Paga ADD CONSTRAINT FK_Paga_0
    FOREIGN KEY (FK_PESSOA_id_pessoa_)
    REFERENCES PESSOA (id_pessoa)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE Paga ADD CONSTRAINT FK_Paga_1
    FOREIGN KEY (FK_PESSOA_id_pessoa)
    REFERENCES PESSOA (id_pessoa)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
