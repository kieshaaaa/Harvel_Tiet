/* Source: https://www.codezclub.com/c-implement-bar-graph-graphics/ */
/*  C program to implement Bar Graph in Graphics  */

#include<graphics.h>
#include<stdio.h>
#include<math.h>
#include<dos.h>
#include<conio.h>
 
void main()
{
        int i,n,a,b;
        void drawrect(int ,int);
 
        int graphdriver = DETECT, graphmode;
        initgraph(&graphdriver, &graphmode, "..\\bgi");
 
        setcolor(CYAN);
        printf("ENTER THE NUMBER OF DATA ELEMENTS\n");
        scanf("%d",&n);
 
        line(1,1,1,479);// Y axis
        line(1,479,640,479);// X axis
 
        for(i=1;i<=25;i++)
        {
                outtextxy(40*i,470,"|");
                outtextxy(1,479-40*i,"-");
        }
 
        printf("ENTER X AND Y CO-ORDINATES \n");
        for(i=1;i<=n;i++)
        {
                scanf("%d %d",&a,&b);
                b--;
                drawrect(a*40,b*40);
        }
        getch();
        closegraph();
}
 
void drawrect(int a,int b)
{
         setfillstyle(SOLID_FILL,CYAN);
         bar3d(a,478,a,430-b,5,1);
}