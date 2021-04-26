Este é o passo 4.

## Tarefa

Este é um exemplo de utilização do github

1) Crie um repositório no github

[docs.github.com](https://docs.github.com/pt/github/creating-cloning-and-archiving-repositories/creating-a-new-repository) - Como criar um repositório no github. Disponível também em lingua portuguesa.

2) Altere o diretório de trabalho atual referente ao seu projeto local. 

`mkdir minhaweb`{{execute}}

`cd minhaweb`{{execute}}

3) Inicialize o diretório local como um repositório Git.

Vamos utilizar o cliente em interface de linha de comando (CLI) git

Verifique qual a versão de git que está intalado

`git version`{{execute}}

Em versão do git mais recente, a partir da 2.28.0, use:

`git init -b main`{{execute}}

Para versões anteriores a 2.28.0, use:

`git init`{{execute}}

`git checkout -b main`{{execute}}

4) Adicione os arquivos ao novo repositório local. Isso faz stage deles para o primeiro commit.

Este comando abaixo adiciona os arquivos no repositório local e faz stage deles para commit.

`git add .`{{execute}}

Obs.: Para remover o stage de um arquivo, use "git reset HEAD YOUR-FILE".

5) Faça commit dos arquivos com stage em seu repositório local.

Na maioria das instalações é necessário configurar primeiro o email:

`git config --global user.email "you@example.com"`{{execute}}

Para confirmar/comprometer (fazer "commit") das mudanças e prepara-las para "upload", ou melhor, para um "push" no repository remoto github use o comando:

`git commit -m "First commit"`{{execute}}

Obs.: Para remover esse commit e modificar o arquivo, use "git reset --soft HEAD~1", faça o commit e adicione o arquivo novamente.

6) Copie o endereço do seu repositório git:

Exemplo: https://github.com/mlucasdasilva/katacoda-scenarios.git

7) No Terminal, adicione a URL para o repositório remote onde será feito push do seu repositório local.

Para configurar o repositório remoto no seu diretório local use o comando:

`git remote add origin <REMOTE_URL>`{{execute}}

Para verificar a configuração do repositório remoto faça:

`git remote -v`{{execute}}

8) Faça "push" das alterações no seu repositório local para o GitHub.

Para realizar o "push" das mudanças feitas no seu repositório local enviando para o repositório remoto e deixar configurado como default "origin main" faça:

`git push -u origin main`{{execute}}

