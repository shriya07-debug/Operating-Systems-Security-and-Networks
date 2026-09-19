#include <stdio.h>

int hello();

int main(){
	int result = hello();
	printf("function return:%d\n", result);
	return 0;
}

	int hello(){
	return 25;
}
