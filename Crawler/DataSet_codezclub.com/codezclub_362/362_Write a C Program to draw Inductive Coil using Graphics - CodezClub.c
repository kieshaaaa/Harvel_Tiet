/* Source: https://www.codezclub.com/wc-draw-inductive-coil-using-graphics/ */
/*  C Program to draw Inductive Coils using Graphics  */

#include<stdio.h>
#include<conio.h>
#include<graphics.h>

void main() {

   int gd = DETECT, gm;
   initgraph(&gd, &gm, "c:\\tc\\bgi");

   line(100, 200, 150, 200);

   arc(200, 200, 0, 180, 50);
   arc(260, 200, 0, 180, 50);
   arc(230, 200, 180, 360, 20);

   arc(320, 200, 0, 180, 50);
   arc(290, 200, 180, 360, 20);

   arc(380, 200, 0, 180, 50);
   arc(350, 200, 180, 360, 20);

   line(430, 200, 470, 200);

   getch();
   closegraph();
}