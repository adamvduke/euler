#! /usr/bin/env ruby
#
# http://projecteuler.net/index.php?section=problems&id=1
# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9.
# The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.

limit = 1000
range = 0..(limit -1)
answer = 0

range.each do |value|
  if value % 5 == 0 || value % 3 == 0
    answer += value
  end
end

puts answer
