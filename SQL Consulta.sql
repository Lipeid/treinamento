#CREATE DATABASE bradesco

#USE bradesco

/*CREATE TABLE clientes (

	codcliente INT PRIMARY KEY, 
	nome VARCHAR (50) NOT null

); */

#SELECT * FROM clientes;

/*CREATE TABLE vendedores(
	codvendedor INT PRIMARY KEY,
	nome VARCHAR(50) NOT null
	
);*/


/*CREATE TABLE vendas(
	codvendas INT PRIMARY KEY,
	datavenda DATE NOT NULL,
	
	codcliente INT,
	codvendedor INT 

)*/

#ALTER TABLE vendas ADD CONSTRAINT fk_vendas_codcliente FOREIGN KEY(codcliente) REFERENCES clientes(codcliente);

#ALTER TABLE vendas ADD CONSTRAINT fk_vendas_codvendedor FOREIGN KEY(codvendedor) REFERENCES vendedores (codvendedores);

#INSERT INTO clientes VALUES(1, 'Felipe');
#SELECT * FROM clientes
#INSERT INTO vendedores VALUES(1, 'Amauri');
#SELECT * FROM vendedores
#INSERT INTO vendas VALUES(10, "2023-04-27", 1, 1);
#SELECT * FROM vendas
#INSERT INTO clientes VALUES(9, 'Antonio');
#SELECT * FROM clientes
#INSERT INTO vendedores VALUES(9, 'Mariana');
#SELECT * FROM vendedores
#INSERT INTO vendas VALUES(18, "2023-01-01", 4, 7);
#SELECT * FROM vendas
#ALTER TABLE vendas ADD quantidade_quebrado VARCHAR(255);
#ALTER TABLE vendas MODIFY COLUMN quantidade_quebrado VARCHAR(100);
#ALTER TABLE vendas DROP COLUMN quantidade_quebrado;
#UPDATE vendedores SET nome = 'Carol Carolina' WHERE nome = 'Carol';
#UPDATE vendedores SET nome = 'Gabriela Gabs' WHERE nome ='Gabriela';

#UPDATE clientes  SET nome ='Felipe Duarte' WHERE nome = 'Felipe';
#UPDATE clientes SET nome = 'Gustavo Gusta' WHERE nome = 'Gustavo';
#UPDATE clientes SET nome ='Jonathan Jhow' WHERE nome ='Jonathan';
#uPDATE clientes SET nome ='João Jao' WHERE nome = 'João';
#uPDATE clientes SET nome ='Duarte Nuno' WHERE nome = 'Duarte';


# pode usar Full join ou right ou left
/*
SELECT * FROM vendas vd
INNER JOIN vendedores vs
ON vd.codvendedor = vs.codvendedor


SELECT cs.codcliente, COUNT(vs.datavenda) AS qte FROM vendas vs
	LEFT JOIN clientes cs
		ON vs.codcliente = cs.codcliente
	GROUP BY cs.codcliente
	ORDER BY qte asc
	LIMIT 10;
	
SELECT * FROM vendas;
*/


#Exercicios de manipulação
#1ª INNER JOIN VENDAS X CLIENTES
#2ª LEFT JOIN VENDAS X VENDEDORES
#3ª RIGHT JOIN VENDAS X VENDEDORES
#4ª INNER JOIN VENDAS X CLIENES E LEFT JOIN VENDAS X VENDEDORES
#5ª LEFT JOIN vendas X clientes E RIGHT JOIN vendas X vendedores, GROUP BY POR DATAVENDA, ORDER BY DESC POR DATAVENDA E UM LIMIT DE 1

/*SELECT * FROM vendas vd
INNER JOIN vendedores vs
ON vd.codvendedor = vs.codvendedor */


/*SELECT cs.codcliente, COUNT(vs.datavenda) AS qte FROM vendas vs
	inner join clientes cs
		ON vs.codcliente = cs.codcliente
	GROUP BY cs.codcliente
	ORDER BY qte asc
	LIMIT 10; */

#1ª INNER JOIN VENDAS X CLIENTES

SELECT * FROM vendas vd
INNER JOIN clientes cs
ON vd.codclientes = cs.codcliente 

#2ª LEFT JOIN VENDAS X VENDEDORES
SELECT * FROM vendas vd
INNER JOIN vendedores vs
ON vs.codvendedor = cs.codvendedor 
#3ª RIGHT JOIN VENDAS X VENDEDORES
SELECT * FROM vendas vd
INNER JOIN vendedores vd
ON vs.codvendedor = vd.codvendedor 

#4ª INNER JOIN VENDAS X CLIENES E LEFT JOIN VENDAS X VENDEDORES
SELECT * FROM vendas vs
INNER JOIN clientes cs
ON cs.codcliente = vs.codcliente 
LEFT JOIN vendedores vd
ON vs.codvendedor = vd.codvendedor

#5ª LEFT JOIN vendas X clientes E RIGHT JOIN vendas X vendedores, GROUP BY POR DATAVENDA, ORDER BY DESC POR DATAVENDA E UM LIMIT DE 1
SELECT vs.datavenda, COUNT(vs.codvendedor)
FROM vendas vs
LEFT JOIN clientes cs
ON cs.codcliente = vs.codcliente
RIGHT JOIN vendedores vd
ON vs.codvendedor = vd.codvendedor
GROUP BY vs.datavenda
ORDER BY DATAvenda DESC
LIMIT 1



INNER JOIN clientes cs
ON cs.codcliente = vs.codcliente 
LEFT JOIN vendedores vd
ON vs.codvendedor = vd.codvendedor


SELECT cs.codcliente, COUNT(vs.datavenda) AS qte FROM vendas vs
	inner join clientes cs
		ON vs.codcliente = cs.codcliente
	GROUP BY cs.codcliente
	ORDER BY qte asc
	LIMIT 10;