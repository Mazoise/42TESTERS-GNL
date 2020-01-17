/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   gnl_tester_huge_bonus.c                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mchardin <mchardin@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/10/22 17:41:21 by mchardin          #+#    #+#             */
/*   Updated: 2020/01/17 15:22:49 by mchardin         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <fcntl.h>
#include <sys/stat.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

int				get_next_line(int fd, char **line);

int main()
{
	int		fd;
	int		fd_tab[42];
	int		i;
	int		j;
	int		k;
	char	*line = 0;

	j = 1;
	printf("\n==========================================\n");
	printf("========== TEST 1 : The Alphabet =========\n");
	printf("==========================================\n\n");

	if (!(fd = open("files/huge_alphabet", O_RDONLY)))
	{
		printf("\nError in open\n");
		return (0);
	}
	while ((i = get_next_line(fd, &line)) > 0)
	{
		printf("|%s\n", line);
		free(line);
		j++;
	}
	printf("|%s\n", line);
	free(line);
	close(fd);

	if (i == -1)
		printf ("\nError in Fonction - Returned -1\n");
	else if (j == 1056)
		printf("\nRight number of lines\n");
	else if (j != 1056)
		printf("\nNot Good - Wrong Number Of Lines\n");
	j = 1;
	printf("\n==========================================\n");
	printf("========= TEST 8 : SUPER FAT FILE ========\n");
	printf("==========================================\n\n");

	if (!(fd = open("files/huge_file", O_RDONLY)))
	{
		printf("\nError in open\n");
		return (0);
	}
	while ((i = get_next_line(fd, &line)) > 0)
	{
		printf("|%s\n", line);
		free(line);
		j++;
	}
	printf("|%s\n", line);
	free(line);
	close(fd);

	if (i == -1)
		printf ("\nError in Fonction - Returned -1\n");
	else if (j == 2916)
		printf("\nRight number of lines\n");
	else if (j != 2916)
		printf("\nNot Good - Wrong Number Of Lines\n");
	j = 1;
	printf("\n==========================================\n");
	printf("======== TEST 8 : SUPER LONG LINES =======\n");
	printf("==========================================\n\n");
	k = 0;
	while (k < 42)
	{
		if (!(fd_tab[k] = open(k % 2 ? "files/huge_lines" : "files/huge_lines2", O_RDONLY)))
		{
			printf("\nError in open\n");
			return (0);
		}
        k++;
    }
    int ret;
    while (i < 3)
    {
        k = 0;
        while (k < 42)
        {
            ret = get_next_line(fd_tab[k], &line);
            if (ret == -1)
            {
                printf ("\nError in Fonction - Returned -1\n");
                return (0);
            }
            printf("%s\n", line);
            free(line);
            k++;
        }
        i++;
    }
    while (i < 5)
    {
        k = 0;
        while (k < 42)
        {
            if (k % 2 == 0)
            {
                ret = get_next_line(fd_tab[k], &line);
                if (ret == -1)
                {
                    printf ("\nError in Fonction - Returned -1\n");
                    return (0);
                }
                printf("%s\n", line);
                free(line);
            }
            k++;
        }
        i++;
    }
	while (--k >= 0)
		close(fd_tab[k]);
	return (0);
}
