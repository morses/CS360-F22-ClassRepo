#include <stdio.h>
#include <stdlib.h> // need this for dynamic memory allocation

#define N 300

// Statically allocated array, set to zeros
float b[N];   // size has to be a constant or literal

int main(void)
{
    printf("b[56] = %f\n",b[56]);
    b[56] = 883.4;
    printf("b[56] = %f\n",b[56]);
    printf("array b occupies %ld bytes\n",N*sizeof(float));

    printf("b[0] = %f\n",*b);
    printf("b[56] = %f\n",*(b+56));     // pointer arithmetic

    // stack allocated array
    long long llarray[56];

    // dynamically allocated arrays
    // the size here of 480 can be determined at runtime
    double * arr = (double *)malloc(480*sizeof(double));
    arr[19] = 92393.2342;
    *(arr+20) = -7823.233e67;   // same as arr[20] = 
    free(arr);      // every malloc must be matched with a free to delete the memory
}