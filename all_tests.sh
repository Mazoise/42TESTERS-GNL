echo new >> diff.txt
rm diff.txt

echo "=========================================="
echo "============== GNL TESTS ================="
echo "=========================================="

echo "BUFFER_SIZE 2 :"
echo new >> results/result2.txt
rm results/result2.txt
gcc -Wall -Werror -Wextra gnl_tester.c ../get_next_line.c ../get_next_line_utils.c -I ../ -D BUFFER_SIZE=2 && ./a.out 2 >>results/result2.txt && ./a.out 3 >>results/result2.txt && ./a.out 4 >>results/result2.txt && ./a.out 5 >>results/result2.txt && ./a.out 6 >>results/result2.txt && ./a.out 7 >>results/result2.txt
if diff results/expected_result.txt results/result2.txt >> diff.txt ; then
  echo -e "\033[0;32m[OK]\033[0m"
else
  echo -e "\033[0;31m[KO]\033[0m"
fi
echo "BUFFER_SIZE 3 :"
echo new >> results/result3.txt
rm results/result3.txt
gcc -Wall -Werror -Wextra gnl_tester.c ../get_next_line.c ../get_next_line_utils.c -I ../ -D BUFFER_SIZE=3 && ./a.out 2 >>results/result3.txt && ./a.out 3 >>results/result3.txt && ./a.out 4 >>results/result3.txt && ./a.out 5 >>results/result3.txt && ./a.out 6 >>results/result3.txt && ./a.out 7 >>results/result3.txt
if diff results/expected_result.txt results/result3.txt >> diff.txt ; then
  echo -e "\033[0;32m[OK]\033[0m"
else
  echo -e "\033[0;31m[KO]\033[0m"
fi
echo "BUFFER_SIZE 1 :"
echo new >> results/result1.txt
rm results/result1.txt
gcc -Wall -Werror -Wextra gnl_tester.c ../get_next_line.c ../get_next_line_utils.c -I ../ -D BUFFER_SIZE=1 && ./a.out 2 >>results/result1.txt && ./a.out 3 >>results/result1.txt && ./a.out 4 >>results/result1.txt && ./a.out 5 >>results/result1.txt && ./a.out 6 >>results/result1.txt && ./a.out 7 >>results/result1.txt
if diff results/expected_result.txt results/result1.txt >> diff.txt ; then
  echo -e "\033[0;32m[OK]\033[0m"
else
  echo -e "\033[0;31m[KO]\033[0m"
fi
echo "BUFFER_SIZE 9999 :"
echo new >> results/result9999.txt
rm results/result9999.txt
gcc -Wall -Werror -Wextra gnl_tester.c ../get_next_line.c ../get_next_line_utils.c -I ../ -D BUFFER_SIZE=9999 && ./a.out 1 >>results/result9999.txt
if diff results/expected_result9999.txt results/result9999.txt >> diff.txt ; then
  echo -e "\033[0;32m[OK]\033[0m"
else
  echo -e "\033[0;31m[KO]\033[0m"
fi
echo "BUFFER_SIZE 0 :"
echo new >> results/result0.txt
rm results/result0.txt
gcc -Wall -Werror -Wextra gnl_tester.c ../get_next_line.c ../get_next_line_utils.c -I ../ -D BUFFER_SIZE=0 && ./a.out 1 >>results/result0.txt && ./a.out 2 >>results/result0.txt && ./a.out 3 >>results/result0.txt && ./a.out 4 >>results/result0.txt && ./a.out 5 >>results/result0.txt && ./a.out 6 >>results/result0.txt && ./a.out 7 >>results/result0.txt
if diff results/expected_result0.txt results/result0.txt >> diff.txt ; then
  echo -e "\033[0;32m[OK]\033[0m"
else
  echo -e "\033[0;31m[KO]\033[0m"
fi

echo "=========================================="
echo "=========== GNL BONUS TESTS =============="
echo "=========================================="

