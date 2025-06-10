//Exercise

//1.read two input from user(//parent process)
//name:
//reg no:
//age:


//2.print the output from the child(//child process)
//name:abc
// no: 2022/ict/01
//age:25

#include<string.h>
#include<stdio.h>
#include<stdlib.h> 
#include<unistd.h> 
#define MSGSIZE 16 

char* name;
char* regno;
char* age;

int main(){

char inbuf[MSGSIZE];
int p[2],i;
	
if(pipe(p) < 0)
exit(1);

int f=fork();

	
if(f==0){
	printf("I am child");
	for(i=0; i<3; i++){
		/*read pipe*/
		read(p[0],inbuf,MSGSIZE); //read(filedes,message,message size)
		
	}
	printf("%s\n",inbuf);
}
else{
	printf("name: ");
    scanf("%s",&name);
    printf("reg no: ");
    scanf("%s",&regno);
    printf("age: ");
    scanf("%d",&age);
	
	write(p[1],name,MSGSIZE); 
	write(p[1],regno,MSGSIZE); 
	write(p[1],age,MSGSIZE); 
}	
	
return 0;
}






