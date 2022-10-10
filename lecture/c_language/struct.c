#include <stdio.h>

struct Stuff
{
	int a;
	unsigned char b;
	double c[300];
};

// Using a typedef to "rename" our struct
typedef struct {
	char name[20];
	int age;
} Person;

typedef int Int;

void processStuff(struct Stuff * x)
{
	printf("x->a = %d\n",x->a);
	printf("x->b = %c\n",x->b);
	printf("x->c[45] = %f\n",(*x).c[45]);
}

int main(void)
{
	Int my_variable = 8;

	// type identifier;
	struct Stuff myStuff;
	printf("sizeof(struct Stuff) = %ld\n",sizeof(struct Stuff));
	printf("myStuff.b = %x\n",(unsigned int)(myStuff.b));
	myStuff.a = 54;
	myStuff.b = 'b';
	(myStuff.c)[45]= 67.5;
	
	printf("sizeof(unsigned char) = %ld\n",sizeof(unsigned char));
	printf("sizeof(int) = %ld\n",sizeof(int));
	printf("sizeof(double) = %ld\n",sizeof(double));

	printf("myStuff.b = %c\n",myStuff.b);
	int i = 305;
	printf("myStuff.c[305] = %f\n",myStuff.c[i]);
	myStuff.c[400] = 30;
	myStuff.c[i] = 30;
	myStuff.c[-i] = 666;

	// parameter passing
	processStuff(&myStuff);
}
