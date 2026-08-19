/* Source: https://www.includehelp.com/c-programs/read-marks-and-print-percentage-and-division.aspx */
#include<stdio.h>
int main()
{
	int science; 
	int math;
	int english;
	
	int total;
	float per;

	science = 50;
	math = 90;
	english = 40;
	//you can take input from user instead of these values

	//calculating total
	total= science + math + english;
	
	//calculating percentage
	per= (float) total*100/300;

	printf("Total Marks: %d\n",total);
	printf("Percentage is: %.2f\n",per);

	//checking division and printing
	if(per>=60)
	{
		printf("First division\n");
	}
	else if(per>=50)
	{
		printf("Second division");
	}
	else if(per>=40)
	{
		printf("Third division");
	}
	else
	{
		printf("Fail\n");
	}
	
	return 0;
}
