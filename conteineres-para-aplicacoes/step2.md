

## Executnado a aplicação com rede virtual e banco de dados em conteiner


`docker network create network-lab`{{execute}}

`docker network ls`{{execute}}

`docker network inspect network-lab`{{execute}}

`docker run -d --name container-mysql --network network-lab -e MYSQL_USER=redmine -e MYSQL_PASSWORD=secret -e MYSQL_DATABASE=redmine -e MYSQL_RANDOM_ROOT_PASSWORD=1 mysql:5.7`{{execute}}

`docker ps`{{execute}}

`docker container inspect container-mysql`{{execute}}

`docker logs container-mysql`{{execute}}

`docker run -d --name container-redmine -p 80:3000 --network network-lab -e REDMINE_DB_MYSQL=container-mysql -e REDMINE_DB_USERNAME=redmine -e REDMINE_DB_PASSWORD=secret redmine`{{execute}}



