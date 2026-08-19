#include <stdio.h>

int main() {
    float timeParts[3]; // 0: hour, 1: minute, 2: second
    const char *labels[] = {"hour (HH)", "minute (MM)", "second (SS)"};
    
    for(int i = 0; i < 3; i++) {
        printf("Enter %s: ", labels[i]);
        scanf("%f", &timeParts[i]);
    }
    
    if(timeParts[0] >= 0 && timeParts[0] <= 23 && timeParts[1] >= 0 && timeParts[1] <= 59 && timeParts[2] >= 0 && timeParts[2] <= 59) {
        printf("Entered time is %02d:%02d:%02d\n", (int)timeParts[0], (int)timeParts[1], (int)timeParts[2]);
    } else {
        printf("Invalid time entered.\n");
    }
    
    return 0;
}