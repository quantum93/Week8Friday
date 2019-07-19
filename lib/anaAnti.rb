require 'pry'

class Anagram
  def initialize(word1, word2)
    @word1 = word1
    @word2 = word2
    @message = ""
  end

  def comparison()
    first_word_array = @word1.split(//)
    second_word_array = @word2.split(//)
    vowel_array = ["a", "i", "e", "o", "u"]
    first_word_array.each() do |char|
      if ! vowel_array.include?(char) 
        @message = "You need to input actual words!"
      elsif second_word_array.include?(char)
        @message = "These words are anagrams."
      else
        @message = "These words have no letter matches and are antigrams."
      end
    end
    @message
  end
end

# if vowel_array.exclude?(char)
#   @message = "You need to input actual words!"
