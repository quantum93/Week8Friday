require 'pry'

class Anagram
  def initialize(phrase1, phrase2)
    @phrase1 = phrase1
    @phrase2 = phrase2
    @message = ""
    @char = []
  end

  def comparison()
    first_phrase_array = @phrase1.delete('^A-Za-z').downcase.split(//)
    second_phrase_array = @phrase2.delete('^A-Za-z').downcase.split(//)
    vowel_array = ["a", "i", "e", "o", "u"]
    message1 = "You need to input actual words!"
    message2 = "These words are anagrams."
    message3 = "These words have no letter matches and are antigrams."

    if (first_phrase_array.any? {|vowel| vowel_array.include?(vowel)}) & (second_phrase_array.any? {|vowel| vowel_array.include?(vowel)}) == false then return @message = message1 end
      first_phrase_array.each { |char| second_phrase_array.include?(char) ? @message = message2 : @message = message3 }
    @message
  end
end

# class Anagram
#   def initialize(word1, word2)
#     @word1 = word1
#     @word2 = word2
#     @message = ""
#     @char = []
#   end
#
#   def comparison()
#     first_word_array = @word1.delete('^A-Za-z').downcase.split(//)
#     second_word_array = @word2.delete('^A-Za-z').downcase.split(//)
#     vowel_array = ["a", "i", "e", "o", "u"]
#     message1 = "You need to input actual words!"
#     message2 = "These words are anagrams."
#     message3 = "These words have no letter matches and are antigrams."
#
#     if (first_word_array.any? {|vowel| vowel_array.include?(vowel)}) & (second_word_array.any? {|vowel| vowel_array.include?(vowel)}) == false then return @message = message1 end
#       first_word_array.each { |char| second_word_array.include?(char) ? @message = message2 : @message = message3 }
#     @message
#   end
# end

# def comparison()
#   first_word_array = @word1.delete('^A-Za-z').downcase.split(//)
#   second_word_array = @word2.delete('^A-Za-z').downcase.split(//)
#   vowel_array = ["a", "i", "e", "o", "u"]
#   message1 = "You need to input actual words!"
#   message2 = "These words are anagrams."
#   message3 = "These words have no letter matches and are antigrams."
#
#   if (first_word_array.any? {|vowel| vowel_array.include?(vowel)}) & (second_word_array.any? {|vowel| vowel_array.include?(vowel)}) == false then return @message = message1 end
#   # return keyword in here ignore following lines and end up action of function.
#   first_word_array.each { |char| second_word_array.include?(char) ? @message = message2 : @message = message3 }
#   @message
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
