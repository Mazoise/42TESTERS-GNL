/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   gnl_tester_devrandom_bonus.c                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mchardin <mchardin@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/10/22 17:41:13 by mchardin          #+#    #+#             */
/*   Updated: 2019/10/27 19:46:29 by mchardin         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "get_next_line_bonus.h"
#include <fcntl.h>
#include <sys/stat.h>
#include <stdio.h>
#include <stdlib.h>

int main()
{
	int		fd;
	int		j;
	char	*line = 0;

	j = 1;
	if (!(fd = open("/dev/random", O_RDONLY)))
	{
		printf("Error in open\n");
		return (0);
	}
	while (get_next_line(fd, &line) > 0)
	{
		printf("%s\n", line);
		free(line);
		j++;
	}
}
