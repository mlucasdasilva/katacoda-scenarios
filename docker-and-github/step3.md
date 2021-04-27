Este é o passo 3.

## Tarefa:

Armazenar imagem na nuvem no docker-hub

1) Pre requisito:

Caso ainda não tenha, você deve criar sua conta pessoal no https://hub.docker.com/

2) Para armazenar sua imagem no docker hub

Criar um alias (tag) para a sua imagem:

`docker tag minhaweb-manual:latest <sua conta pessoal no docker hub>/minhaweb-manual:0.1`

Ex.: docker tag minhaweb-manual:latest mlucasdasilva/minhaweb-manual:0.1

Veja que agora possuem duas imagens:

`docker image ls  | grep minhaweb-manual`{{execute}}

Obs.: Na verdade só há uma imagem com 2 nomes, mas os mesmos IDs.

Indicar para o docker local sua autenticação no docker hub:

`docker login`{{execute}}

Fazer upload da sua imagem:

`docker push <sua conta pessoal no docker hub>/minhaweb-manual:0.1`

Ex.: docker push mlucasdasilva/minhaweb-manual:0.1

3) Para fazer uso da imagem armazenada

Basta utilizar o nome da sua imagem em qualque computador com docker:

`docker rum -it  ....  <sua conta pessoal no docker hub>/minhaweb-manual:0.1`

ex: Caso queira testa uma imagem feita por mlucasdasilva:

`docker run -d -p 80:80 --name web2 mlucasdasilva/minhaweb-manual:0.1`

4) Para remover os conteineres mesmo que estejam em execução:

`docker rm -f $(docker ps -a -q)`{{execute}}

5) Na url do docker hub você pode verificar que exite uma imagem armazenada com o nome de minhaweb-manual

Va para a url https://hub.docker.com/ e busque sua imagem

