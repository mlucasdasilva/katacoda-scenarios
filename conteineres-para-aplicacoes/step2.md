


## Execução da aplicação em conteiner


Vamos agora executar uma aplicação em conteiner.

Utilizaremos uma imagem já existente com a aplicação opensource "Redmine". Sua imagem encontra armazenada no "registry":

https://hub.docker.com/_/redmine

Executando a aplicação no modo apresentação:

`docker run -d -p 80:3000 --name container-redmine redmine`{{execute}}

Verificando que conteiner da aplicação está sendo executado:

`docker ps `{{execute}}


Você pode acessar a aplicação utilizando a porta 80. Clique no + e escolha a opção na lista mostrada: "View HTTP port 80 on Host 1".

Parando a aplicação:

`docker stop container-redmine`{{execute}}

Verificando:

`docker ps `{{execute}}

Verificando os conteineres parados (todos):

`docker ps -a`{{execute}}

Removendo

`docker rm container-redmine`{{execute}}


