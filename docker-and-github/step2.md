Este é o passo 2.

## Tarefa

Este é um exemplo de utilização do github

1. Crie um repositório no github

https://docs.github.com/pt/github/creating-cloning-and-archiving-repositories/creating-a-new-repository

2. Altere o diretório de trabalho atual referente ao seu projeto local. 

`mkdir minhaweb`{{execute}}

`cd minhaweb`{{execute}}

4. Inicialize o diretório local como um repositório Git.

`git init -b main`{{execute}}

5. Adicione os arquivos ao novo repositório local. Isso faz stage deles para o primeiro commit.

# Adiciona os arquivos no repositório local e faz stage deles para commit. Para remover o stage de um arquivo, use "git reset HEAD YOUR-FILE".
`git add .`{{execute}}

6. Faça commit dos arquivos com stage em seu repositório local.

# Commits the tracked changes and prepares them to be pushed to a remote repository. Para remover esse commit e modificar o arquivo, use "git reset `git `commit -m "First commit"`{{execute}}

No topo da página Quick Setup (Configuração rápida) do repositório do GitHub, clique em  para copiar a URL do repositório remote.
Campo Copy remote repository URL (Copiar URL do repositório remote)
No Terminal, adicione a URL para o repositório remote onde será feito push do seu repositório local.
$ git remote add origin  <REMOTE_URL> 
# Sets the new remote
$ git remote -v
# Verifies the new remote URL
Push the changes (Faça push das alterações</0> no seu repositório local para o GitHub.
$ git push origin main
# Pushes the changes in your local repository up to the remote repository you specified as the origin

