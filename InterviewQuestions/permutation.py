#!/usr/bin/env python

def permuate(result, inputs):
	if len(inputs) == 0:
		print result
	else:
		for i in range(len(inputs)):
			remaining = inputs[0 : i] + inputs[i + 1 :]
			permuate(result + str(inputs[i]), remaining)

inputs = [1,2,3]
permuate("", inputs)
