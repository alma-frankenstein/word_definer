# For Sinatra routing. Run with ```ruby app.rb```
require('sinatra')
require('sinatra/reloader')
require('./lib/word')
require('./lib/def')
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


# get('/stages/:id') do   # pass an argument into the url
#   @stage = Stage.find(params[:id].to_i)
#   erb(:stage)
# end

# get('/stages/:id/edit') do
#   @stage = Stage.find(params[:id].to_i)
#   erb(:stage_edit)
# end

# patch('/stages/:id') do
#   @stage = Stage.find(params[:id].to_i)
#   @stage.update(params[:name])
#   @stages = Stage.all
#   erb(:stages)
# end

# delete('/stages/:id') do
#   @stage = Stage.find(params[:id].to_i)
#   @stage.delete()
#   @stages = Stage.all
#   erb(:stages)
# end

# get('/stages/:id/artists/:artist_id') do  # shows information about the artist
#   @artist = Artist.find(params[:artist_id].to_i())
#   erb(:artist)
# end

# post('/stages/:id/artists') do  # write artist to specific stage
#    @stage = Stage.find(params[:id].to_i())
#    artist = Artist.new(params[:artist_name], @stage.id, nil)
#    artist.save()
#    erb(:stage)
# end

# # Edit an artist and then route back to the stage view.
# patch('/stages/:id/artists/:artist_id') do
#   @stage = Stage.find(params[:id].to_i())
#   artist = Artist.find(params[:artist_id].to_i())
#   artist.update(params[:name], @stage.id)
#   erb(:stage)
# end

# # Delete an artist and then route back to the stage view.
# delete('/stages/:id/artists/:artist_id') do
#   artist = Artist.find(params[:artist_id].to_i())
#   artist.delete
#   @stage = Stage.find(params[:id].to_i())
#   erb(:stage)
# end