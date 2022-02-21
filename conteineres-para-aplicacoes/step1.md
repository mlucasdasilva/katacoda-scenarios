


## Explorando o servidor docker

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

Uma aplicação pode ser executada em conteiner a partir de uma imagem configurada, construida e armazenada previamente no "registry".

Como exemplo, nos próximos passos utilizaremos uma imagem já criada com uma aplicação.

Utilizaremos como a aplicação opensource "Redmine". Sua imagem encontra armazada no "registry":

https://hub.docker.com/_/redmine

Para baixar a imagem para a cache local utilize o comando:

`docker pull redmine`{{execute}}

ou, o comando abaixo utilizando a url completa, que corresponde a mesma imagem:

`docker pull docker.io/redmine:latest`{{execute}}

Para verificar que a imagens agora está armazenadas no ambiente local (cache local de imagens):

`docker image ls`{{execute}}

Também é possível remover uma imagem da cache local, por exemplo com o comando abaix. Caso exista imagem com este nome, a imgem será remvida:

`docker rmi mysql:8`{{execute}}
