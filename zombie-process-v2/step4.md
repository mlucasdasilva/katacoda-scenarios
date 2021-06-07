

## Tarefa: Executar threads


Utilize o diretório work:

`cd ~/work`{{execute}}



Crie um arquivo contendo o programa fonte zombie.c em linguagem C.

Você pode utilizar os comandos de edição `vi` ou `nano` e copiar o trecho abaixo. 

`vi threads.c`{{copy}}

`nano threads.c`{{copy}}

Copie e cole no arquivo zonmbie.c este trecho abaixo:

    #include <stdio.h>
    #include <stdlib.h>
    #include <unistd.h>
    #include <pthread.h>
    // Let us create a global variable to change it in threads
    int g = 0;
    //
    // The function to be executed by all threads
    //
    void *myThread(void *vargp)
    {
        // Store the value argument passed to this thread
        int *myid = (int *)vargp;
        // Change global variable
        ++g;
        // Print the argument, static and global variables
        printf("Thread ID: %d, Global: %d\n", *myid, g);
        // Keep thread running 10 seconds
        sleep(10);
        printf("myThread %d exit\n", *myid);
        pthread_exit(NULL);
    }
    //
    // Main
    //
    int main()
    {
        int i;
        pthread_t tid[3];
        printf("\n");
        // Let us create three threads
        for (i = 0; i < 3; i++)
        {
            pthread_create(&tid[i], NULL, myThread, (void *)&tid[i]);
        }
        // Keep main running 20 seconds
        sleep(20);
        // Exit
        printf("main exit\n");
        return 0;
    }


Grave o arquivo e saia do editor.

Verifique como ficou o arquivo:

`cat threads.c`{{execute}}

Verifique os arquivos no seu diretório:

`ls -lsh`{{execute}}


Para compilar o arquivo fonte faça:

`gcc -o threads threads.c -lpthread`{{execute}}

Verifique que agora existe o executável chamado threads:

`ls -lsh`{{execute}}

Execute veja o que ocorre:

`./threads`{{execute}}

Interrompa o processo com ^C

Execute agora em backgroud

`./threads &`{{execute}}

Veja os processos e threads:

`ps -ef H -L`{{execute}}


