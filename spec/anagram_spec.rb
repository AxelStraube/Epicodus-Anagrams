require('rspec')
require('anagram')

describe('String#anagram') do
  it("will process a word as an object and take in an array of words as an argument and prints out the anagrams") do
    expect(("cat").anagram(["tac", "dog", "bird"])).to eq('Your anagrams are: tac')
  end
end
