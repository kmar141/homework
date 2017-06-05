require 'sinatra'
require 'sinatra/contrib/all'
require 'pry-byebug'
require 'json'

require_relative './models/rps'

get "/game/:player1/:player2" do
  game = Game.new(params[:player1], params[:player2])
  @result = game.play_game()
  erb(:result)
end

get "/" do
  erb(:home)
end

get "/about_rps" do
  erb(:about_rps)
end