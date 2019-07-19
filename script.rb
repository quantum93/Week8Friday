#!/usr/bin/ruby
require './lib/anaAnti.rb'

p "Please enter two words to compare."

word1 = gets.chomp.to_s
word2 = gets.chomp.to_s
words = Anagram.new(word1, word2)
puts words.comparison()
