require 'pry'

class Anagram
  def initialize(word1, word2)
    @word1 = word1
    @word2 = word2
  end

  def comparison()
    first_word_array = @word1.split(//)
    second_word_array = @word2.split(//)
    print first_word_array, second_word_array
    # @message.join(" ")
  end
end
