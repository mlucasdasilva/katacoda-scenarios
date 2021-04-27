Este é o passo 5.

## Tarefa

Configurar um build automático DevOps na nuvem (utilizando o CI/CD do docker-hub integrado ao github)

1) Na url do docker hub você deve:

-criar repositorio ou utilize o repositório "minhaweb" no docker hub para automatizar os builds de sua imagem
-conectar docker-hub ao github
-vincular repositorio do docker-hub ao repositorio do github
-save and build


`export DOCKER_HUB_USER  ; read -p "Digite o seu usuario do docker hub:" DOCKER_HUB_USER`{{execute}}

`echo $DOCKER_HUB_USER`{{execute}}



2) Testar build

Execute o comando abaixo para executar um container utilizando o a imagem gerada automaticamente:

`docker run --name teste1 --rm -d -p 80:80 ${DOCKER_HUB_USER}/minhaweb`{{execute}}

Para ver o comando executado:

`echo "COMANDO EXECUATDO: docker run --name teste1 --rm -d -p 80:80 ${DOCKER_HUB_USER}/minhaweb"`{{execute}}

Parar e remover o container:

`docker stop teste1`{{execute}}

`docker rm teste1`{{execute}}


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

`docker rmi ${DOCKER_HUB_USER}/minhaweb`{{execute}}

ou

`docker pull ${DOCKER_HUB_USER}/minhaweb`{{execute}}

`docker run --name teste1 --rm -d -p 80:80  ${DOCKER_HUB_USER}/minhaweb`{{execute}}

Navegue acesse no browser na Porta 80 e veja alteração.



