

## Tarefa: Executar processo e testar zombie


Crie um diretorio de trabalho:

`mkdir work`{{execute}}

`cd work`{{execute}}



Crie um arquivo contendo o programa fonte zombie.c em linguagem C.

Você pode utilizar os comandos de edição `vi` ou `nano` e copiar o trecho abaixo. 

`vi zombie.c`{{copy}}

`nano zombie.c`{{copy}}

Copie e cole no arquivo zonmbie.c este trecho abaixo:

    #include <stdio.h>
    #include <stdlib.h>
    int main(void)
    {
            pid_t pid;
            printf("parent : %d\n", getpid());
            pid = fork();
            if (pid == 0) {
                    printf("child : %d\n", getpid());
                    sleep(2);
                    printf("child exit\n");
                    exit(1);
            }
            /* in parent */
            while (1)
            {
                    sleep(1);
            }
    }


Grave o arquivo e saia do editor.

Verifique como ficou o arquivo:

`cat zombie.c`{{execute}}

Verifique os arquivos no seu diretório:

`ls -lsh`{{execute}}


Para compilar o arquivo fonte faça:

`gcc -o zombie zombie.c`{{execute}}

Verifique que agora existe o executável chamado zombie:

`ls -lsh`{{execute}}

Execute veja o que ocorre:

`./zombie`{{execute}}

Interrompa o processo com ^C

Execute agora em backgroud

`./zombie &`{{execute}}

Veja os processos

`ps -ef`{{execute}}

