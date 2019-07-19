#!/usr/bin/ruby
require './lib/anaAnti.rb'

p "Please enter a number of cents: $0."

money = gets.chomp.to_i
change = Coin.new(money)
puts change.converter()
