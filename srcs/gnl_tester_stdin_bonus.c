/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   gnl_tester_stdin_bonus.c                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mchardin <mchardin@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/10/22 17:41:13 by mchardin          #+#    #+#             */
/*   Updated: 2019/11/13 13:04:37 by mchardin         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "get_next_line.h"
#include <fcntl.h>
#include <sys/stat.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

int main()
{
	int		j;
	char	*line = 0;

	j = 1;
	while (get_next_line(0, &line) > 0)
	{
		printf("%s\n", line);
		free(line);
		j++;
	}
	free(line);
}
