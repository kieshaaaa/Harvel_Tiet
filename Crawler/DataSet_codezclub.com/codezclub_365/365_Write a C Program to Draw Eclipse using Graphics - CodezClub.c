/* Source: https://www.codezclub.com/c-draw-eclipse-using-graphics/ */
/*  C Program to Draw Eclipses using Graphics  */

#include<graphics.h>
#include<conio.h>

main() {
        int gd = DETECT, gm;

        initgraph(&gd, &gm, "C:\\TC\\BGI");

        ellipse(100, 100, 0, 360, 50, 25);

        getch();
        closegraph();
        
        return 0;
}