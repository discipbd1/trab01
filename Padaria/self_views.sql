create view produto_maior_que_dez as
SELECT id_produto, id_padaria, nome, descricao, valor_unit, quantidade FROM produto where quantidade > 10;


create view valor_maior_que_vinte as
SELECT nome, descricao, valor_unit FROM produto where valor_unit > '20,00';


create view valor_pessoa as
SELECT nome, id_padaria, valor_total FROM pedido inner join pessoa on (pessoa.cpf = pedido.cpf) where valor_total > '30,00'


create view produto_trigo as
SELECT id_produto, id_padaria, nome, descricao, valor_unit, quantidade,foto 
FROM produto where descricao like '%Trigo%';



