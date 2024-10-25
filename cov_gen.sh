mkdir -pv lcov-report
lcov --gcov-tool llvm-gcov.sh  --capture --directory . --output-file lcov-report/coverage.info
lcov  --remove lcov-report/coverage.info $(pwd)'/objs/autotest.c' \
     --output-file lcov-report/coverage.info
genhtml lcov-report/coverage.info --output-directory lcov-report
