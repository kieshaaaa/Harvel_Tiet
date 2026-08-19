/* Source: https://www.codezclub.com/c-draw-rectangle-perform-operations/ */
/*  C Program to draw rectangle and perform operations in Graphics  */

#include <stdio.h>
#include <graphics.h>
#include <stdlib.h>
#include <math.h>
 
void draw (int r[][2])
{
    int i;
    setlinestyle (DOTTED_LINE, 0, 1);
    line (320, 0, 320, 480);
    line (0, 240, 640, 240);
 
    setlinestyle (SOLID_LINE, 0, 1);
    line (320+r[0][0], 240-r[0][1], 320+r[1][0], 240-r[1][1]);
    line (320+r[0][0], 240-r[0][1], 320+r[3][0], 240-r[3][1]);
    line (320+r[1][0], 240-r[1][1], 320+r[2][0], 240-r[2][1]);
    line (320+r[2][0], 240-r[2][1], 320+r[3][0], 240-r[3][1]);
}
 
void reset (int r[][2])
{
    int i;
    int val[4][2] = {
                        { 0, 0 },{ 100, 0 },{ 100, 50 },{ 0, 50 }
                    };
        for (i=0; i<4; i++)
    {
        r[i][0] = val[i][0];
        r[i][1] = val[i][1];
    }
}
 
void rotate (int r[][2], int angle)
{
    int i;
    double ang_rad = (angle * M_PI) / 180;
    for (i=0; i<4; i++)
    {
        double xnew, ynew;
        xnew = r[i][0] * cos (ang_rad) - r[i][1] * sin (ang_rad);
        ynew = r[i][0] * sin (ang_rad) + r[i][1] * cos (ang_rad);
        r[i][0] = xnew;
        r[i][1] = ynew;
    }
}
 
void shear (int r[][2], int sx, int sy)
{
    int i;
    for (i=0; i<4; i++)
    {
        int xnew, ynew;
        xnew = r[i][0] + r[i][1] * sx;
        ynew = r[i][1] + r[i][0] * sy;
        r[i][0] = xnew;
        r[i][1] = ynew;
    }
}
 
void translate (int r[][2], int dx, int dy)
{
    int i;
    for (i=0; i<4; i++)
    {
        r[i][0] += dx;
        r[i][1] += dy;
    }
}
 
void ini()
{
        int gd=DETECT,gm;
        initgraph(&gd,&gm,"..//bgi");
}
void main()
{
 
        int r[4][2],angle,dx,dy,x, y,choice;
 
        do
        {
                clrscr();
                printf("1.Rotation about the origin followed by translation\n");
                printf("2.Rotation about an arbitrary point\n");
                printf("3.Shear about the origin\n");
                printf("4.Exit\n\n");
                printf("Enter your choice: ");
                scanf("%d",&choice);
                switch(choice)
                {
                        case 1: printf("Enter the rotation angle: ");
                                scanf("%d", &angle);
                                printf("Enter the x- and y-coordinates for translation: ");
                                scanf("%d%d",&dx,&dy);
                                ini();
                                cleardevice();
                                reset(r);
                                draw(r);getch();
                                rotate(r, angle);
                                cleardevice();
                                draw(r);getch();
                                translate(r,dx,dy);
                                cleardevice();
                                draw(r);getch();
                                closegraph();
                                break;
                        case 2: printf("Enter the rotation angle: ");
                                scanf("%d",&angle);
                                printf("Enter the x- and y-coordinates of the point: ");
                                scanf("%d%d",&x,&y);
                                ini();
                                cleardevice();
                                reset(r);
                                translate(r,x,y);
                                draw(r);
                                putpixel(320+x,240-y,WHITE);
                                getch();
                                translate(r,-x,-y);
                                draw(r);getch();
                                rotate(r,angle);
                                draw(r);getch();
                                translate(r,x,y);
                                cleardevice();
                                draw(r);
                                putpixel(320+x,240-y,WHITE);
                                getch();
                                closegraph();
                                break;
                        case 3: printf("Enter the x- and y-shears: ");
                                scanf("%d%d",&x,&y);
                                ini();
                                reset(r);
                                draw(r);getch();
                                shear(r, x, y);
                                cleardevice();
                                draw (r);getch();
                                closegraph();
                                break;
                        case 4: closegraph();
                }
        }while(choice!=4);
}