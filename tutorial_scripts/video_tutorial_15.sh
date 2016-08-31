#!/usr/bin/env bash

man cat

banner my name is mustafa celik # prints fancy text
banner "my name is mustafa celik" # prints fancy text in one line

compress -v test # compress the file
zcat -v test.Z  # prints compressed file readable.

uncompress -v test.Z # uncompress the compresed file.