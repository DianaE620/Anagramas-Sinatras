# Este archivo sirve para correr código que te permita 
# rellenar tu base de datos con información. 



def canonical(word)
 w = word.split("").sort_by { |word| word.capitalize  }
 w.join.downcase
end

File.foreach('words') do |word|
  palabra = word.chomp
  canonical = canonical(palabra)

  # puts "Palabra: #{palabra} y Canonical: #{canonical}"
  Word.create(word: palabra, canonical: canonical )
  # p word.chomp

end

# Word.create(word:"lala", canonical:"l")