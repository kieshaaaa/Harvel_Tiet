#include <stdio.h>

#define MAX 50

int queue[MAX], rear = -1, front = -1;

void insert(int data) {
    if (rear == MAX - 1) printf("Queue Full\n");
    else {
        if (front == -1) front = 0;
        queue[++rear] = data;
        printf("Inserted %d\n", data);
    }
}

void delete() {
    if (front == -1 || front > rear) printf("Queue Empty\n");
    else printf("Deleted %d\n", queue[front++]);
}

void display() {
    if (front == -1) printf("Queue is empty\n");
    else {
        printf("Queue: ");
        for (int i = front; i <= rear; i++) printf("%d ", queue[i]);
        printf("\n");
    }
}

int main() {
    int choice, data;
    while (1) {
        printf("\n1.Insert \n2.Delete \n3.Display \n4.Exit\nSelect operation: ");
        scanf("%d", &choice);
        switch (choice) {
            case 1:
                printf("Enter data: ");
                scanf("%d", &data);
                insert(data);
                break;
            case 2:
                delete();
                break;
            case 3:
                display();
                break;
            case 4:
                printf("Goodbye!\n");
                return 0;
            default:
                printf("Invalid selection\n");
        }
    }
}