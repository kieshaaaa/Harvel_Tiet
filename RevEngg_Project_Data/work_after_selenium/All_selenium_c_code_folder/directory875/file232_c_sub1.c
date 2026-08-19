#include <stdio.h>

int main() {
    int array[20], number_of_elements, temp, current_index, compare_index;
    printf("Enter the number of elements: ");
    scanf("%d", &number_of_elements);

    for(current_index = 0; current_index < number_of_elements; current_index++) {
        printf("Enter element %d: ", current_index + 1);
        scanf("%d", &array[current_index]);
    }

    for(current_index = 1; current_index < number_of_elements; current_index++) {
        temp = array[current_index];
        compare_index = current_index - 1;

        while(compare_index >= 0 && array[compare_index] > temp) {
            array[compare_index + 1] = array[compare_index];
            compare_index--;
        }
        array[compare_index + 1] = temp;
    }

    printf("Sorted array: ");
    for(current_index = 0; current_index < number_of_elements; current_index++) {
        printf("%d ", array[current_index]);
    }
    printf("\n");

    return 0;
}