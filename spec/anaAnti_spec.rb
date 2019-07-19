require 'rspec'
require 'anaAnti'
require 'pry'

describe('anagram logic for two words') do
  it('gives "These words are anagrams."" for "ruby, bury"') do
    words = Anagram.new(1)
    expect(words.comparison(ruby, bury)).to(eq("These words are anagrams."))
  end
end
