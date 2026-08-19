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
 maxCols = (*maxRows) * 3;
 puts("\n--------------------------------------------\n");
int row = 1;
 {
int col = 1;
 {
 if (col == (*maxRows) + 1 - row || col == (*maxRows) - 1 + row || col == (*maxRows) * 2 + 2 - row || col == (*maxRows) * 2 + row)
;
 else
;
 }
;
 }
;
 return 0;
}
