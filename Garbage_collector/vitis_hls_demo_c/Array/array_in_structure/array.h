#ifndef ARRAY_H
#define ARRAY_H

typedef struct {
    unsigned int data : 32;
} ArrayElement;

void myFunction(ArrayElement arr[]);

#endif

