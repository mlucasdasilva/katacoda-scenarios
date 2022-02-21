## Tarefa: Construir imagens de conteineres

Construir uma imagem de página web utilizando o software nginx de hospegem e um arquivo estático index.html

# Será feito um 'build' de uma imagem docker utilizando o servidor http nginx

1) Organizar arquivo em diretórios. Como a imagem se chamará minhaweb-manual, criaremos um sub-diretório com mesmo nome.

`mkdir -p /opt/docker/builders/minhaweb-manual`{{execute}}

`cd /opt/docker/builders`{{execute}}

`cd minhaweb-manual`{{execute}}


2) Criação de arquivo docker (Dockerfile) que é necessário em todas as construções ("build") de imagens de conteiner docker

Crie o arquivo Dockerfile para realizar o "build" de imagem, com este comando:

`cat <<EOF >Dockerfile
FROM nginx
ADD index.html /usr/share/nginx/html
EOF`{{execute}}


Crie um arquivo de conteúdo index.html que será utilizado na imagem, com este comando:

`cat <<EOF >/opt/docker/builders/minhaweb-manual/index.html
    <html>
      <head>
       <title>ALO VOCE!</title>
      </head>
      <body>
        <p> Oi! Bom Dia. <p/>
        <p> Alo Voce !!!!! Fala aew !!!  <p/>
        <p> Oi! Bom Dia. <p/>
        <p> Alo Voce !!!!! Fala aew !!!  <p/>
        <p> Oi! Bom Dia. <p/>
        <p> Alo Voce !!!!! Fala aew !!!  <p/>
        <p> Oi! Bom Dia. <p/>
        <p> Alo Voce !!!!! Fala aew !!!  <p/>
        <p> Oi! Bom Dia. <p/>
        <p> Alo Voce !!!!! Fala aew !!!  <p/>
      </body>
    </html>
EOF`{{execute}}


Verifique como ficou o arquivo:

`cat index.html`{{execute}}


3) Para fazer build

Para fazer o build use o comando abaixo. 
Note que há um "./" ao final do comando indicando que o diretório de trabalho é o diretório atual.
É necessário que o arquivo Dockerfile exista no diretório de trabalho do build.

`docker build -t minhaweb-manual ./`{{execute}}


4) Para consultar as imagens armazenadas e verificar que existe uma imagem chamada minhaweb-manual:

`docker image ls`{{execute}}

5) Para Executar a imagem

`docker run -d -p 80:80 --name web1 minhaweb-manual`{{execute}}

Acesse a "Porta 80" e veja a página criada no site.

Atenção: Normalmente é necesário que faça atualização da página no browser (refresh) para que a nova página apareça.

6) Para consultar containers em execução

`docker ps`{{execute}}

7) Para encerrar use o comando `docker stop [nome do container]`

`docker stop web1`{{execute}}

8) Para remover conteiner use o comando `docker rm [nome do container]`

`docker rm web1`{{execute}}

Verifique que não está mais ativa a porta 80


