


## Explorando o servidor docker

O docker é um dos ambinetes de execução de conteineres linux mais conhecidos.

O docker é composto por um componente servidor (o serviço docker) eu componente cliente (os comandos docker)

Para visualizar se o daemon do serviço docker está em execução:

`service docker status`{{execute}}

Atenção: Para sair do comando acima pode ser necessário que clique no terminal e digite "q" ou "control-C".

`q`{{execute}}

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


Podemos baixar outras imagens:

`docker pull mysql:8`{{execute}}

`docker pull alpine`{{execute}}

`docker pull nginx`{{execute}}

`docker pull redis`{{execute}}

`docker pull ubuntu:20.04`{{execute}}

`docker pull docker.io/library/ubuntu:20.04`{{execute}}

`docker pull debian:10`{{execute}}

`docker pull fedora:37`{{execute}}

`docker pull centos:centos8`{{execute}}

`docker pull quay.io/centos/centos:8`{{execute}}

`docker pull elasticsearch:8.2.0`{{execute}}

`docker pull docker.elastic.co/elasticsearch/elasticsearch:8.2.0`{{execute}}

Para verificar que as imagens agora estão armazenadas no ambiente local (cache local de imagens):

`docker image ls`{{execute}}

Consulta com filtro:

`docker image ls --filter reference="mysql":"8"`{{execute}}

É possivel que vários nomes sejam atríbuidos para uma mesma imagem, ou seja, um mesmo IMAGE ID.
Agora vamos atribuir o sinonimo (ou tag) "mysql:latest" para a imagem do "mysql:8"

`docker tag mysql:8 mysql:latest`{{execute}}

Veja que o mesmo IMAGE ID se repete em duas linhas. Há dois sinonimos para a mesma imagem. Estes sinonimos também são chamados de "tags".

`docker image ls --filter reference="mysql"`{{execute}}

É possível remover uma imagem da cache local com o comando abaixo. Mas a imagem somente será removida se não houver outros sinonimos (tags):

`docker rmi mysql:8`{{execute}}

Note que ainda há uma imagem para o IMAGE ID

`docker image ls --filter reference="mysql"`{{execute}}

Para garantir que a imagem seja realmente removida é possível utilizar o comando com o "IMAGE ID" no lugar do nome/tag da imagem e a opção "-f" ou "--force".

Vamos recriar o sinonimo e verificar como ficou:

`docker tag mysql:latest  mysql:8`{{execute}}

`docker image ls --filter reference="mysql"`{{execute}}

Agora vamos remover usando o IMAGE ID

Consultando o IMAGE ID:

`docker image ls --filter reference="mysql":"8" --format "{{.ID}}"`{{execute}}

Atribuindo a variavel IMAGE_ID:

`IMAGE_ID=$( docker image ls --filter reference="mysql":"8" --format "{{.ID}}" )`{{execute}}

Fazendo a remoção da imagem pelo IMAGE ID:

`docker rmi -f $IMAGE_ID`{{execute}}

Veja como ficou:

`docker image ls`{{execute}}

