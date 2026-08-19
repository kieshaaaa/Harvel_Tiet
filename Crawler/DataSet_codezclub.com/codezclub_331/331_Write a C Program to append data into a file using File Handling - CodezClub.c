/* Source: https://www.codezclub.com/c-program-append-data-file/ */
/*  C Program to append data into a file using File Handling  */

#include<stdio.h>
#include<conio.h>

struct invent_record
{
char   name[10];
int    number;
float  price;
int    quantity;
};

int main()
{
    struct invent_record item;
    char  filename[10];
    int   response;
    FILE  *fp;
    long  n,n2;
    void append (struct invent_record *x, FILE *y);

    printf("Type filename:");
    scanf("%s", filename);

    fp = fopen(filename, "a+");
    do
    {
    append(&item, fp);
    printf("\nItem %s appended.\n",item.name);
    printf("\nDo you want to add another item (1 for YES /0 for NO)?");
    scanf("%d", &response);
    }  while (response == 1);

    fseek(fp,0,SEEK_END); /*Set the file pointer at the end of file*/
    n=ftell(fp);      /* Position of last character  */
    fclose(fp);

    return 0;

}
void append(struct invent_record *product, FILE *ptr)
{
    printf("\nItem name:");
    scanf("%s", product->name);
    printf("Item number:");
    scanf("%d", &product->number);
    printf("Item price:");
    scanf("%f", &product->price);
    printf("Quantity:");
    scanf("%d", &product->quantity);
    fprintf(ptr, "%s %d %.2f %d",
    product->name,
    product->number,
    product->price,
    product->quantity);
}