require 'date'

start_date = Date.new(1901,1,1)
end_date = Date.new(2000,12,31)

dates = start_date.upto(end_date).to_a

days = dates.map do |date|
  date if date.sunday? && date.day == 1
end

puts days.compact.count