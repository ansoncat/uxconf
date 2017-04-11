#!/usr/bin/env bash

# A simple user CSV generator for the redmein_user_import plugin.
# Copyright (c) 2011 Anson Chen <ansoncat@gmail.com>
#
# This program is free software. It comes without any warranty, to
# the extent permitted by applicable law. You can redistribute it
# and/or modify it under the terms of the Do What The Fuck You Want
# To Public License, Version 2, as published by Sam Hocevar. See
# http://sam.zoy.org/wtfpl/COPYING for more details.

echo '"login","password","lastname","firstname","email","admin"'
# Check home directory currently
for N in `ls /home | tr -d / `; do
  printf '"%s","xxxx","-","%s","%s@foo.bar","False"\n' $N $N $N
done
