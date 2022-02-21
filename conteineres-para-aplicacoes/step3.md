

## Execute a aplicação com rede virtual e banco de dados em conteiner


Para criar uma rede virtual de conteineres:

`docker network create network-lab`{{execute}}

Para verificar as redes virtuais de conteineres existentes:

`docker network ls`{{execute}}

Para visualizar a configuração da rede, incluindo sua faixa de IPs:

`docker network inspect network-lab`{{execute}}

Para executar uma imagem de banco de dados mysql na rede virtual já criada utilize o comando abaixo. Note que há parametros utilizados no comando para configurar o banco de dados. É possivel consultar a documenta desta imagem mysql acessando o docker hub.

`docker run -d --name container-mysql --network network-lab -e MYSQL_USER=redmine -e MYSQL_PASSWORD=secret -e MYSQL_DATABASE=redmine -e MYSQL_RANDOM_ROOT_PASSWORD=1 mysql:5.7`{{execute}}

Verifique que o conteiner com o banco de dados mysql está rodando:

`docker ps`{{execute}}

Para visualizar informações sobre a configuração da conteiner , incluindo sua rede e IP:

`docker container inspect container-mysql`{{execute}}

Para visualizar os logs de um container:

`docker logs container-mysql`{{execute}}

E para executar a aplicação redmine em conteiner agora utilizando um banco de dados mysql:

`docker run -d --name container-redmine -p 80:3000 --network network-lab -e REDMINE_DB_MYSQL=container-mysql -e REDMINE_DB_USERNAME=redmine -e REDMINE_DB_PASSWORD=secret redmine`{{execute}}

Verifique que agora há 2 conteineres rodando:

`docker ps`{{execute}}

Para visualizar os logs do conteiner da aplicação redmine:

`docker logs container-redmine`{{execute}}

Aguarde um pouco até a aplicação concluir sua inicialização e então poderá acessar a aplicação na porta 80 da mesma forma que fez antes.

Agora, quiser, você pode também explorar os comandos que aprendeu.

Aqui encerramos o cenário!

FIM