echo "BUFFER_SIZE 2 :"
echo new >> results/result2b.txt
rm results/result2b.txt
gcc -Wall -Werror -Wextra gnl_tester_bonus.c ../get_next_line_bonus.c ../get_next_line_utils_bonus.c -I ../ -D BUFFER_SIZE=2 && ./a.out 2 >>results/result2b.txt && ./a.out 3 >>results/result2b.txt && ./a.out 4 >>results/result2b.txt && ./a.out 5 >>results/result2b.txt && ./a.out 6 >>results/result2b.txt && ./a.out 7 >>results/result2b.txt
if diff results/expected_result.txt results/result2b.txt >> diff.txt ; then
  echo -e "\033[0;32m[OK]\033[0m"
else
  echo -e "\033[0;31m[KO]\033[0m"
fi
echo "BUFFER_SIZE 3 :"
echo new >> results/result3b.txt
rm results/result3b.txt
gcc -Wall -Werror -Wextra gnl_tester_bonus.c ../get_next_line_bonus.c ../get_next_line_utils_bonus.c -I ../ -D BUFFER_SIZE=3 && ./a.out 2 >>results/result3b.txt && ./a.out 3 >>results/result3b.txt && ./a.out 4 >>results/result3b.txt && ./a.out 5 >>results/result3b.txt && ./a.out 6 >>results/result3b.txt && ./a.out 7 >>results/result3b.txt
if diff results/expected_result.txt results/result3b.txt >> diff.txt ; then
  echo -e "\033[0;32m[OK]\033[0m"
else
  echo -e "\033[0;31m[KO]\033[0m"
fi
echo "BUFFER_SIZE 1 :"
echo new >> results/result1b.txt
rm results/result1b.txt
gcc -Wall -Werror -Wextra gnl_tester_bonus.c ../get_next_line_bonus.c ../get_next_line_utils_bonus.c -I ../ -D BUFFER_SIZE=1 && ./a.out 2 >>results/result1b.txt && ./a.out 3 >>results/result1b.txt && ./a.out 4 >>results/result1b.txt && ./a.out 5 >>results/result1b.txt && ./a.out 6 >>results/result1b.txt && ./a.out 7 >>results/result1b.txt
if diff results/expected_result.txt results/result1b.txt >> diff.txt ; then
  echo -e "\033[0;32m[OK]\033[0m"
else
  echo -e "\033[0;31m[KO]\033[0m"
fi
echo "BUFFER_SIZE 9999 :"
echo new >> results/result9999b.txt
rm results/result9999b.txt
gcc -Wall -Werror -Wextra gnl_tester_bonus.c ../get_next_line_bonus.c ../get_next_line_utils_bonus.c -I ../ -D BUFFER_SIZE=9999 && ./a.out 1 >>results/result9999b.txt
if diff results/expected_result9999.txt results/result9999b.txt >> diff.txt ; then
  echo -e "\033[0;32m[OK]\033[0m"
else
  echo -e "\033[0;31m[KO]\033[0m"
fi
echo "BUFFER_SIZE 0 :"
echo new >> results/result0b.txt
rm results/result0b.txt
gcc -Wall -Werror -Wextra gnl_tester_bonus.c ../get_next_line_bonus.c ../get_next_line_utils_bonus.c -I ../ -D BUFFER_SIZE=0 && ./a.out 1 >>results/result0b.txt && ./a.out 2 >>results/result0b.txt && ./a.out 3 >>results/result0b.txt && ./a.out 4 >>results/result0b.txt && ./a.out 5 >>results/result0b.txt && ./a.out 6 >>results/result0b.txt && ./a.out 7 >>results/result0b.txt
if diff results/expected_result0b.txt results/result0b.txt >> diff.txt ; then
  echo -e "\033[0;32m[OK]\033[0m"
else
  echo -e "\033[0;31m[KO]\033[0m"
fi