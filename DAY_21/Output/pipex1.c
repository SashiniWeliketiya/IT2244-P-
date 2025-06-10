
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <math.h>

void calculate_areas(float radius, float base, float height, float side, float *area_circle, float *area_triangle, float *area_square) {
*area_circle = M_PI * radius * radius;
*area_triangle = 0.5 * base * height;
*area_square = side * side;
}

	int main() {
	int pipe1[2]; // Parent to Child
	int pipe2[2]; // Child to Parent

	pipe(pipe1);
	pipe(pipe2);

	pid_t pid = fork();

	if (pid == 0) 
	{
		// Child process
		close(pipe1[1]); // Close write end of pipe1
		close(pipe2[0]); // Close read end of pipe2

		float data[4];  // radius, base, height, side
		read(pipe1[0], data, sizeof(data));

		float area_circle, area_triangle, area_square;
		calculate_areas(data[0], data[1], data[2], data[3], &area_circle, &area_triangle, &area_square);

		float result[3] = {area_circle, area_triangle, area_square};
		write(pipe2[1], result, sizeof(result));
	} 
	else 
	{
		// Parent process
		close(pipe1[0]); // Close read end of pipe1
		close(pipe2[1]); // Close write end of pipe2

		float radius, base, height, side;
		printf("Enter radius of circle: ");
		scanf("%f", &radius);

		printf("Enter base and height of triangle: ");
		scanf("%f %f", &base, &height);

		printf("Enter side of square: ");
		scanf("%f", &side);

		float inputs[4] = {radius, base, height, side};
		write(pipe1[1], inputs, sizeof(inputs));

		float results[3]; // To hold areas
		read(pipe2[0], results, sizeof(results));

		printf("\n--- Area Results from Child ---\n");
		printf("Circle: %.2f\n", results[0]);
		printf("Triangle: %.2f\n", results[1]);
		printf("Square: %.2f\n", results[2]);
	}

	return 0;
}

Output:-

[sashini@Sashini ~]$ vi pipex1.c
[sashini@Sashini ~]$ gcc pipex1.c -o pipex1
[sashini@Sashini ~]$ ./pipex1
Enter radius of circle: 5
Enter base and height of triangle: 4 5
Enter side of square: 5

--- Area Results from Child ---
Circle: 78.54
Triangle: 10.00
Square: 25.00
		