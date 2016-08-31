#!/usr/bin/env bash

umask # shows the number that is used to create defaul file permission.
# output: 0022
# which means:
# - file permissions will be     = 666-022 = 644 (owner->read,write group/other->read)
# - directory permission will be = 777-022 = 755 (owner->r,w,e group/other->r,e)
