create database db_redesocial;
use db_redesocial;

CREATE table tb_posts(
    id bigint auto_increment primary key,
    titulo varchar(255) not null,
    likes bigint,
    compartilhamentos bigint,
    data_postagem date not null,
    comentarios varchar(255),
    id_usuario bigint,
    foreign key (id_usuario) references tb_usuarios(id),
    id_categorias bigint,
    foreign key (id_categorias) references td_categorias(id)
);

CREATE table tb_usuarios(
    id bigint auto_increment primary key,
    usuario varchar(255) not null,
    nome varchar(255) not null,
    email varchar(255) not null,
    senha varchar(255) not null,
    foto varchar(255),
    data_nascimento date not null
);

CREATE table td_categorias(
    id bigint auto_increment primary key,
    nome varchar(255) not null,
    descricao varchar(255) not null
);