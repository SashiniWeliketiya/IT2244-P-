
#include <stdio.h>
#include <pthread.h>

//function to be executed by the thread
void* print_message(void* arg)
{
   char* message = (char*)arg;
   printf("%s\n",message);
   return NULL;

}

int main(){
   pthread_t threads[3];
   char* messages[] = {
	   "Thread 1 says hi!",
	   "Thread 2 says hello!",
	   "Thread 3 says hey!"
   };
   
   for (int i=0; i<3; i++){
	   pthread_create(&threads[i],NULL,print_message,messages[i]);
   }
   
   for (int i=0; i<3; i++){
	   pthread_join(threads[i],NULL);
   }
   
   printf("All threads done.\n");
   
   return 0;
}


Answer:-

[2021ict65@fedora ~]$ vi thread_ex1.c
[2021ict65@fedora ~]$ gcc thread_ex1.c -o thread_ex1
[2021ict65@fedora ~]$ ./thread_ex1
Thread 1 says hi!
Thread 2 says hello!
Thread 3 says hey!
All threads done.





