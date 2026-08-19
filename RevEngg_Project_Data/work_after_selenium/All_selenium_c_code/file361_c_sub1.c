#include <stdio.h>

#define MAX 50

int queue[MAX];
int rear = -1;
int front = -1;

void enqueue(int value) {
    if (rear < MAX - 1) {
        if (front == -1) front = 0;
        rear++;
        queue[rear] = value;
        printf("Inserted: %d\n", value);
    } else {
        printf("Queue Overflow\n");
    }
}

void dequeue() {
    if (front == -1 || front > rear) {
        printf("Queue Underflow\n");
    } else {
        printf("Deleted: %d\n", queue[front]);
        front++;
    }
}

void showQueue() {
    if (front == -1) {
        printf("Queue is empty\n");
    } else {
        printf("Queue: ");
        for (int i = front; i <= rear; i++) {
            printf("%d ", queue[i]);
        }
        printf("\n");
    }
}

int main() {
    int choice, value;
    do {
        printf("\n1. Enqueue \n2. Dequeue \n3. Display Queue \n4. Quit\nEnter your choice: ");
        scanf("%d", &choice);
        switch (choice) {
            case 1:
                printf("Enter value to insert: ");
                scanf("%d", &value);
                enqueue(value);
                break;
            case 2:
                dequeue();
                break;
            case 3:
                showQueue();
                break;
            case 4:
                printf("Exiting...\n");
                break;
            default:
                printf("Invalid choice\n");
        }
    } while (choice != 4);

    return 0;
}