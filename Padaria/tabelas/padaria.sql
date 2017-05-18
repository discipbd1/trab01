CREATE TABLE padaria(
	id_padaria INT,
	cpf INT,
	nome VARCHAR(50),
	cnpj INT,
	hora_abre TIME,
	hora_fecha TIME,
	descricao TEXT,
	valor_minimo MONEY,
	foto VARCHAR(60),
	id_endereco
);