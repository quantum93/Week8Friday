require 'pry'

class Anagram
  def initialize(word1, word2)
    @word1 = word1
    @word2 = word2
    @message = ""
    @char = []
  end

  def comparison()
    first_word_array = @word1.delete('^A-Za-z').downcase.split(//)
    second_word_array = @word2.delete('^A-Za-z').downcase.split(//)
    vowel_array = ["a", "i", "e", "o", "u"]
    vowel_in_first = first_word_array.any? do |vowel|
      vowel_array.include?(vowel)
    end
    vowel_in_second = second_word_array.any? do |vowel|
      vowel_array.include?(vowel)
    end
    # vowel_in_first = first_word_array.any? {|vowel| vowel_array.include?(vowel)}
    # vowel_in_second = second_word_array.any? {|vowel| vowel_array.include?(vowel)}
    message1 = "You need to input actual words!"
    message2 = "These words are anagrams."
    message3 = "These words have no letter matches and are antigrams."

    if vowel_in_first & vowel_in_second == false
      return @message = message1
    end
      first_word_array.each do |char|
        if second_word_array.include?(char)
           @message = message2
         else
           @message = message3
         end
       end
    @message
  end
end
