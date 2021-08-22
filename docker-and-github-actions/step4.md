## Tarefa: Utilização do github

Este é um exemplo de utilização do github

1) Crie um repositório no github

Para isto você vai precisar de uma conta no github.com
Caso ainda não tenha uma conta no github.com você precisará cria-la.

Faça login na sua conta e, ATENÇÃO, crie um repositorio CHAMADO DE "minhaweb". Crie como público e inicie com arquivos README.md

Caso queira se aprofundar veja aqui neste link a documentação de criação de repositório no github:

[docs.github.com](https://docs.github.com/pt/github/creating-cloning-and-archiving-repositories/creating-a-new-repository) - Como criar um repositório no github. Disponível também em lingua portuguesa.


2) Utilizaremos a variável de ambiente `URL_GITHUB` para facilitar a execução automática dos comandos.

Verifique o endereço correto do seu repositório no github e configure a variavel de ambiente com os comandos a seguir:

`export URL_GITHUB  ; read -p "Digite o endereco do novo repositorio criado no github: " URL_GITHUB`{{execute}}

`echo $URL_GITHUB`{{execute}}

`echo "git ls-remote ${URL_GITHUB}"`{{execute}}

`git ls-remote ${URL_GITHUB}`{{execute}}

Exemplo: `git ls-remote https://github.com/mlucasdasilva/minhaweb.git`


3) Incicialize o diretório

Posicione no diretório raiz:

`cd /opt/docker/builders/`{{execute}}

Faça um clone do repositório github:

`git clone ${URL_GITHUB}`{{execute}}

`echo "COMANDO: git clone ${URL_GITHUB}"`{{execute}}

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

Para realizar o "push" das mudanças feitas no seu repositório local enviando para o repositório remoto faça:

`git push`{{execute}}

ATENÇÃO! O github mudou a forma de autenticação e não permite mais o uso de password neste comando. Você deve criar um "Personal access tokens"

Para criar um Personal access tokens utilize o link: https://github.com/settings/tokens

Ou se preferir, navegando: Clique no seu avatar (normalmente no canto superior a direita); Selecione "Settings", depois "Developer settings" e depois "Personal access token"

Uma vez na tela de "Personal access token" você deve pressionar o botão "Generate new token", selecionar a o box "Repo" e então o botão "Generate token"


8) Voce pode verificar na url do github que os arquivo estão lá armazenados.


