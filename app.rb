require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

enable :sessions

# set :session_secret, 'super secret'

get '/' do
  erb :index
end

post '/names' do 

  # $player_1 = Player.new(params[:player_1_name])
  # $player_2 = Player.new(params[:player_2_name]) 
  player_1 = Player.new(params[:player_1_name])
  player_2 = Player.new(params[:player_2_name])
  $game = Game.new(player_1, player_2)
  redirect '/play'
end

get '/play' do 
  # @player_1_name = $player_1
  # @player_2_name = $player_2
  @game = $game
  erb :play 
end

get '/attack' do
  # @player_1_name = $player_1
  # @player_2_name = $player_2
  # Game.new.game_attack(@player_2_name)
  @game = $game
  @game.attack(@game.player_2)
  # $game.switch_turns
  erb :attack
end

post '/switch-turns' do 
  $game.switch_turns
  redirect('/play')
end 

run! if app_file == $0
end
