
require 'sinatra'
require 'sinatra/reloader'
also_reload('lib/**/*.rb')
require './lib/sphinx_riddles'

get('/') do
  erb(:index)
end

post('/output') do
  riddle1 = params["riddle1"]
  riddle2 = params["riddle2"]
  riddle3 = params["riddle3"]
  riddle = Riddles.new(riddle1, riddle2, riddle3)
  @test = riddle.result
  erb(:output)
end
