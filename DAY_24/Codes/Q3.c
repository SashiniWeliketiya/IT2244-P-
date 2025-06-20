#include <stdio.h>
#include <pthread.h>
#include <unistd.h>

void* printNumbers(void* arg) {
    for (int i = 1; i <= 10; i++) {
        printf("%d\n", i);
        sleep(1);  // Sleep for 1 second
    }
    return NULL;
}

int main() {
    pthread_t t;

    pthread_create(&t, NULL, printNumbers, NULL);
    pthread_join(t, NULL);

    printf("Number printing thread finished.\n");
    return 0;
}

Answer:-
[sashini@Sashini ~]$ vi Q3.c
[sashini@Sashini ~]$ gcc Q3.c -o Q3
[sashini@Sashini ~]$ ./Q3
1
2
3
4
5
6
7
8
9
10
Number printing thread finished.