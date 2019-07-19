require 'rspec'
require 'anaAnti'
require 'pry'

describe('anagram logic for two words') do
  # it('gives "These words are anagrams." for ["r", "u", "b", "y"]["b", "u", "r", "y"]') do
  #   words = Anagram.new('ruby', 'bury')
  #   expect(words.comparison()).to(eq(["r", "u", "b", "y"]["b", "u", "r", "y"]))
  # end
  it('gives "These words are anagrams." for ruby, bury') do
    words = Anagram.new('ruby', 'bury')
    expect(words.comparison()).to(eq("These words are anagrams."))
  end
  it('gives "These words are anagrams." for Tea, Eat') do
    words = Anagram.new('Tea', 'Eat')
    expect(words.comparison()).to(eq("These words are anagrams."))
  end
  it('gives "These words are anagrams." for cccc, bury') do
    words = Anagram.new('cccc', 'ruby')
    expect(words.comparison()).to(eq("You need to input actual words!"))
  end
  it('gives "These words are anagrams." for hi, bye') do
    words = Anagram.new('hi', 'bye')
    expect(words.comparison()).to(eq("These words have no letter matches and are antigrams."))
  end
end
