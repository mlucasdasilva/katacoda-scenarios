## Tarefa: Comandos docker compose


Testes de aplicação utilizando docker-compose


`git clone https://github.com/mlucasdasilva/redmine.git`{{execute}}

`cd redmine`{{execute}}

`ls -lsha`{{execute}}

`cat docker-compose.yml`{{execute}}

`docker-compose up -d`{{execute}}

`docker-compose logs `{{execute}}

`docker ps`{{execute}}


Veja o sistema na porta inidicada pelo arquivo docker-compose.yml (ex.: porta 13000)

`cat docker-compose.yml`{{execute}}


Para finalizar (finaliza e remove todos os contêiners deste projeto):

`docker-compose down `{{execute}}

`docker ps`{{execute}}

`docker ps -a`{{execute}}


