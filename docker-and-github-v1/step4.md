## Tarefa: Utilização do github

Este é um exemplo de utilização do github

1) Crie um repositório no github

Para isto você vai precisar de uma conta no github.com
Caso ainda não tenha uma conta no github.com você precisará cria-la.

Faça login na sua conta e crie um repositorio chamado de "minhaweb". Crie como público e inicie com arquivos README.md

Caso queira se aprofundar veja aqui neste link a documentação de criação de repositório no github:

[docs.github.com](https://docs.github.com/pt/github/creating-cloning-and-archiving-repositories/creating-a-new-repository) - Como criar um repositório no github. Disponível também em lingua portuguesa.

2) Incicialize o diretório

Posicione no diretório raiz:

`cd /opt/docker/builders/`{{execute}}

Faça um clone do repositório github:

`git clone <<endereço do repositório minhaweb criado no github>>`

Exemplo: `git clone https://github.com/mlucasdasilva/minhaweb.git`



4) Adicione os arquivos ao novo repositório local. Isso faz stage deles para o primeiro commit.

Este comando abaixo copia os arquivos do sub-diretório minhaweb-manual para este novo sub-diretório minhaweb:

`cp -pr /opt/docker/builders/minhaweb-manual/* /opt/docker/builders/minhaweb`{{execute}}

Se posicione no novo diretório baixado do github:

`cd /opt/docker/builders/minhaweb`{{execute}}

Este comando abaixo adiciona os arquivos no repositório local e faz stage deles para commit.

`git add .`{{execute}}

Obs.: Para remover o stage de um arquivo, use "git reset HEAD YOUR-FILE".

5) Faça commit dos arquivos com stage em seu repositório local.

Na maioria das instalações é necessário configurar primeiro o email:

`git config --global user.email "you@example.com"`{{execute}}

Para confirmar/comprometer (fazer "commit") das mudanças e prepara-las para "upload", ou melhor, para um "push" no repository remoto github use o comando:

`git commit -m "First commit"`{{execute}}

Obs.: Para remover esse commit e modificar o arquivo, use "git reset --soft HEAD~1", faça o commit e adicione o arquivo novamente.

6) Para verificar a configuração do repositório remoto faça:

`git remote -v`{{execute}}

7) Faça "push" das alterações no seu repositório local para o GitHub.

Para realizar o "push" das mudanças feitas no seu repositório local enviando para o repositório remoto e deixar configurado como default "origin main" faça:

`git push`{{execute}}

`git push -u origin main`{{execute}}


8) Voce pode verificar na url do github que os arquivo estão lá armazenados.

