#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <math.h>   // has an "include guard" to prevent multiple inclusions
//#include "colormap.h"

#define PI 3.14159
#define TO_RADIANS(x) ((x) * 0.01745329)

#ifdef _WIN64
    #define WINDOWS 45
#elif _WIN32
    #define WINDOWS 32
#elif __APPLE__
    #define WINDOWS 0
#endif

int fun(int);
int fun2(int, double);

/* Hello World! */
//int main(int argc, char * argv[])
int main(void)
{
    float a = PI;
    float b = TO_RADIANS(a);
    float c = a + b;
    printf("Hello World!\n");
    printf("c = %f",c);
    //printf("%d",fun2(6,4));
    return 0;
}

int fun(int a)
{
    return 1;
}
