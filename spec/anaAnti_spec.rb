require 'rspec'
require 'anaAnti'
require 'pry'

describe('anagram logic for two words') do
  # it('gives "These words are anagrams." for ["r", "u", "b", "y"]["b", "u", "r", "y"]') do
  #   words = Anagram.new('ruby', 'bury')
  #   expect(words.comparison()).to(eq(["r", "u", "b", "y"]["b", "u", "r", "y"]))
  # end
  it('gives These words are anagrams for ruby, bury') do
    words = Anagram.new('ruby', 'bury')
    expect(words.comparison()).to(eq("These words are anagrams."))
  end
  it('gives These words are anagrams for rubxxy, bury') do
    words = Anagram.new('ruby', 'bury')
    expect(words.comparison()).to(eq("These words are anagrams."))
  end
  it('gives These words are anagrams for Tea, Eat') do
    words = Anagram.new('Tea', 'Eat')
    expect(words.comparison()).to(eq("These words are anagrams."))
  end
  it('gives These words are anagrams for cccc, bury') do
    words = Anagram.new('cccc', 'ruby')
    expect(words.comparison()).to(eq("You need to input actual words!"))
  end
  it('gives These words are anagrams for bcdf, ruby') do
    words = Anagram.new('bcdf', 'ruby')
    expect(words.comparison()).to(eq("You need to input actual words!"))
  end
  it('gives These words are anagrams for ruby, bcdf') do
    words = Anagram.new('ruby', 'bcdf')
    expect(words.comparison()).to(eq("You need to input actual words!"))
  end
  it('gives These words are anagrams for hi, bye') do
    words = Anagram.new('hi', 'bye')
    expect(words.comparison()).to(eq("These words have no letter matches and are antigrams."))
  end
  it('gives These words are anagrams for hi?, b ye ') do
    words = Anagram.new('hi?', 'b ye ')
    expect(words.comparison()).to(eq("These words have no letter matches and are antigrams."))
  end
  it('gives These words are anagrams for ruby&, @bury') do
    words = Anagram.new('ruby&', '@bury ')
    expect(words.comparison()).to(eq("These words are anagrams."))
  end
  it('gives These words are anagrams for button, puppy') do
    words = Anagram.new("button", "puppy")
    expect(words.comparison()).to(eq("These words are neithor anagrams nor antigrams, but the real words."))
  end
end
