#!/usr/bin/env bash

cat > test_file # creates file with text
# test_file content is entered here...

cat < test_file # prints the content
cat test_file # prints the content

cat > test_file2 # creates file with text
# test_file2 content is entered here..

cat test_file test_file2 > merged_test_files # merge two files

cat < merged_test_files # shows both test files' content

