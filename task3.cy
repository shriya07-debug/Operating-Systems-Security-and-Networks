#include <stdio.h>

int main() {
	char name[50];
	int age;
	float height;

	printf("Enter your name: ");
	scanf("%s", &name);

	printf("Enter your age: ");
	scanf("%d", &age);

	prinf("Enter your height");
	scanf("%f", &height);

	printf("-- User Info --");
	printf("Name: %s\n", name);
	printf("Age: %d\n", age);
	printf("Height: %f\n", height);

	return 0;
}
