require 'rspec'
require 'anaAnti'
require 'pry'

describe('anaAnti') do
  it('gives one penny for one cent') do
    change = Coin.new(1)
    expect(change.converter()).to(eq("1 pennies"))
  end
end
