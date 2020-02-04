#!/bin/bash

gcc -Wall -Werror -Wextra srcs/gnl_tester_huge.c ../get_next_line.c ../get_next_line_utils.c -I ../ -D BUFFER_SIZE=9999 && ./a.out