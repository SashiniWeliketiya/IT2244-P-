#include<stdio.h>
#include<stdlib.h>
#include<unistd.h>
#define MSGSIZE 16

char* msg1 = "hello, world #1";
char* msg2 = "hello, world #2";
char* msg3 = "hello, world #3";

int main() //p-file descripter and it is array of size 2to readand write
{
	char inbuf[MSGSIZE];
	int p[2], i;
	
	if(pipe(p) < 0)
		exit(1);
	
	/*continued */
	/*write pipe */
	
	write(p[1],msg1,MSGSIZE); //write(filedes,message,message size)
	write(p[1],msg2,MSGSIZE); //write(filedes,message,message size)
	write(p[1],msg3,MSGSIZE); //write(filedes,message,message size)
	
	
	for(i=0; i<3; i++){
		/*read pipe*/
		read(p[0],inbuf,MSGSIZE); //read(filedes,message,message size)
		printf("%s\n",inbuf);
	}
	
	return 0;
}

Output:-

[sashini@Sashini ~]$ vi pipe.c
[sashini@Sashini ~]$ gcc pipe.c -o pipe
[sashini@Sashini ~]$ ./pipe
hello, world #1
hello, world #2
hello, world #3
