

Este é um exemplo de execução de **comandos docker**

Executar contêiner `minhaweb` a parti da imagem `nginx` (docker.io/library/nginx:latest):

`docker run -d -p 80:80 --name minhaweb nginx`{{execute}}

Para ver os conêineres em execução:

`docker ps`{{execute}}

Para ver as imagens de contêiners já presentes na cache local:

`docker image ls`{{execute}}

Para parar o contêiner `minhaweb` :

`docker stop minhaweb`{{execute}}

Verifique se há contêiners em execução:

`docker ps`{{execute}}

Para verificar todos os contêineres "parados" e "em execução":

`docker ps -a`{{execute}}

Para remover o contêiner `minhaweb`:

`docker rm minhaweb`{{execute}}

Verifique se há contêiners "parados" ou "em execução":

`docker ps`{{execute}}

Para remover uma imagen:

`docker rmi nginx`{{execute}}

Verifique se a imagem `nginx` foi removida da cache local:

`docker image ls`{{execute}}


