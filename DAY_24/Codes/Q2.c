#include <stdio.h>
#include <pthread.h>

void* printThreadID(void* arg) {
    pthread_t tid = pthread_self();
    printf("Thread ID: %lu\n", tid);
    return NULL;
}

int main() {
    pthread_t threads[5];

    for (int i = 0; i < 5; i++) {
        pthread_create(&threads[i], NULL, printThreadID, NULL);
    }

    for (int i = 0; i < 5; i++) {
        pthread_join(threads[i], NULL);
    }

    printf("All 5 threads have finished.\n");
    return 0;
}

Answer:-
[sashini@Sashini ~]$ vi Q2.c
[sashini@Sashini ~]$ gcc Q2.c -o Q2
[sashini@Sashini ~]$ ./Q2
Thread ID: 139958791919296
Thread ID: 139958783526592
Thread ID: 139958775133888
Thread ID: 139958766741184
Thread ID: 139958689986240
All 5 threads have finished.