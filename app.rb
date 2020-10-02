# For Sinatra routing. Run with ```ruby app.rb```
require('sinatra')
require('sinatra/reloader')
require('./lib/word')
require('./lib/def')
require('pry')
also_reload('lib/**/*.rb')

get('/words') do
  @words = Word.all 
  erb(:words)
end