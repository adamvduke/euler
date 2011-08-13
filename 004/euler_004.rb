#! /usr/bin/env ruby

# A palindromic number reads the same both ways.
# The largest palindrome made from the product of two
# 2-digit numbers is 9009 = 91  99.
#Find the largest palindrome made from the product of two 3-digit numbers.

def palindromic?(value)
  value.to_s.reverse == value.to_s
end

largest = 0

(999).downto(100) do |outer_value|
  (999).downto(100) do |inner_value|
    product = outer_value * inner_value
    if palindromic?(product)
      if product > largest
        largest = product
      end
    end
  end
end

puts largest
