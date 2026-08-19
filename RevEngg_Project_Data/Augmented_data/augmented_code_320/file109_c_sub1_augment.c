#include<stdio.h>

int main() {
    float speed, time, distance;

    printf("Enter the Speed in Kms: \n");
    scanf("%f", &speed);

    printf("Enter the Time in hours: \n");
    scanf("%f", &time);

    distance = speed * time;

    printf("Distance travelled by a vehicle is: %.2f Km \n", distance);

    return 0;
}