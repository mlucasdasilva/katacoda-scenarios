

## Tarefa: Executar processo e testar zombie


Crie um diretorio de trabalho:

`mkdir work`{{execute}}

`cd work`{{execute}}



Crie um arquivo contendo o programa fonte zombie.c em linguagem C.

Você pode utilizar os comandos de edição `vi` ou `nano` e copiar o trecho abaixo. 

`vi zombie.c`{{execute}}

`nano zombie.c`{{execute}}

Copie este trecho no arquivo:

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


Ou, por exemplo, com o seguinte comando:

`cat <<EOF >zombie.c
    include <stdio.h>
    include <stdlib.h>
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
EOF`{{execute}}



`cat <<EOF >zombie.c
\#include <stdio.h>
\#include <stdlib.h>
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
EOF`{{execute}}


`cat <<EOF >zombie.c
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
EOF`{{execute}}



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

