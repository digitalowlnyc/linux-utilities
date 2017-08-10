#!/usr/bin/env python
from __future__ import print_function

import sys, os, fileinput

if len(sys.argv) < 3:
	print("append-once: Missing argument: {file} {search} {replace}")
	sys.exit()

fileTarget = sys.argv[1]
appendText = sys.argv[2]

lineIndex = 0

lineAlreadyExists = False
f = open(fileTarget, "r+")

for line in f:
	lineIndex += 1

	if appendText in line:
		print("append-once: Text is already in file on line ", lineIndex)
		lineAlreadyExists = True
		break
		
if not lineAlreadyExists:
	print(appendText, file=f)
	print("append-once: Appended line to file %s" % (fileTarget))

