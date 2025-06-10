//write - process 1


#include<stdio.h>
#include<stdlib.h>
#include<string.h>
#include<sys/ipc.h>
#include<sys/shm.h>

#define SHM_SIZE 1024 //Size of shared memory segment

int main(){
	key_t key = ftok("shmfile",1065); //Generate unique key
	int shmid = shmget(key, SHM_SIZE, IPC_CREAT | 0666);//Create shared memory segment
	if (shmid == -1){
		perror("shmget");
		exit(1);
	}
	
	char *shmaddr = (char*) shmat(shmid, NULL, 0);//Attach to shared memory
	if (shmaddr == (char*) -1){
		perror("shamt");
		exit(1);
	}
	
	printf("Write Data: ");
	fgets(shmaddr, SHM_SIZE, stdin); //write data to shared memory
	
	printf("Data written in memory: %s\n", shmaddr);
	
	shmdt(shmaddr);  //Detach from shared memory
	
	
	return 0;
}

//reader - process 2

#include<stdio.h>
#include<stdlib.h>
#include<sys/ipc.h>
#include<sys/shm.h>

#define SHM_SIZE 1024 //Size of shared memory segment

int main(){
	key_t key = ftok("shmfile",1065); //Generate unique key
	int shmid = shmget(key, SHM_SIZE, IPC_CREAT | 0666);//Access shared memory segment
	if (shmid == -1){
		perror("shmget");
		exit(1);
	}
	
	char *shmaddr = (char*) shmat(shmid, NULL, 0);//Attach to shared memory
	if (shmaddr == (char*) -1){
		perror("shamt");
		exit(1);
	}
	
	printf("Data read from memory: %s\n", shmaddr);//Read data from shared memory
	
	shmdt(shmaddr);  //Detach from shared memory
	
	shmctl(shmid, IPC_RMID, NULL); //Remove share memory segment
	
	return 0;
}


output:-


[sashini@Sashini ~]$ touch shmfile
[sashini@Sashini ~]$ vi write.c
[sashini@Sashini ~]$ gcc write.c -o write
[sashini@Sashini ~]$ ./write
Write Data: Sashini
Data written in memory: Sashini

[sashini@Sashini ~]$ vi read.c
[sashini@Sashini ~]$ gcc read.c -o read
[sashini@Sashini ~]$ ./read
Data read from memory: Sashini


