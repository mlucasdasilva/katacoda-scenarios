## Tarefa: Montagem de um cluster swarm com dois nós (hosts)


Inicializa o primeiro nó do cluster. Comando executado no host 1:

`docker swarm init`{{execute T1}}

Obs: Algumas vezes é necessário especificar o ip ou interface da rede da rede que será utilizada para comunicação entre os nós do cluster.
Ex.: 
    docker swarm initi --advertise-addr eth0

Adiciona segundo node ao cluster. Comandos executados no host 2:

`token=$(ssh -o StrictHostKeyChecking=no [[HOST_IP]] "docker swarm join-token -q worker") && echo $token`{{execute T2}}

`docker swarm join [[HOST_IP]]:2377 --token $token`{{execute T2}}

Verificar cluster:

Executa no host1:

`docker node ls`{{execute T1}}

No host2 irá falhar, pois não é um gerente do cluster (não é um host manager):

`docker node ls`{{execute T2}}



## Outros comandos uteis para gerenciar os nós do cluster docker swarm

Para consultar o token utilizado na junção de novos nós WORKERS:

`docker swarm join-token worker`{{execute T1}}

Para consultar o token utilizado na junção de novos nós MANAGERS:

`docker swarm join-token manager`{{execute T1}}

Para promover o host 2 a manager

`docker node promote host02`{{execute T1}}

Veja os nodes ativos no cluster swarm. Note que agora o host 2 consta na coluna de MANAGER STATUS.

`docker node ls`{{execute T1}}

Para deixar um node em estado parado (drain). Isto vai encerrar todos os contêineres no modo swarm

`docker node update host02 --availability drain`{{execute T1}}

Para deixar um node em estado ativo.

`docker node update host02 --availability active`{{execute T1}}

Para rebaixar um node manager para worker

`docker node demote host02`{{execute T1}}

