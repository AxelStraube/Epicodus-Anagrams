class String
  define_method(:anagram) do |words|
    target = self
    anagrams = []

    target_letters = self.split("").sort()
    target_letters
#binding.pry    
    words.each() do |word|
      test_word = word.split("").sort()
      if target_letters.==(test_word)
        anagrams.push(word)
      end
    end
    "Your anagrams are: " + anagrams.join(" ")
  end
end
