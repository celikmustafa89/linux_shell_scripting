#!/usr/bin/env bash

touch old
cp old ~/Music/new_file # copy files with new name

ln old new # creates hard links
# any changes from old file, also exists in new one (HARD link)

ln -s  old old_soft # creates soft  link
