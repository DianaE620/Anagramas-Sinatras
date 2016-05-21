def canonical(word)
 w = word.split("").sort_by { |word| word.capitalize  }
 w.join.downcase
end

p canonical("MOra")
p canonical("roma")

def are_anagrams?(word1, word2)
  canonical(word1) == canonical(word2)
end

p are_anagrams?("amor", "MOra")

def anagrams(word, diccionario)

  diccionario.select { |w| are_anagrams?(word, w) }
  
end

p anagrams("amor", ["ROma", "omar", "arma", "pena", "Armo"])
p anagrams("adios", ["diosa", "desonra", "odias", "saludo"])
p anagrams("roma", ["ROma", "omar", "arma", "pena", "Armo"])

puts "----------------"
a = "roma"
p a.split(//).sort.join