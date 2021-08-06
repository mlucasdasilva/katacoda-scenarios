## Tarefa: Inicializar cluster swarm


Inicializar

Comandos executados no host 1

`docker swarm init`{{execute T1}}

Adiciona segundo node ao cluster.

Comandos executados no host 2:

`token=$(ssh -o StrictHostKeyChecking=no [[HOST_IP]] "docker swarm join-token -q worker") && echo $token`{{execute T2}}

`docker swarm join [[HOST_IP]]:2377 --token $token`{{execute T2}}

Verificar cluster:

Executa no host1:

`docker node ls`{{execute T1}}

No host2 irá falhar pois não é um gerente do cluster (não é manager):

`docker node ls`{{execute T2}}


