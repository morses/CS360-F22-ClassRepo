#include <stdio.h>

void doubleItInPlace(int v)
{
    v = 2*v;
    printf("v = %d\n",v);
}

void doubleItInPlaceIndirectly(int * v)
{
    *v = 2*(*v);
    printf("v = %d\n",*v);
}

double foo(int a, double b)
{
    return a*2.0+b;
}

// Pass a function to a function
double bar(double (*fp)(int,double))
{
    double out = (*fp)(15,2);
}

int main(void)
{
    // primitive integer and float types
    unsigned int a = 5;
    short s = 0xaf05;
    double d = 45.3;
    char c = 'z';
    char c1 = 0x45;
    char c2 = (char)s;

    // pointers (derived types)
    char * pc = NULL;
    //pc = 0x5692832;
    pc = &c;            // & is the address-of operator
    //char value = *pc;   // * in this case is the dereference operator
    printf("pc = %p, *pc = %i, %c, %x\n",pc,*pc,*pc,*pc);
    unsigned int * pui = &a;

    // x is an automatic variable, allocated on the stack
    int x = 50;
    doubleItInPlace(x);
    printf("x = %d\n",x);

    doubleItInPlaceIndirectly(&x);
    printf("x = %d\n",x);

    // Pointer to function
    double (*fp)(int,double);
    fp = foo;
    double answer = (*fp)(2,10.0);
    printf("answer = %f\n",answer);
}