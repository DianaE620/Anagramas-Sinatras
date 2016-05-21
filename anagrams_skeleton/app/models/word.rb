class Word < ActiveRecord::Base
  # Remember to create a migration!

  def self.canonical(word)
    w = word.split("").sort_by { |word| word.capitalize  }
    w.join.downcase
  end

  def self.are_anagrams?(word1, word2)
    canonical(word1) == canonical(word2)
  end
  
end
