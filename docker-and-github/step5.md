Este é o passo 5.

## Tarefa

Configurar um build automático DevOps na nuvem (utilizando o CI/CD do docker-hub integrado ao github)

1) Na url do docker hub você deve:

-criar repositorio ou utilize o repositório "minhaweb" no docker hub para automatizar os builds de sua imagem
-conectar docker-hub ao github
-vincular repositorio do docker-hub ao repositorio do github
-save and build

2) Testar build

`docker run --name teste1 --rm -d -p 80:80  <<user-docker-hub>>/<<repositorio>>`


3) Provocando um novo build:

Agora vamos modificar o index.html

`cd /opt/docker/builders/minhaweb`{{execute}}

Edite e faça altrações no arquivo index.html

Após alterar o arquivo faça uma nova atualização no github

`git add . `{{execute}}

`git commit -m "atualizacao do index.html"`{{execute}}

`git push`{{execute}}

Acompanhar build no site docker hub

4) Testar

docker stop teste1
docker rm teste1

docker rmi <<user-docker-hub>>/<<repositorio>>
ou
docker pull <<user-docker-hub>>/<<repositorio>>

docker run --name teste1 --rm -d -p 80:80  <<user-docker-hub>>/<<repositorio>>

Navegue para a sua url local do nginx e veja alteração.



