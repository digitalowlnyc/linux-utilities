#!/usr/bin/env python
from __future__ import print_function

import sys, os, fileinput

if len(sys.argv) < 3:
	print("variable-reader: Missing argument: {file} {variableLabel}")
	sys.exit()

fileTarget = sys.argv[1]
variableLabel = sys.argv[2]

f = open(fileTarget, "r+")

currentVariable = None
captureVariable = False
capturedVariableText = ""

for line in f:
	if line.startswith("VAR START "):
		if currentVariable is not None:
			raise Exception("We cannot start a new variable before ending another")

		parsedVariableName = line.replace("VAR START ", "").strip()
		currentVariable = parsedVariableName
		
		if variableLabel == parsedVariableName:
			captureVariable = True
	elif line.startswith("VAR END "):
		if currentVariable is None:
			raise Exception("We cannot terminate a variable before starting")
		if captureVariable:
			break
	elif currentVariable is not None:
		if captureVariable:
			capturedVariableText += line

if captureVariable:
	print(capturedVariableText)
else:
	sys.exit(1)