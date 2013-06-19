#! /usr/bin/env ruby
#
# http://projecteuler.net/index.php?section=problems&id=1
# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9.
# The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.

range = 1..(999)
puts range.select{|value| value % 5 == 0 || value % 3 == 0}.reduce(:+)
