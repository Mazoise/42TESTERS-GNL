#!/bin/bash

gcc -Wall -Werror -Wextra srcs/gnl_tester_bonus.c ../get_next_line_bonus.c ../get_next_line_utils_bonus.c -I ../ -D BUFFER_SIZE=9999 && ./a.out
