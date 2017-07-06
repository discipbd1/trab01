SELECT id_cidade,
 id_bairro,
 estado.nome,
 bairro.nome_bairro
FROM estado RIGHT OUTER JOIN bairro
ON (bairro.id_cidade = estado.id_estado);



SELECT id_cidade,
 id_bairro,
 estado.nome,
 bairro.nome_bairro
FROM estado LEFT OUTER JOIN bairro
ON (bairro.id_cidade = estado.id_estado);



SELECT id_padaria,
 id_pedido,
 produto.nome,
 produtos_pedido.qtd
FROM produto RIGHT OUTER JOIN produtos_pedido
ON (produtos_pedido.id_produto = produto.id_padaria);

SELECT id_padaria,
 id_pedido,
 produto.nome,
 produtos_pedido.qtd
FROM produto LEFT OUTER JOIN produtos_pedido
ON (produtos_pedido.id_produto = produto.id_padaria);
