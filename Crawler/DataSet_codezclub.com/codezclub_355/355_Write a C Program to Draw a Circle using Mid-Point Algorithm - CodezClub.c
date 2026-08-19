/* Source: https://www.codezclub.com/c-draw-circle-mid-point-algorithm/ */
/*  C Program to Draw a Circle using Mid-Point Algorithm  */

#include<graphics.h>
#include<conio.h>
#include<stdio.h>
void plotpoints(int x, int y, int cx, int cy) {
        putpixel(cx + x, cy + y, 4);
        putpixel(cx - x, cy + y, 4);
        putpixel(cx + x, cy - y, 4);
        putpixel(cx - x, cy - y, 4);
        putpixel(cx + y, cy + x, 4);
        putpixel(cx - y, cy + x, 4);
        putpixel(cx + y, cy - x, 4);
        putpixel(cx - y, cy - x, 4);
}
void main() {
        int cx, cy, x = 0, y, r, p;
        int gd = DETECT, gm = DETECT;
        clrscr();
        printf("Enter the center \n");
        scanf("%d%d", &cx, &cy);
        printf("Enter the radius : ");
        scanf("%d", &r);
        y = r;
        p = 1 - r;
        initgraph(&gd, &gm, "");
        cleardevice();
        while (x < y) {
                plotpoints(x, y, cx, cy);
                x++;
                if (p < 0)
                            p += 2 * x + 1; else {
                        y--;
                        p += 2 * (x - y) + 1;
                }
        }
        getch();
}