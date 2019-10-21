#include "get_next_line_bonus.h"
#include <fcntl.h>
#include <sys/stat.h>
#include <stdio.h>
#include <stdlib.h>

int main(int argc, char **argv)
{
	int		fd;
	int		i;
	int		j;
	char	**line;
	if (argc != 2)
	{
		printf("Enter a number between 1 and 7\n");
		return (0);
	}
	j = 1;
	if (!(line = malloc(sizeof(char*) * 1)))
	{
		printf("Error in line malloc\n");
		return (0);
	}
	*line = 0;
	if (atoi(argv[1]) == 1)
	{
		printf("==========================================\n");
		printf("========== TEST 1 : The Alphabet =========\n");
		printf("==========================================\n\n");

		if (!(fd = open("file1", O_RDONLY)))
		{
			printf("Error in open\n");
			return (0);
		}
		while ((i = get_next_line(fd, &line[0])) > 0)
		{
			printf("|%s\n", line[0]);
			j++;
		}
		if (i == -1)
			printf ("Error in Fonction - Returned -1\n");
		else if (j != 265)
			printf("Wrong Number Of Lines\n");
	}

	else if (atoi(argv[1]) == 2)
	{
		printf("\n==========================================\n");
		printf("========= TEST 2 : Empty Lines ===========\n");
		printf("==========================================\n\n");

		if (!(fd = open("file2", O_RDONLY)))
		{
			printf("Error in open\n");
			return (0);
		}
		while ((i = get_next_line(fd, &line[0])) > 0)
		{
			printf("%d : %s\n", j, line[0]);
			j++;
		}
		if (i == -1)
			printf ("Error in Fonction - Returned -1\n");
		else if (j != 10)
			printf("Wrong Number Of Lines\n");
	}
	else if (atoi(argv[1]) == 3)
	{
		printf("\n==========================================\n");
		printf("======== TEST 3 : The Empty File =========\n");
		printf("==========================================\n\n");

		if (!(fd = open("file3", O_RDONLY)))
		{
			printf("Error in open\n");
			return (0);
		}
		while ((i = get_next_line(fd, &line[0])) > 0)
		{
			printf("%d : %s\n", j, line[0]);
			j++;
		}
		if (i == -1)
			printf ("Error in Fonction - Returned -1\n");
		else if (j != 2)
			printf("Wrong Number Of Lines\n");
	}

	else if (atoi(argv[1]) == 4)
	{
		printf("\n==========================================\n");
		printf("========= TEST 4 : One New Line ==========\n");
		printf("==========================================\n\n");

		if (!(fd = open("file4", O_RDONLY)))
		{
			printf("Error in open\n");
			return (0);
		}
		while ((i = get_next_line(fd, &line[0])) > 0)
		{
			printf("%d : %s\n", j, line[0]);
			j++;
		}
		if (i == -1)
			printf ("Error in Fonction - Returned -1\n");
		else if (j != 3)
			printf("Wrong Number Of Lines\n");
	}

	else if (atoi(argv[1]) == 5)
	{
		printf("\n==========================================\n");
		printf("========= TEST 5 : Five New Lines ========\n");
		printf("==========================================\n\n");

		if (!(fd = open("file5", O_RDONLY)))
		{
			printf("Error in open\n");
			return (0);
		}
		while ((i = get_next_line(fd, &line[0])) > 0)
		{
			printf("%d : %s\n", j, line[0]);
			j++;
		}
		if (i == -1)
			printf ("Error in Fonction - Returned -1\n");
		else if (j != 6)
			printf("Wrong Number Of Lines\n");
	}
	else if (atoi(argv[1]) == 6)
	{
		printf("\n==========================================\n");
		printf("=========== TEST 6 : Wrong FD ============\n");
		printf("==========================================\n\n");

		if (get_next_line(180, &line[0]) == -1)
			printf("Well Done\n");
		else
			printf("Not Good\n");
	}
	else if (atoi(argv[1]) == 7)
	{
		printf("\n==========================================\n");
		printf("=========== TEST 7 : Congrats ============\n");
		printf("==========================================\n\n");

		if (!(fd = open("file7", O_RDONLY)))
		{
			printf("Error in open\n");
			return (0);
		}
		while ((i = get_next_line(fd, &line[0])) > 0)
		{
			printf("%s\n", line[0]);
			j++;
		}
		if (i == -1)
			printf ("Error in Fonction - Returned -1\n");
		else if (j != 26)
			printf("Wrong Number Of Lines\n");
	}
	return (0);
}
