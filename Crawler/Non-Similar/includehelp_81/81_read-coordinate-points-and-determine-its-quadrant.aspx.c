/* Source: https://www.includehelp.com/c-programs/read-coordinate-points-and-determine-its-quadrant.aspx */
// C program to read coordinate points
// and determine its quadrant

#include <stdio.h>

int determineQuadrant(int X, int Y)
{
    if (X == 0 && Y == 0)
        return 0;
    else if (X > 0 && Y > 0)
        return 1;
    else if (X < 0 && Y > 0)
        return 2;
    else if (X < 0 && Y < 0)
        return 3;
    else if (X > 0 && Y < 0)
        return 4;
    return -1;
}

int main()
{
    int X;
    int Y;

    int ret = 0;

    printf("Enter the value of X: ");
    scanf("%d", &X);

    printf("Enter the value of Y: ");
    scanf("%d", &Y);

    ret = determineQuadrant(X, Y);

    if (ret == 0)
        printf("Point (%d, %d) lies at the origin\n", X, Y);
    else if (ret == 1)
        printf("Point (%d, %d) lies in the First quadrant\n", X, Y);
    else if (ret == 2)
        printf("Point (%d, %d) lies in the Second quadrant\n", X, Y);
    else if (ret == 3)
        printf("Point (%d, %d) lies in the Third quadrant\n", X, Y);
    else if (ret == 4)
        printf("Point (%d, %d) lies in the Fourth quadrant\n", X, Y);

    return 0;
}
