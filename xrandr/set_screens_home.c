#include <stdio.h>

int main(void)
{
	
	printf("\n\nsetting up screen with xrandr for \n\n");
		
	printf("\n\n>run xrandr...");
	system("xrandr");
	
	printf("\n\n>setup primary screen...");
	system("xrandr --output LVDS2 --mode 1600x900");
	
	printf("\n\n>setup secondary screen...");
	system("xrandr --output VGA2 --mode 1920x1080");
	system("xrandr --output VGA2 --right-of LVDS2");
	
	printf("\n\nclosing program...");
	
	return 0;
}
