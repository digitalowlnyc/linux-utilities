#!/usr/bin/env python
from __future__ import print_function

import sys, os, fileinput

if len(sys.argv) < 3:
	print("Missing argument: {file} {search} {replace}")
	sys.exit()

fileTarget = sys.argv[1]
replaceText = sys.argv[2]
withText = sys.argv[3]

count = 0
for line in fileinput.FileInput(fileTarget, inplace=1):
    if replaceText in line:
         count += 1
         line = line.replace(replaceText, withText)
    print(line, end='') # print to file

print("Replaced %s lines in file %s" % (count, fileTarget))
