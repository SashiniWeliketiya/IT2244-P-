#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/mman.h>
#include <sys/wait.h>

// Function to compute factorial
int factorial(int num) {
    int fact = 1;
    for (int i = 1; i <= num; i++) {
        fact *= i;
    }
    return fact;
}

int main() {
    int n, r;

    printf("Enter n: ");
    scanf("%d", &n);
    printf("Enter r: ");
    scanf("%d", &r);

    if (r > n || n < 0 || r < 0) {
        printf("Invalid input! Ensure that n >= r and both are non-negative.\n");
        return 1;
    }

    // Allocate shared memory for 3 integers: n!, r!, (n - r)!
    size_t size = sizeof(int) * 3;
    int *shared_mem = mmap(NULL, size, PROT_READ | PROT_WRITE,
                           MAP_SHARED | MAP_ANONYMOUS, -1, 0);

    if (shared_mem == MAP_FAILED) {
        perror("mmap failed");
        exit(1);
    }

    pid_t pid = fork();

    if (pid == 0) {
        // Child process
        printf("I am the child! My PID is %d\n", getpid());

        shared_mem[0] = factorial(n);
        shared_mem[1] = factorial(r);
        shared_mem[2] = factorial(n - r);

        printf("Child computed: n! = %d, r! = %d, (n-r)! = %d\n",
               shared_mem[0], shared_mem[1], shared_mem[2]);

        exit(0);
    } else if (pid > 0) {
        // Parent process
        wait(NULL);  // Wait for child to finish

        printf("I am the parent! My PID is %d\n", getpid());

        int nf = shared_mem[0];
        int rf = shared_mem[1];
        int nrf = shared_mem[2];

        int nCr = nf / (rf * nrf);
        int nPr = nf / nrf;

        printf("nCr = %d\n", nCr);
        printf("nPr = %d\n", nPr);

        munmap(shared_mem, size);  // Cleanup
    } else {
        perror("fork failed");
        exit(1);
    }

    return 0;
}

Output:-

[sashini@Sashini ~]$ vi Example.c
[sashini@Sashini ~]$ gcc Example.c -o Example
[sashini@Sashini ~]$ ./Example
Enter n: 5
Enter r: 2
I am the child! My PID is 129
Child computed: n! = 120, r! = 2, (n-r)! = 6
I am the parent! My PID is 128
nCr = 10
nPr = 20
