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
		if (BUFFER_SIZE == 0 && i == -1)
			printf ("Well Done - Returned -1\n");
		else if (BUFFER_SIZE == 0 && i != -1)
			printf ("Not Good - Did not return -1 for BUFFER_SIZE=0\n");
		else if (i == -1)
			printf ("Error in Fonction - Returned -1\n");
		
		else if (j == 1057)
			printf("Well Done");
		else if (j != 1057)
			printf("Not Good - Wrong Number Of Lines\n");
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
		if (BUFFER_SIZE == 0 && i == -1)
			printf ("Well Done - Returned -1\n");
		else if (BUFFER_SIZE == 0 && i != -1)
			printf ("Not Good - Did not return -1 for BUFFER_SIZE=0\n");
		else if (i == -1)
			printf ("Error in Fonction - Returned -1\n");
		else if (j == 10)
			printf("Well Done");
		else if (j != 10)
			printf("Not Good - Wrong Number Of Lines\n");
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
		if (BUFFER_SIZE == 0 && i == -1)
			printf ("Well Done - Returned -1\n");
		else if (BUFFER_SIZE == 0 && i != -1)
			printf ("Not Good - Did not return -1 for BUFFER_SIZE=0\n");
		else if (i == -1)
			printf ("Error in Fonction - Returned -1\n");
		else if (j == 2)
			printf("Well Done");
		else if (j != 2)
			printf("Not Good - Wrong Number Of Lines\n");
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
		if (BUFFER_SIZE == 0 && i == -1)
			printf ("Well Done - Returned -1\n");
		else if (BUFFER_SIZE == 0 && i != -1)
			printf ("Not Good - Did not return -1 for BUFFER_SIZE=0\n");
		else if (i == -1)
			printf ("Error in Fonction - Returned -1\n");
		else if (j == 3)
			printf("Well Done");
		else if (j != 3)
			printf("Not Good - Wrong Number Of Lines\n");
	}

	else if (atoi(argv[1]) == 5)
	{
		printf("\n==========================================\n");
		printf("========= TEST 5 : Four New Lines ========\n");
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
		if (BUFFER_SIZE == 0 && i == -1)
			printf ("Well Done - Returned -1\n");
		else if (BUFFER_SIZE == 0 && i != -1)
			printf ("Not Good - Did not return -1 for BUFFER_SIZE=0\n");
		else if (i == -1)
			printf ("Error in Fonction - Returned -1\n");
		else if (j == 6)
			printf("Well Done");
		else if (j != 6)
			printf("Not Good - Wrong Number Of Lines\n");
	}
	else if (atoi(argv[1]) == 6)
	{
		printf("\n==========================================\n");
		printf("========= TEST 6 : Wrong Input ===========\n");
		printf("==========================================\n\n");

		if (!(fd = open("file5", O_RDONLY)))
		{
			printf("Error in open\n");
			return (0);
		}
		if (get_next_line(180, &line[0]) == -1)
			printf("Well Done, you return -1 if no FD\n");
		else
			printf("Not Good, you don't return -1 if no FD\n");
		if (get_next_line(fd, 0) == -1)
			printf("Well Done, you return -1 if no line\n");
		else
			printf("Not Good, you don't return -1 if no line\n");
	}
	else if (atoi(argv[1]) == 7)
	{
		printf("\n==========================================\n");
		printf("=========== TEST 7 : Congrats ============\n");
		printf("==========================================\n\n");

		int fd2;
		int j = 1;

		if (!(fd = open("file8", O_RDONLY)))
		{
			printf("Error in open\n");
			return (0);
		}
		if (!(fd2 = open("file9", O_RDONLY)))
		{
			printf("Error in open\n");
			return (0);
		}
		while (j < 8)
		{
			if ((i = get_next_line(fd, &line[0])) > 0)
			printf("%s\n", line[0]);
			j++;
		}
		while (j < 13)
		{
			if ((i = get_next_line(fd2, &line[0])) > 0)
				printf("%s\n", line[0]);
			j++;
		}
		if ((i = get_next_line(fd, &line[0])) > 0)
			printf("%s\n", line[0]);
		j++;
		if ((i = get_next_line(fd2, &line[0])) > 0)
			printf("%s\n", line[0]);
		j++;
		if ((i = get_next_line(fd2, &line[0])) > 0)
			printf("%s\n", line[0]);
		j++;
		if ((i = get_next_line(fd, &line[0])) > 0)
			printf("%s\n", line[0]);
		j++;
		if ((i = get_next_line(fd2, &line[0])) > 0)
			printf("%s\n", line[0]);
		j++;
		if ((i = get_next_line(fd, &line[0])) > 0)
			printf("%s\n", line[0]);
		j++;
		while (j < 24)
		{
			if ((i = get_next_line(fd2, &line[0])) > 0)
				printf("%s\n", line[0]);
			j++;
		}
		while (j < 26)
		{
			if ((i = get_next_line(fd, &line[0])) > 0)
				printf("%s\n", line[0]);
			j++;
		}
		while (( i = get_next_line(fd2, &line[0])) > 0)
			j++;
		while ((i = get_next_line(fd, &line[0])) > 0)
			j++;
		if (BUFFER_SIZE == 0 && i == -1)
			printf ("Well Done - Returned -1\n");
		else if (BUFFER_SIZE == 0 && i != -1)
			printf ("Not Good - Did not return -1 for BUFFER_SIZE=0\n");
		else if (i == -1)
			printf ("Error in Fonction - Returned -1\n");
		else if (j == 26)
			printf("Well Done");
		else if (j != 26)
			printf("Not Good - Wrong Number Of Lines\n");
	}
	return (0);
}
