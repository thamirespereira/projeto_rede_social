create database db_redesocial;
use db_redesocial;


CREATE table tb_posts(
    id bigint auto_increment primary key,
    titulo varchar(255) not null,
    likes bigint not null,
    compartilhamentos bigint not null,
    data_postagem date not null,
    comentarios varchar(255)
);

CREATE table tb_usuarios(
    id bigint auto_increment primary key,
    usuario varchar(255) not null,
    nome varchar(255) not null,
    email varchar(255) not null,
    senha varchar(255) not null,
    foto varchar(255) not null,
    data_nascimento date not null,
    posts_id bigint,
    foreign key (posts_id) references tb_posts(id)
);

CREATE table td_categorias(
    id bigint auto_increment primary key,
    nome varchar(255) not null,
    descricao varchar(255) not null,
    post_id bigint,
    foreign key (post_id) references tb_posts(id)
);
