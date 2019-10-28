rm -f diff.txt
echo "" && echo "" >> diff.txt
echo "==========================================" && echo "==========================================" >> diff.txt
echo "============== GNL TESTS =================" && echo "============== GNL TESTS =================" >> diff.txt
echo "==========================================" && echo "==========================================" >> diff.txt

echo "BUFFER_SIZE 2 :" && echo "BUFFER_SIZE 2 :" >> diff.txt
rm -f results/result2.txt
gcc -Wall -Werror -Wextra srcs/gnl_tester.c ../get_next_line.c ../get_next_line_utils.c -I ../ -D BUFFER_SIZE=2 && ./a.out >>results/result2.txt
if diff results/expected_result.txt results/result2.txt >> diff.txt ; then
  echo -e "\033[0;32m[OK]\033[0m" && echo "No Diff" >> diff.txt
else
  echo -e "\033[0;31m[KO]\033[0m"
fi
echo "BUFFER_SIZE 3 :" && echo "BUFFER_SIZE 3 :" >> diff.txt
rm -f results/result3.txt
gcc -Wall -Werror -Wextra srcs/gnl_tester.c ../get_next_line.c ../get_next_line_utils.c -I ../ -D BUFFER_SIZE=3 && ./a.out >>results/result3.txt 
if diff results/expected_result.txt results/result3.txt >> diff.txt ; then
  echo -e "\033[0;32m[OK]\033[0m" && echo "No Diff" >> diff.txt
else
  echo -e "\033[0;31m[KO]\033[0m"
fi
echo "BUFFER_SIZE 1 :" && echo "BUFFER_SIZE 1 :" >> diff.txt
rm -f results/result1.txt
gcc -Wall -Werror -Wextra srcs/gnl_tester.c ../get_next_line.c ../get_next_line_utils.c -I ../ -D BUFFER_SIZE=1 && ./a.out >>results/result1.txt 
if diff results/expected_result.txt results/result1.txt >> diff.txt ; then
  echo -e "\033[0;32m[OK]\033[0m" && echo "No Diff" >> diff.txt
else
  echo -e "\033[0;31m[KO]\033[0m"
fi
echo "BUFFER_SIZE 42 :" && echo "BUFFER_SIZE 42 :" >> diff.txt
rm -f results/result42.txt
gcc -Wall -Werror -Wextra srcs/gnl_tester.c ../get_next_line.c ../get_next_line_utils.c -I ../ -D BUFFER_SIZE=42 && ./a.out >>results/result42.txt
if diff results/expected_result.txt results/result42.txt >> diff.txt ; then
  echo -e "\033[0;32m[OK]\033[0m" && echo "No Diff" >> diff.txt
else
  echo -e "\033[0;31m[KO]\033[0m"
fi
echo "BUFFER_SIZE 9999 :" && echo "BUFFER_SIZE 9999 :" >> diff.txt
rm -f results/result9999.txt
gcc -Wall -Werror -Wextra srcs/gnl_tester.c ../get_next_line.c ../get_next_line_utils.c -I ../ -D BUFFER_SIZE=9999 && ./a.out >>results/result9999.txt
if diff results/expected_result.txt results/result9999.txt >> diff.txt ; then
  echo -e "\033[0;32m[OK]\033[0m" && echo "No Diff" >> diff.txt
else
  echo -e "\033[0;31m[KO]\033[0m"
fi
echo "BUFFER_SIZE 0 :" && echo "BUFFER_SIZE 0 :" >> diff.txt
echo new >> results/result0.txt
rm results/result0.txt
gcc -Wall -Werror -Wextra srcs/gnl_tester.c ../get_next_line.c ../get_next_line_utils.c -I ../ -D BUFFER_SIZE=0 && ./a.out >>results/result0.txt 
if diff results/expected_result0.txt results/result0.txt >> diff.txt ; then
  echo -e "\033[0;32m[OK]\033[0m" && echo "No Diff" >> diff.txt
else
  echo -e "\033[0;31m[KO]\033[0m"
fi
echo "" && echo "" >> diff.txt
echo "==========================================" && echo "==========================================" >> diff.txt
echo "=========== GNL BONUS TESTS ==============" && echo "=========== GNL BONUS TESTS ==============" >> diff.txt
echo "==========================================" && echo "==========================================" >> diff.txt

echo "BUFFER_SIZE 2 :" && echo "BUFFER_SIZE 2 :" >> diff.txt
rm -f results/result2b.txt
gcc -Wall -Werror -Wextra srcs/gnl_tester_bonus.c ../get_next_line_bonus.c ../get_next_line_utils_bonus.c -I ../ -D BUFFER_SIZE=2 && ./a.out >>results/result2b.txt 
if diff results/expected_result.txt results/result2b.txt >> diff.txt ; then
  echo -e "\033[0;32m[OK]\033[0m" && echo "No Diff" >> diff.txt
else
  echo -e "\033[0;31m[KO]\033[0m"
