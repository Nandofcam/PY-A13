CREATE DATABASE IF NOT EXISTS empresa;

USE empresa;

CREATE TABLE IF NOT EXISTS clientes (
id_cliente INT PRIMARY KEY AUTO_INCREMENT,
nome_cliente VARCHAR(100),
email_cliente VARCHAR(100),
telefone_cliente VARCHAR(17)
);

CREATE TABLE IF NOT EXISTS vendas (
id_vendas INT PRIMARY KEY AUTO_INCREMENT,
id_cliente INT NOT NULL,
data_venda DATE,
valor_venda DECIMAL (10, 2),
FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
);


INSERT INTO clientes (id_cliente, nome_cliente, email_cliente, telefone_cliente)
VALUES
    (1, 'João Silva', 'joao@email.com', '(11) 91234-5678'),
    (2, 'Maria Oliveira', 'maria@email.com', '(22) 99876-5432'),
    (3, 'Carlos Souza', 'carlos@email.com', '(33) 95555-1234');

INSERT INTO vendas (id_vendas, id_cliente, data_venda, valor_venda)
VALUES
    (101, 1, '2023-01-15', 150.50),
    (102, 2, '2023-02-20', 300.75),
    (103, 3, '2023-03-25', 200.00);