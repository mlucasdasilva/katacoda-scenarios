## Tarefa: Comandos docker swarm

Testes de commando do docker swarm

`docker node ls`{{execute}}

`docker service create -p 80:80 --name meunginx nginx`{{execute}}

`docker service ls `{{execute}}

`docker service ps nginx `{{execute}}

`docker ps `{{execute}}

`docker service rm meunginx`{{execute}}

`docker service ls `{{execute}}

`docker ps -a`{{execute}}
