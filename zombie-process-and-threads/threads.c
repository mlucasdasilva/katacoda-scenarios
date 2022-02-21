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