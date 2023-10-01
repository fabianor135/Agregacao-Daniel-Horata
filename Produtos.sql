SELECT * FROM Produtos;

/*Relatório informando quantos produtos estão cadastrados:*/

SELECT COUNT(*) AS TotalDeProdutosCadastrados FROM Produtos;


/*Relatório informando o preço médio dos produtos:*/

SELECT AVG(preço) AS PreçoMédioDosProdutos FROM Produtos;


/*Média dos preços dos produtos em 2 grupos: perecíveis e não perecíveis:*/

SELECT perecível, AVG(preço) AS PreçoMédio
FROM Produtos
GROUP BY perecível;

/*Média dos preços dos produtos agrupados pelo nome do produto:*/

SELECT nome, AVG(preço) AS PreçoMédio
FROM Produtos
GROUP BY nome;


/*Media dos preços e total em estoque dos produtos:*/

SELECT AVG(preço) AS PreçoMédio, SUM(estoque) AS TotalEmEstoque
FROM Produtos;

/*Selcionado o nome, marca e quantidade em estoque do produto mais caro:*/

SELECT nome, marca, estoque
FROM Produtos
WHERE preço = (SELECT MAX(preço) FROM Produtos);


/*Selecionado os produtos com preço acima da média:*/

SELECT *
FROM Produtos
WHERE preço > (SELECT AVG(preço) FROM Produtos);


/*Seleciona a quantidade de produtos de cada nacionalidade:*/

SELECT nacionalidade, COUNT(*) AS QuantidadeDeProdutos
FROM Produtos
GROUP BY nacionalidade;


