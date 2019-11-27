rm -f diff.txt
echo "" && echo "" >> diff.txt
echo "==========================================" && echo "==========================================" >> diff.txt
echo "============== GNL TESTS =================" && echo "============== GNL TESTS =================" >> diff.txt
echo "==========================================" && echo "==========================================" >> diff.txt

echo "BUFFER_SIZE 2 :" && echo "BUFFER_SIZE 2 :" >> diff.txt
rm -f results/result2.txt
bash run2.sh >>results/result2.txt
if diff results/expected_result.txt results/result2.txt >> diff.txt ; then
  echo -e "\033[0;32m[OK]\033[0m" && echo "No Diff" >> diff.txt
else
  echo -e "\033[0;31m[KO]\033[0m"
fi
echo "BUFFER_SIZE 3 :" && echo "BUFFER_SIZE 3 :" >> diff.txt
rm -f results/result3.txt
bash run3.sh >>results/result3.txt 
if diff results/expected_result.txt results/result3.txt >> diff.txt ; then
  echo -e "\033[0;32m[OK]\033[0m" && echo "No Diff" >> diff.txt
else
  echo -e "\033[0;31m[KO]\033[0m"
fi
echo "BUFFER_SIZE 1 :" && echo "BUFFER_SIZE 1 :" >> diff.txt
rm -f results/result1.txt
bash run1.sh >>results/result1.txt 
if diff results/expected_result.txt results/result1.txt >> diff.txt ; then
  echo -e "\033[0;32m[OK]\033[0m" && echo "No Diff" >> diff.txt
else
  echo -e "\033[0;31m[KO]\033[0m"
fi
echo "BUFFER_SIZE 42 :" && echo "BUFFER_SIZE 42 :" >> diff.txt
rm -f results/result42.txt
bash run42.sh >>results/result42.txt
if diff results/expected_result.txt results/result42.txt >> diff.txt ; then
  echo -e "\033[0;32m[OK]\033[0m" && echo "No Diff" >> diff.txt
else
  echo -e "\033[0;31m[KO]\033[0m"
fi
echo "BUFFER_SIZE 9999 :" && echo "BUFFER_SIZE 9999 :" >> diff.txt
rm -f results/result9999.txt
bash run9999.sh >>results/result9999.txt
if diff results/expected_result.txt results/result9999.txt >> diff.txt ; then
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
bash runHUGE.sh >>results/result_huge.txt
if diff results/expected_result_huge.txt results/result_huge.txt >> diff.txt ; then
  echo -e "\033[0;32m[OK]\033[0m" && echo "No Diff" >> diff.txt
else
  echo -e "\033[0;31m[KO]\033[0m"
fi

echo "" && echo "" >> diff.txt
echo "=========================================="
echo "=============== THE END =================="
echo "=========================================="
echo ""
echo -e "\033[0;96mStdin & leaks can be tested with runSTDIN+LEAKS.sh"
echo "Dev/random can be tested with runDEV_RANDOM.sh"
echo "		>> The normal respond is an infinite loop of random characters"
echo ""
echo "If you get KO on a test you can : "
echo " - Run the specific test (ex : bash run0.sh if you have KO on test with buffer 0)"
echo " - Check the 'diff.txt' file"
echo ""