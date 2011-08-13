#! /usr/bin/env ruby

# Using names.txt http://projecteuler.net/project/names.txt, 
# a 46K text file containing over five-thousand first names, 
# begin by sorting it into alphabetical order. Then working out 
# the alphabetical value for each name, multiply this value by 
# its alphabetical position in the list to obtain a name score.
# For example, when the list is sorted into alphabetical order, 
# COLIN, which is worth 3 + 15 + 12 + 9 + 14 = 53, is the 938th 
# name in the list. So, COLIN would obtain a score of 938  53 = 49714.
# What is the total of all the name scores in the file?

names = ""
file = File.open("names.txt")
file.each_line do |line|
  names << line
end

#strip quotes and spaces
names.gsub!(%Q|"|, "")
names.gsub!(%Q| |, "")

# put the names in an array
array_of_names = names.split(',')

# the score for a character is it's position in the alphabet
def character_score(character)
  alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
  alphabet.index(character) + 1
end

# the score for a name is the sum of it's character's scores
def score(name)
  name_score = 0
  name.each_char do |character|
    name_score = name_score + character_score(character)
  end
  name_score
end

sorted = array_of_names.sort
total = 0
sorted.each_with_index do |a_name, index|
  this_score = score(a_name)
  total = total + (this_score * (index + 1))
end

puts total
