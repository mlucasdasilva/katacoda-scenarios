Este é o passo 3.

## Tarefa: Armazenar imagem na nuvem no docker-hub

1) Pre requisito:

Crie sua conta pessoal no https://hub.docker.com/

2) Para armazenar sua imagem no docker hub

Criar um alias (tag) para a sua imagem:

`docker tag minhaweb:latest <sua conta pessoal no docker hub>/minhaweb:0.2`{{execute}}

Ex.: docker tag minhaweb:latest mlucasdasilva/minhaweb:0.2

Veja que agora possuem duas imagens:

`docker image ls  | grep minhaweb`{{execute}}

Indicar para o docker local sua autenticação no docker hub:

`docker login`{{execute}}

Fazer upload da sua imagem:

`docker push <sua conta pessoal no docker hub>/minhaweb:0.2`{{execute}}

Ex.: docker push mlucasdasilva/minhaweb:0.2

3) Para fazer uso da imagem armazenada

Basta utilizar o nome da sua imagem em qualque computador com docker:

docker rum -it  ....  <sua conta pessoal no docker hub>/minhaweb:<tag de versao>

ex: Caso queira testa uma imagem feita por mlucasdasilva:

docker run -d -p 80:80 --name web2 mlucasdasilva/minhaweb:0.2



