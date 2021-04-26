Este é o passo 5.

## Tarefa

Congigurar um build automático DevOps na nuvem (utilizando o CI/CD do docker-hub integrado ao github)

1) Na url do docker hub você deve:

-criar repositorio no docker hub para sua imagem
-conectar docker-hub ao github
-vincular repositorio do docker-hub ao repositorio do github
-save and build


2) Testar build


`docker run --name teste1 --rm -d -p 80:80  <<user-docker-hub>>/<<repositorio>>`


3) Provocando um novo build:

Agora vamos modificar o index.html

cd <diretorio do repositorio git clone>

vi index.html

git add .
git commit -m "atualizacao do index.html"
git push

Acompanhar build no site docker hub

4) Testar

docker stop teste1
docker rm teste1

docker rmi <<user-docker-hub>>/<<repositorio>>
ou
docker pull <<user-docker-hub>>/<<repositorio>>

docker run --name teste1 --rm -d -p 80:80  <<user-docker-hub>>/<<repositorio>>

Navegue para a sua url local do nginx e veja alteração.



