require ('sinatra')
require ('sinatra/reloader')
also_reload ('lib/*/**.rb')
require ('./lib/dictionary')
require ('./lib/word')
require ('./lib/definition')

get ('/') do
  @words=Word.all()
  erb(:form)
end

post ('/submit') do
  definition = Definition.new(params.fetch('definition'))
  definition.save()
  word = Word.new(params.fetch('word'),params.fetch('language'))
  word.save()
  term = Term.new(word,definition)
  term.save()
  redirect('/')
end

get('/terms/')do

  # term = Term.search(params.fetch())
# puts "this is job="
# puts job
# @term = term.word()
# @language = term.word()
# @definition = term.word()

erb(:dictionary)
end
