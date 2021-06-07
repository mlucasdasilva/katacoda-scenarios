

## Tarefa: Executar container gcc

Para executar um conteiner contendo o compilador da linguagem C , o gcc, utiliz o comando:

`docker run -it gcc bash`{{execute}}



Atualize pacotes e instale editores de texto no conteiner gcc:

`apt-get update`{{execute}}

`apt-get install -y vim`{{execute}}

`apt-get install -y nano`{{execute}}

