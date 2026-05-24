CREATE TABLE produtos (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(150) NOT NULL,
    categoria VARCHAR(100),
    fabricante VARCHAR(120),
    preco NUMERIC(10,2),
    quantidade_estoque INTEGER DEFAULT 0
);

CREATE TABLE farmacias_parceiras (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(150) NOT NULL,
    cnpj VARCHAR(20),
    cidade VARCHAR(100),
    estado VARCHAR(2)
);

CREATE TABLE pedidos (
    id SERIAL PRIMARY KEY,
    farmacia_id INTEGER REFERENCES farmacias_parceiras(id),
    data_pedido TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    status VARCHAR(50)
);