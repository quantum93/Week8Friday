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
    message1 = "You need to input actual words!"
    message2 = "These words are anagrams."
    message3 = "These words have no letter matches and are antigrams."

    if (first_word_array.any? {|vowel| vowel_array.include?(vowel)}) & (second_word_array.any? {|vowel| vowel_array.include?(vowel)}) == false
      return @message = message1 # return keyword in here ignore following lines and end up action of function.
    end

    first_word_array.each { |char| second_word_array.include?(char) ? @message = message2 : @message = message3 }
    @message
  end
end

# first_word_array.each() do |char|
#   if second_word_array.include?(char) then @message = message2 else @message = message3 end
# end

#   def comparison()
#     first_word_array = @word1.delete('^A-Za-z').downcase.split(//)
#     second_word_array = @word2.delete('^A-Za-z').downcase.split(//)
#     vowel_array = ["a", "i", "e", "o", "u"]
#     if (first_word_array.any? {|vowel| vowel_array.include?(vowel)}) & (second_word_array.any? {|vowel| vowel_array.include?(vowel)})
#       first_word_array.each() do |char|
#         if second_word_array.include?(char)
#           @message = "These words are anagrams."
#         else
#           @message = "These words have no letter matches and are antigrams."
#         end
#       end
#     else
#       @message = "You need to input actual words!"
#     end
#     @message
#   end
# end
