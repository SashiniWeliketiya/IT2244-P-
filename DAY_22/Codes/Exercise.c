Exersice1:
Area calculation program

Circle => C
Triangle => T
Square => S
Rectangle => R

Enter Your choice: C

Circle area calculation

Enter the radius: 20.9
Area is: 1372.28


#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <math.h>
#include <sys/wait.h>

typedef struct {
    char shape;
    double param1;
    double param2;
} ShapeData;

int main() {
    int pipefd1[2], pipefd2[2];
    pid_t pid;
    ShapeData data;
    double area;

    if (pipe(pipefd1) == -1 || pipe(pipefd2) == -1) {
        perror("pipe");
        exit(EXIT_FAILURE);
    }

    printf("Area calculation program\n");
    printf("\n\tCircle => C\n\tTriangle => T\n\tSquare => S\n\tRectangle => R\n");
    printf("\nEnter Your Choice : ");
    scanf(" %c", &data.shape);

    switch (data.shape) {
        case 'C':
        case 'c':
            printf("Enter radius: ");
            scanf("%lf", &data.param1);
            break;
        case 'T':
        case 't':
            printf("Enter base and height: ");
            scanf("%lf %lf", &data.param1, &data.param2);
            break;
        case 'S':
        case 's':
            printf("Enter side: ");
            scanf("%lf", &data.param1);
            break;
        case 'R':
        case 'r':
            printf("Enter length and breadth: ");
            scanf("%lf %lf", &data.param1, &data.param2);
            break;
        default:
            printf("Invalid shape selected.\n");
            exit(EXIT_FAILURE);
    }

    pid = fork();

    if (pid < 0) {
        perror("fork");
        exit(EXIT_FAILURE);
    }

    if (pid > 0) {
        // Parent process
        close(pipefd1[0]); // Close read end of pipe1
        close(pipefd2[1]); // Close write end of pipe2

        write(pipefd1[1], &data, sizeof(data));
        close(pipefd1[1]);

        read(pipefd2[0], &area, sizeof(area));
        close(pipefd2[0]);

        printf("Calculated Area: %.2lf\n", area);

        wait(NULL);
    } else {
        // Child process
        close(pipefd1[1]); // Close write end of pipe1
        close(pipefd2[0]); // Close read end of pipe2

        read(pipefd1[0], &data, sizeof(data));
        close(pipefd1[0]);

        switch (data.shape) {
            case 'C':
            case 'c':
                area = M_PI * data.param1 * data.param1;
                break;
            case 'T':
            case 't':
                area = 0.5 * data.param1 * data.param2;
                break;
            case 'S':
            case 's':
                area = data.param1 * data.param1;
                break;
            case 'R':
            case 'r':
                area = data.param1 * data.param2;
                break;
            default:
                area = -1;
                break;
        }

        write(pipefd2[1], &area, sizeof(area));
        close(pipefd2[1]);

        exit(EXIT_SUCCESS);
    }

    return 0;
}

