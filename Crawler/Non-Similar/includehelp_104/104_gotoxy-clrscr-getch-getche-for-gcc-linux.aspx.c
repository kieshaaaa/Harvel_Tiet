/* Source: https://www.includehelp.com/c-programs/gotoxy-clrscr-getch-getche-for-gcc-linux.aspx */
// gotoxy() function definition

void gotoxy(int x, int y)
{
    printf("%c[%d;%df", 0x1B, y, x);
}
