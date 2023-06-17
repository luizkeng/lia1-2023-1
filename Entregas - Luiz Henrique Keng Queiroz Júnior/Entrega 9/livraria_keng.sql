{\rtf1\ansi\ansicpg1252\cocoartf2639
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\paperw11900\paperh16840\margl1440\margr1440\vieww25860\viewh10380\viewkind0
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0

\f0\fs24 \cf0 CREATE TABLE livro \
( \
 liv_id SERIAL PRIMARY KEY,  \
 liv_titulo VARCHAR(100),  \
 liv_isbn VARCHAR(90),  \
 liv_ano INT,  \
); \
\
CREATE TABLE venda \
( \
 ven_id SERIAL PRIMARY KEY,  \
 ven_frete FLOAT,  \
 ven_valor FLOAT,  \
 liv_id INT,  \
 cli_id INT,  \
); \
\
CREATE TABLE cliente \
( \
 cli_id SERIAL PRIMARY KEY,  \
 cli_nome VARCHAR(100),  \
 cli_endereco VARCHAR(140),  \
); \
\
ALTER TABLE venda ADD FOREIGN KEY(liv_id) REFERENCES livro (liv_id);\
ALTER TABLE venda ADD FOREIGN KEY(cli_id) REFERENCES cliente (cli_id);\
\
INSERT INTO livro (liv_titulo, liv_isbn, liv_ano) VALUES ('Agape', '12', 2013), ('The Bone Collector', '3545', 1999), ('Fortaleza Digital', '3142', 2015);\
\
INSERT INTO cliente (cli_nome, cli_endereco) VALUES ('John', 'Rua 45'), ('Steve', 'Rua Paris'), ('Marcos', 'Estrada Roma'), ('Fabio', 'Avenida Otawa\'92);
\fs22 \

\fs24 \
INSERT INTO venda (ven_frete, ven_valor, liv_id, cli_id) VALUES (10.0, 35.0, 1, 1), (18.0, 42.0, 1, 2), (22.0, 42.0, 3, 2), (38.5, 21.0, 2, 3), (7.5, 45.0, 3, 2);\
\
}