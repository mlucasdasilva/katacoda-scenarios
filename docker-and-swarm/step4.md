## Tarefa: Comandos docker swarm


Testes de commando do docker swarm

Verifica situação dos nós do cluster docker swarm:

`docker node ls`{{execute}}

Executa um serviço (conteiner):

`docker service create -p 80:80 --name meunginx nginx`{{execute}}

Lista serviços:

`docker service ls `{{execute}}

Lista os conteineres (tarefas) de um serviço específico:

`docker service ps meunginx `{{execute}}

Lista conteiners no host1:

`docker ps `{{execute T1}}

Lista conteiners no host1:

`docker ps `{{execute T2}}

Verifique a porta 80 no browser para ver a tela do nginx`

Para finalizar:

`docker service rm meunginx`{{execute}}

`docker service ls `{{execute}}

Verifica contêineres no host1:

`docker ps -a`{{execute T1}}

Verifica contêineres no host2:

`docker ps -a`{{execute T2}}
