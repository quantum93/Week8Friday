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
    first_word_array.each() do |char|
      if second_word_array.include?(char)
        @message = "These words are anagrams"
      else
        @message = "These words have no letter matches and are antigrams."
      end
    end
    @message
  end
end
