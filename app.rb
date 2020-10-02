# For Sinatra routing. Run with ```ruby app.rb```
require('sinatra')
require('sinatra/reloader')
require('./lib/word')
require('./lib/defin')
require('pry')
also_reload('lib/**/*.rb')

get('/') do
  @words = Word.all 
  erb(:words)
end

get('/words') do
  @words = Word.all 
  erb(:words)
end

get('/words/new') do
  erb(:new_word)
end

post('/words') do
  name = params[:word_name]
  newWord = Word.new(name, nil)
  newWord.save()
  @words = Word.all()
  erb(:words)
end

get('/words/:id') do  
  @word = Word.find(params[:id].to_i)
  erb(:word)
end

get('/words/:id/edit') do
  @word = Word.find(params[:id].to_i)
  erb(:word_edit)
end

patch('/words/:id') do
  @word = Word.find(params[:id].to_i)
  @word.update(params[:name])
  @words = Word.all
  erb(:words)
end

delete('/words/:id') do
  @word = Word.find(params[:id].to_i)
  @word.delete()
  @words = Word.all
  erb(:words)
end

get('/words/:id/defins/:defin_id') do  
  @defin = Defin.find(params[:defin_id].to_i())
  erb(:defin)
end

delete('/words/:id/defins/:defin_id') do
  defin = Defin.find(params[:defin_id].to_i())
  defin.delete
  @word = Word.find(params[:id].to_i())
  erb(:word)
end

post('/words/:id/defins') do
  @word = Word.find(params[:id].to_i())
  defin = Defin.new(params[:defin_name], @word.id, nil)
  defin.save()
  erb(:word)
end

patch('/words/:id/defins/:defin_id') do
  @word = Word.find(params[:id].to_i())
  defin = Defin.find(params[:defin_id].to_i())
  defin.update(params[:name], @word.id)
  erb(:word)
end