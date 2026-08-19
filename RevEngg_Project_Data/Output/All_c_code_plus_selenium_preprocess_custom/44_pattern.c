#include <stdlib.h>
#include <stdio.h>

int entry_point(int (*maxRows))
{
int maxCols;
;
 if ((*maxRows) < 1)
 {
;
 exit(0);
 }
 maxCols = (*maxRows) + 1;
 puts("\n--------------------------------------------\n");
int vary = 1;
int row = 1;
 {
int col = 1;
 {
 if (col == 1 || col == vary || col == maxCols + 1 - vary || col == maxCols)
;
 else
;
 }
 row < maxCols / 2 ? vary++ : vary--;
 if ((*maxRows) % 2 == 0 && row == maxCols / 2)
 vary++;
;
 }
;
 return 0;
}
