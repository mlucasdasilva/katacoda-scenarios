## Tarefa: Build automático na nuvem

Configurar um build automático DevOps na nuvem.

Para isto utilizaremos a automatização de builds própria do docker-hub integrado ao github.

Isto permite a implementação de um cenário simplificado de CI/CD em container.

CI/CD - Continuous Integration / Continuous Delivery ( Integração Contínua / Entrega Contínua )


1) Na url do docker hub você deve:

-criar repositorio ou utilize o repositório "minhaweb" no docker hub para automatizar os builds de sua imagem
-conectar docker-hub ao github
-vincular repositorio do docker-hub ao repositorio do github
-save and build

Configure a variavel de ambiente com o seu usuário do docker hub:

`export DOCKER_HUB_USER  ; read -p "Digite o seu usuario do docker hub: " DOCKER_HUB_USER`{{execute}}

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

Remova a versão anterior de imagem do cache/repositório local ou force a atualização do cache/repositório local de imagens.

Para remover a versão anterior de imagem do cache/repositório local:

`docker rmi ${DOCKER_HUB_USER}/minhaweb`{{execute}}

ou para forçar a atualização do cache/repositório local de imagens:

`docker pull ${DOCKER_HUB_USER}/minhaweb`{{execute}}

Execute a nova versão de imagem:

`docker run --name teste1 --rm -d -p 80:80  ${DOCKER_HUB_USER}/minhaweb`{{execute}}

Navegue acesse no browser na Porta 80 e veja alteração.

Obs: O browser pode apresentar a versão anterior da tela que fica no cache do browser. Tente fazer "refresh" na tela do browser para atualizar.

