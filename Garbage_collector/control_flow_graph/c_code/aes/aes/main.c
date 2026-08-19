#include <stdio.h>
#include "aes.h"
#include "aes.c"


int main_result;

int main ()
{
      main_result = 0;
      aes_main ();
      printf ("\n%d\n", main_result);
      return main_result;
    }
