UPDATE cartao SET
	nome_cartao = 'Lucas Gomes Feghler' 
WHERE cpf = 44444;

UPDATE usuario SET
	login = 'ypgyan',
	senha = 'x1h1' 
WHERE cpf = 22222;

UPDATE cep SET
	rua = 'Rua dos Reprovados' 
WHERE cep = 45464789 AND rua = 'Rua dos Aprovados';

UPDATE produto SET
	valor_unit = 9,
	nome = 'Hot Scoob',
	foto = 'Scoob Doo em Chamas'
WHERE id_produto = 888 AND id_padaria = 912;

UPDATE bairro SET
	nome_bairro = 'Vila Nova' 
WHERE id_bairro = 345;

UPDATE pessoa SET
	tipo = 'Funcionário',
	cli_tipo = 2 
WHERE cpf = 12345;

DELETE FROM cartao WHERE cpf = 12345;

DELETE FROM produtos_pedido WHERE id_pedido = 48 AND id_produto = 742;

DELETE FROM produto WHERE id_produto = 742;

DELETE FROM contato_cliente WHERE cpf = 77777; 

DELETE FROM contato_padaria WHERE id_padaria = 987;

DELETE FROM tipo_contato WHERE id_contato = 77;