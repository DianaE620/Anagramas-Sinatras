get '/' do
  erb :index
end

get '/:new_word' do
	@new_word = params[:new_word]
  canonical = Word.canonical(@new_word)

  @palabras = Word.where(canonical: canonical)

  erb :word
end

post '/new_word' do
  redirect to ("/#{params[:user_word]}")
end

 # @palabras = []

  # Word.all.each do |word|
  #   if are_anagrams?(word.word, @new_word)
  #     @palabras << word.word
  #   end
  # end