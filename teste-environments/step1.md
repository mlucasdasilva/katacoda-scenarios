## Tarefa: Inicializar cluster swarm


Inicializar

`docker swarm init`{{execute}}


Adiciona segundo node ao cluster

`token=$(ssh -o StrictHostKeyChecking=no [[HOST_IP]] "docker swarm join-token -q worker") && echo $token`{{execute}}

`docker swarm join [[HOST_IP]]:2377 --token $token`{{execute}}





Execução de comandos básicos docker

Para executar um conteiner chamado "web1" utilizando a imagem "nginx" que é o nome curto para "docker.io/library/nginx" que será baixada automaticamente:

`docker run -d -p 80:80 --name web1 nginx`{{execute}}

Obs.: Acesse a aba "Porta 80" e veja a página default do nginx que está sendo apresentada pelo conteiner.

Para ver os conteineres em execução:

`docker ps`{{execute}}

Para ver as imagens baixadas e armazenadas na cache local:

`docker image ls`{{execute}}

Para parar o container:

`docker stop web1`{{execute}}

Para verificar que não está em execução:

`docker ps`{{execute}}

Para ver todos (-a , --all) os conteineres incluindo o conteineres parados:

`docker ps -a`{{execute}}

Para remover o conteiner:

`docker rm web1`{{execute}}


