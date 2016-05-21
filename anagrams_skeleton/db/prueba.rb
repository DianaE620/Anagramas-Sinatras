# require 'csv'

# def canonical(word)
#  w = word.split("").sort_by { |word| word.capitalize  }
#  w.join.downcase
# end

# CSV.foreach('words.csv') do |word|
#   palabra = word[0]
#   canonical = canonical(word[0])

#   # puts "Palabra: #{palabra} y Canonical: #{canonical}"
# end