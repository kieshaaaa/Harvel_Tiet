#include <stdio.h>

#define MAX 50

int queue[MAX], rear = -1, front = -1;

void add(int item) {
    if (rear >= MAX - 1) printf("Queue Full\n");
    else {
        if (front == -1) front = 0;
        queue[++rear] = item;
        printf("Added %d\n", item);
    }
}

void removeItem() {
    if (front == -1 || front > rear) printf("Queue Empty\n");
    else printf("Removed %d\n", queue[front++]);
}

void printQueue() {
    if (front == -1) printf("Queue is empty\n");
    else {
        printf("Queue: ");
        for (int i = front; i <= rear; i++) printf("%d ", queue[i]);
        printf("\n");
    }
}

int main() {
    int choice, item;
    while (1) {
        printf("\n1. Add to Queue \n2. Remove from Queue \n3. Show Queue \n4. Exit\nChoose an option: ");
        scanf("%d", &choice);
        switch (choice) {
            case 1:
                printf("Enter number: ");
                scanf("%d", &item);
                add(item);
                break;
            case 2:
                removeItem();
                break;
            case 3:
                printQueue();
                break;
            case 4:
                return 0;
            default:
                printf("Try again.\n");
        }
    }
}