#!/usr/bin/env python

def removeDuplicates(array):
	return list(set(array))

array = [1, 1, 2]
newArray = removeDuplicates(array)
print newArray
