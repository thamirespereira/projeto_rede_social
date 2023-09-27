create database db_redesocial
use db_redesocial

tb_categorias {
    id int pk
    nome varchar
    descricao varchar
    post_id int > tb_posts.id
}

tb_usuarios {
    id int pk
    usuario varchar
    nome varchar
    email varchar
    senha varchar
    foto varchar
    data_nacimento date
    posts_id int > tb_posts.id
}

tb_posts {
    id int pk
    titulo varchar
    likes int
    compartilhamentos int
    data_postagem date
    comentarios varchar
}