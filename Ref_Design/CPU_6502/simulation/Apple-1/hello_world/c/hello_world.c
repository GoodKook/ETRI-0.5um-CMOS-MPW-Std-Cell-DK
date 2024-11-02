#include "apple1.h"
#include <stdio.h>
#include <stdlib.h>

int main()
{
	int i = 0;
	char szBuff[] = "Hello World\n";

	printf("%s", szBuff);

	while(1)
	{
		if (szBuff[i])
			putchar(szBuff[i]);
		else
			break;
		i++;
	}

	return 0;
}

