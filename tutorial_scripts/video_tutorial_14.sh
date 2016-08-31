#!/usr/bin/env bash

cat > test
# this is a test file.

dd if=test of=test1 conv=ucase # converts all lowercase character to uppercase with in a new file.
cat test
cat test1

dd if=test of=test2 conv=ebcdic # conerts encoding to european based encoding.
cat test
cat test2
