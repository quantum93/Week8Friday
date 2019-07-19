require 'pry'

class Anagram
  def initialize(word1, word2)
    @word1 = word1
    @word2 = word2
    @message = ""
    @char = []
  end

  def comparison()
    first_word_array = @word1.downcase.split(//)
    second_word_array = @word2.downcase.split(//)
    vowel_array = ["a", "i", "e", "o", "u"]

    if first_word_array.any? {|vowel| vowel_array.include?(vowel)}
      first_word_array.each() do |char|
        if second_word_array.include?(char)
          @message = "These words are anagrams."
        else
          @message = "These words have no letter matches and are antigrams."
        end
      end

    else
      @message = "You need to input actual words!"
    end

    @message
  end
end

#{@char.push(char)}
#
# first_word_array.each() do |char|
#   if vowel_array.include(char)
#     return @message = "You need to input actual words!"

# if first_word_array.include?(vowel_array) == false
#   binding.pry
#   @message = "You need to input actual words!"
# else
# end
