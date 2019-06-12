#!/bin/bash
set -e

rm -rf report
mkdir -p report

cd ..
echo uv_run_tests_a
echo $(date) > hisi/report/uv_run_tests_a.log
./hisi/build/uv_run_tests_a 2>> hisi/report/uv_run_tests_a.log

echo uv_run_tests
echo $(date) > hisi/report/uv_run_tests.log
./hisi/build/uv_run_tests 2>> hisi/report/uv_run_tests.log
