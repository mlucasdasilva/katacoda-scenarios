Este é o passo 2.

## Tarefa:

Construir uma imagem nginx com um arquivo estático índex.html

# Será feito um 'build' de uma imagem docker com nginx

1) Organizar arquivo em diretórios (imagem se chamara minhaweb)

`mkdir /opt/docker`{{execute}}

`mkdir /opt/docker/builders`{{execute}}

`mkdir /opt/docker/builders/minhaweb`{{execute}}

`cd /opt/docker/builders/minhaweb`{{execute}}


2) Criação de arquivo docker (Dockerfile) utilizado na construção de imagens

`cat <<EOF >/opt/docker/builders/minhaweb/Dockerfile
FROM nginx
ADD index.html /usr/share/nginx/html
EOF`{{execute}}


`cat <<EOF >index.html
<html>
<head>
<title>ALO VOCE!</title>
</head>
<body>
<p> Alo Voce !!!!! Fala aew !!!  <p/>
</body>
</html>
EOF`{{execute}}


3) Para fazer build

`docker build -t minhaweb .`{{execute}}

4) Para consultar

`docker image ls`{{execute}}

5) Para Executar a imagem

`docker run -d -p 80:80 --name web1  minhaweb`{{execute}}

6) Para consultar containers em execução

`docker ps`{{execute}}

7) Para encerrar use: docker stop <nome do container>

`docker stop web1`{{execute}}

8) Para remover conteiner use: docker rm <nome do container>

`docker rm web1`{{execute}}



