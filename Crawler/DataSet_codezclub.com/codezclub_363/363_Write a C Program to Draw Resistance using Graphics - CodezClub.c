/* Source: https://www.codezclub.com/c-draw-resistance-using-graphics/ */
/*  C Program to Draw Resistance using Graphics  */

#include<stdio.h>
#include<conio.h>
#include<graphics.h>

void main() {
   int gd = DETECT, gm;
   initgraph(&gd, &gm, "c:\\tc\\bgi");

   line(90, 100, 100, 100);
   line(100, 100, 110, 120);
   line(110, 120, 120, 100);
   line(120, 100, 130, 120);
   line(130, 120, 140, 100);
   line(140, 100, 150, 120);
   line(150, 120, 160, 100);
   line(160, 100, 170, 100);
   outtextxy(100, 130, "Resisitor");

   getch();
   closegraph();
}