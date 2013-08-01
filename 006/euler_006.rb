range = (1..100)
squares = range.map{|i| i*i}
sum_of_squares = squares.reduce(&:+)

sum = range.reduce(&:+)

square_of_sum = (sum * sum)

puts square_of_sum - sum_of_squares