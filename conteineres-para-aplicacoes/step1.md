

## Explorando um pouco o servidor docker

O docker é um dos ambinetes de execução de conteineres linux mais conhecidos.

O docker é composto por um componente servidor (o serviço docker) eu componente cliente (os comandos docker)

Para visualizar se o daemon do serviço docker está em execução:

`service docker status`{{execute}}

Para verificar as versões do servidor e do cliente docker:

`docker version`{{execute}}

Os conteineres são excutados a partir de imagens de conteineres já existenstes.

Para verificar as imagens armazenadas no ambiente local (cache local de imagens):

`docker image ls`{{execute}}

As imagens também podem ser armazenadas em repositórios chamados de "registry" que podem ser acessados pela rede.

O docker hub é talvez o "registry" mais conhecido e utilizado: 

https://hub.docker.com

Para checar que não há nenhum conteiner em execução neste momento:

`docker ps`{{execute}}

Vamos agora executar uma aplicação em conteiner.

Para isso, podemos utilizar uma imagem já existente com a aplicação.

Utilizaremos como exemplo a aplicação open source "Redmine". Sua imagem encontra armazada no registry:

https://hub.docker.com/_/redmine

Para baixar a imagem para a cache local:

`docker pull redmine`{{execute}}

ou

`docker pull docker.io/redmine:latest`{{execute}}

Para verificar que a imagens agora está armazenadas no ambiente local (cache local de imagens):

`docker image ls`{{execute}}

Executando a aplicação no modo apresentação:

`docker run -d -p 80:3000 --name container-redmine redmine`{{execute}}

Verificando que conteiner da aplicação está sendo executado:

`docker ps `{{execute}}

Parando a aplicação:

`docker stop container-redmine`{{execute}}

Verificando:

`docker ps `{{execute}}

Verificando os conteineres parados (todos):

`docker ps -a`{{execute}}

Removendo

`docker rm container-redmine`{{execute}}


