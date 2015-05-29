#!/usr/bin/env python

""" Rotate an array of n elements to the right by K steps
	  for example, with n = 7 and k = 3 the array
    [1,2,3,4,5,6,7] is totated to [5, 6, 7, 1, 2, 3, 4]
"""
def rotate(nums, k):
	k = k % len(nums)
	reverse(nums, 0, len(nums) - 1)
	reverse(nums, 0, k - 1)
	reverse(nums, k, len(nums) - 1)

def reverse(nums, start, end):
	while(start < end):
		nums[start], nums[end] = nums[end], nums[start]
		start += 1
		end -= 1

testNumbers = [1,2,3,4,5,6,7]
testNumber2 = [1,2,3]
testNumber3 = [1, 2]

rotate(testNumbers, 3)
print testNumbers

rotate(testNumber2, 1)
print testNumber2

rotate(testNumber3, 1)
print testNumber3
