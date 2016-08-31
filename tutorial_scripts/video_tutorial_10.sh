#!/usr/bin/env bash

touch test
ls -l

chmod 777 test # gives all permissions to owner, group and others.
ls -l

uname -a # shows all about machine
# output:
# Linux joker 3.16.0-38-generic #52~14.04.1-Ubuntu SMP Fri May 8 09:43:57 UTC 2015 x86_64 x86_64 x86_64 GNU/Linux