fi
echo "BUFFER_SIZE 3 :" && echo "BUFFER_SIZE 3 :" >> diff.txt
rm -f results/result3b.txt
gcc -Wall -Werror -Wextra srcs/gnl_tester_bonus.c ../get_next_line_bonus.c ../get_next_line_utils_bonus.c -I ../ -D BUFFER_SIZE=3 && ./a.out >>results/result3b.txt
if diff results/expected_result.txt results/result3b.txt >> diff.txt ; then
  echo -e "\033[0;32m[OK]\033[0m" && echo "No Diff" >> diff.txt
else
  echo -e "\033[0;31m[KO]\033[0m"
fi
echo "BUFFER_SIZE 1 :" && echo "BUFFER_SIZE 1 :" >> diff.txt
rm -f results/result1b.txt
gcc -Wall -Werror -Wextra srcs/gnl_tester_bonus.c ../get_next_line_bonus.c ../get_next_line_utils_bonus.c -I ../ -D BUFFER_SIZE=1 && ./a.out >>results/result1b.txt 
if diff results/expected_result.txt results/result1b.txt >> diff.txt ; then
  echo -e "\033[0;32m[OK]\033[0m" && echo "No Diff" >> diff.txt
else
  echo -e "\033[0;31m[KO]\033[0m"
fi
echo "BUFFER_SIZE 42 :" && echo "BUFFER_SIZE 42 :" >> diff.txt
rm -f results/result42b.txt
gcc -Wall -Werror -Wextra srcs/gnl_tester_bonus.c ../get_next_line_bonus.c ../get_next_line_utils_bonus.c -I ../ -D BUFFER_SIZE=42 && ./a.out >>results/result42b.txt
if diff results/expected_result.txt results/result42b.txt >> diff.txt ; then
  echo -e "\033[0;32m[OK]\033[0m" && echo "No Diff" >> diff.txt
else
  echo -e "\033[0;31m[KO]\033[0m"
fi
echo "BUFFER_SIZE 9999 :" && echo "BUFFER_SIZE 9999 :" >> diff.txt
rm -f results/result9999b.txt
gcc -Wall -Werror -Wextra srcs/gnl_tester_bonus.c ../get_next_line_bonus.c ../get_next_line_utils_bonus.c -I ../ -D BUFFER_SIZE=9999 && ./a.out >>results/result9999b.txt
if diff results/expected_result.txt results/result9999b.txt >> diff.txt ; then
  echo -e "\033[0;32m[OK]\033[0m" && echo "No Diff" >> diff.txt
else
  echo -e "\033[0;31m[KO]\033[0m"
fi
echo "BUFFER_SIZE 0 :" && echo "BUFFER_SIZE 0 :" >> diff.txt
rm -f results/result0b.txt
gcc -Wall -Werror -Wextra srcs/gnl_tester_bonus.c ../get_next_line_bonus.c ../get_next_line_utils_bonus.c -I ../ -D BUFFER_SIZE=0 && ./a.out >>results/result0b.txt 
if diff results/expected_result0b.txt results/result0b.txt >> diff.txt ; then
  echo -e "\033[0;32m[OK]\033[0m" && echo "No Diff" >> diff.txt
else
  echo -e "\033[0;31m[KO]\033[0m"
fi
echo "" && echo "" >> diff.txt
echo "==========================================" && echo "==========================================" >> diff.txt
echo "=============== HUGE TESTS ===============" && echo "============== HUGE TESTS ================" >> diff.txt
echo "==========================================" && echo "==========================================" >> diff.txt

echo "GNL :" && echo "GNL :" >> diff.txt
rm -f results/result_huge.txt
gcc -Wall -Werror -Wextra srcs/gnl_tester_huge.c ../get_next_line.c ../get_next_line_utils.c -I ../ -D BUFFER_SIZE=9999 && ./a.out >>results/result_huge.txt
if diff results/expected_result_huge.txt results/result_huge.txt >> diff.txt ; then
  echo -e "\033[0;32m[OK]\033[0m" && echo "No Diff" >> diff.txt
else
  echo -e "\033[0;31m[KO]\033[0m"
fi
echo "GNL BONUS :" && echo "GNL BONUS :" >> diff.txt
rm -f results/result_huge_b.txt
gcc -Wall -Werror -Wextra srcs/gnl_tester_huge.c ../get_next_line_bonus.c ../get_next_line_utils_bonus.c -I ../ -D BUFFER_SIZE=9999 && ./a.out >>results/result_huge_b.txt
if diff results/expected_result_huge.txt results/result_huge_b.txt >> diff.txt ; then
  echo -e "\033[0;32m[OK]\033[0m" && echo "No Diff" >> diff.txt
else
  echo -e "\033[0;31m[KO]\033[0m"
fi

echo "" && echo "" >> diff.txt
echo "=========================================="
echo "=============== THE END =================="
echo "=========================================="
echo ""
echo -e "\033[0;96mStdin & leaks can be tested with runSTDIN+LEAKS.sh and bonusrunSTDIN+LEAKS.sh"
echo "Dev/random can be tested with runDEV_RANDOM.sh and bonusrunDEV_RANDOM.sh"
echo "		>> The normal respond is an infinite loop of random characters"
echo ""
echo "If you get KO on a test you can : "
echo " - Run the specific test (ex : bash bonusrun0.sh if you have KO on bonus test with buffer 0)"
echo " - Check the 'diff.txt' file"
echo ""