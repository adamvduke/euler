#! /usr/bin/env ruby

#The prime factors of 13195 are 5, 7, 13 and 29.
#What is the largest prime factor of the number 600851475143 ?

require 'prime'

input = 600851475143
prime_factors = []

def first_prime_factor(number)
  return number if number.prime?
  Prime.each(number) do |prime|
    return prime if number.modulo(prime) == 0
  end
end

while input > 2
  prime_factors << first_prime_factor(input)
  input = input / prime_factors.last
end

puts prime_factors.last