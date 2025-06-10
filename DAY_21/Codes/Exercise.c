//Exercise

//1.read two input from user(//parent process)
//name:
//reg no:
//age:


//2.print the output from the child(//child process)
//name:abc
// no: 2022/ict/01
//age:25

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/wait.h>

int main() {
    char name[50];
    char regno[20];
    int age;

    // Taking input in the parent process
    printf("Enter Name: ");
    scanf("%s", name);
    printf("Enter Reg No: ");
    scanf("%s", regno);
    printf("Enter Age: ");
    scanf("%d", &age);

    pid_t pid = fork();  // Creating the child process

    if (pid < 0) {
        printf("Fork failed!\n");
        return 1;
    }
    else if (pid == 0) { // Child process
        printf("\nChild Process Output:\n");
        printf("Name: %s\n", name);
        printf("Reg No: %s\n", regno);
        printf("Age: %d\n", age);
    }
    else { // Parent process
        wait(NULL); // Wait for child to finish
        printf("\nParent Process Completed!\n");
    }

    return 0;
}



[sashini@Sashini ~]$ vi pipex.c
[sashini@Sashini ~]$ gcc pipex.c -o pipex
[sashini@Sashini ~]$ ./pipex
Enter Name: Sashini
Enter Reg No: 2021ict65
Enter Age: 25

Child Process Output:
Name: Sashini
Reg No: 2021ict65
Age: 25
