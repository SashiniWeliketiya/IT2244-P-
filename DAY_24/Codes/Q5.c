#include <stdio.h>
#include <pthread.h>

// Global counter
int counter = 0;

// Mutex for synchronization
pthread_mutex_t lock;

// Function to increment counter 100 times
void* increment(void* arg) {
    for (int i = 0; i < 100; i++) {
        pthread_mutex_lock(&lock);
        counter++;
        pthread_mutex_unlock(&lock);
    }
    return NULL;
}

// Function to decrement counter 100 times
void* decrement(void* arg) {
    for (int i = 0; i < 100; i++) {
        pthread_mutex_lock(&lock);
        counter--;
        pthread_mutex_unlock(&lock);
    }
    return NULL;
}

int main() {
    pthread_t t1, t2;

    // Initialize the mutex
    pthread_mutex_init(&lock, NULL);

    // Create threads
    pthread_create(&t1, NULL, increment, NULL);
    pthread_create(&t2, NULL, decrement, NULL);

    // Wait for threads to complete
    pthread_join(t1, NULL);
    pthread_join(t2, NULL);

    // Destroy the mutex
    pthread_mutex_destroy(&lock);

    // Print the final value of counter
    printf("Final counter value: %d\n", counter);

    return 0;
}




Answer:-

[sashini@Sashini ~]$ vi Q5.c
[sashini@Sashini ~]$ gcc Q5.c -o Q5
[sashini@Sashini ~]$ ./Q5
Square of 5 is 25