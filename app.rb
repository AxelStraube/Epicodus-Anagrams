require('sinatra')
require('sinatra/reloader')
require('./lib/anagram')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/words') do
  @answer = params.fetch('target').anagram('possible_anagrams')
  erb(:words)
end
