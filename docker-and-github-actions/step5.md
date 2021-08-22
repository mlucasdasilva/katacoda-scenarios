## Tarefa: Build automático na nuvem


Configurar um build automático DevOps na nuvem. 

Para isto utilizaremos a automatização de builds própria do Github Actions.

Após build as imagens serão armazenamento nos Registrys do DockerHub (docker.io) e do Github (ghcr.io).

Isto permite a implementação de um cenário simplificado de CI/CD utilizando container.

CI/CD - Continuous Integration / Continuous Delivery ( Integração Contínua / Entrega Contínua )


1) Na url do github você deve CONFIGURAR MANUALMENTE o seguinte:

-Utilizar o repositório "minhaweb" no github para automatizar os builds de sua imagem.

-Criar duas "secrets" no repositório "minhaweb" para armazenar seu usuário e senha do dockerhub, com os seguintes nomes:

DOCKER_PASSWORD

DOCKER_USERNAME 



2) Configurando o github actions para o build automático:

Vamos para o diretório que contém a cópia do repositório github "minhaweb"

`cd /opt/docker/builders/minhaweb`{{execute}}

Agora vamos adicionar o arquivo de configuração actions no repositório com o seguinte comando:

`mkdir -p /opt/docker/builders/minhaweb/.github/workflows/`{{execute}}

`cp /tmp/docker-publish.yml /opt/docker/builders/minhaweb/.github/workflows/`{{execute}}

Após adicionar o arquivo verifique se consta como modificado no git:

`git status`{{execute}}

Estando tudo certo, faça uma nova atualização no repositório remoto github

`git add . `{{execute}}

`git commit -m "atualizacao do index.html"`{{execute}}

`git push`{{execute}}

Acompanhar build no site git hub (opção actions)





3) Utilizaremos a variável de ambiente `DOCKER_HUB_USER` para facilitar a execução automática dos comandos.

Esta variavel já foi configurada em passos anteriores. Confira o seu valor com o seguinte comando:

`echo $DOCKER_HUB_USER`{{execute}}

Caso queira reconfigurar a variavel de ambiente com o seu usuário do docker hub, utilize o comando:

`export DOCKER_HUB_USER  ; read -p "Digite o seu usuario do docker hub: " DOCKER_HUB_USER`{{execute}}





4) Testar que o "build" automático foi realizado com sucesso

Execute o comando abaixo para executar um container utilizando o a imagem gerada automaticamente:

`docker run --name teste1 --rm -d -p 80:80 ${DOCKER_HUB_USER}/minhaweb`{{execute}}

Para ver o comando executado:

`echo "COMANDO EXECUATDO: docker run --name teste1 --rm -d -p 80:80 ${DOCKER_HUB_USER}/minhaweb"`{{execute}}

Parar e remover o container:

`docker stop teste1`{{execute}}

`docker rm teste1`{{execute}}



5) Provocando um novo build automátivo:

Agora vamos modificar o index.html

`cd /opt/docker/builders/minhaweb`{{execute}}

Edite e faça alterações no arquivo index.html

Você pode utilizar os comandos de edição `vi` ou `nano`. 

Ou, por exemplo, com o seguinte comando:

`cat <<EOF >index.html
    <html>
      <head>
       <title>ALO VOCE!</title>
      </head>
      <body>
        <p> ###### Oi! BOA NOITE ######<p/>
        <p> Alo Voce !!!!! Fala aew !!!<p/>
        <p> ###### Oi! BOA NOITE ######<p/>
        <p> Alo Voce !!!!! Fala aew !!!<p/>
        <p> ###### Oi! BOA NOITE ######<p/>
        <p> Alo Voce !!!!! Fala aew !!!<p/>
        <p> ###### Oi! BOA NOITE ######<p/>
        <p> Alo Voce !!!!! Fala aew !!!<p/>
        <p> ###### Oi! BOA NOITE ######<p/>
        <p> Alo Voce !!!!! Fala aew !!!<p/>
      </body>
    </html>
EOF`{{execute}}


Após alterar verifique se consta como modificado no git:

`git add . `{{execute}}

Estando tudo certo, faça uma nova atualização no repositório remoto github

`git add . `{{execute}}

`git commit -m "atualizacao do index.html"`{{execute}}

`git push`{{execute}}

Acompanhar build no site git hub (opção actions)




6) Testar

Remova a versão anterior de imagem do cache/repositório local ou force a atualização do cache/repositório local de imagens.

Para remover a versão anterior de imagem do cache/repositório local:

`docker rmi ${DOCKER_HUB_USER}/minhaweb`{{execute}}

ou para forçar a atualização do cache/repositório local de imagens:

`docker pull ${DOCKER_HUB_USER}/minhaweb`{{execute}}

Execute a nova versão de imagem:

`docker run --name teste1 --rm -d -p 80:80  ${DOCKER_HUB_USER}/minhaweb`{{execute}}

Navegue acesse no browser na Porta 80 e veja alteração.

Obs: O browser pode apresentar a versão anterior da tela que fica no cache do browser. Tente fazer "refresh" na tela do browser para atualizar.

Para encerrar os testes pare o container (que será removido automaticamente devido a opção --rm utilizada na sua execução)

`docker stop teste1`{{execute}}

