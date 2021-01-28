require_relative './lib/player'
require 'sinatra/base'
require_relative './lib/game'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    $game = Game.new(player_1, player_2)
    redirect to('/play')
  end

  get '/play' do
    @game = $game
    erb(:play)
  end

  get '/attack' do
    @game = $game
    erb(:attack)
  end

  post '/attack' do
    $game.attack($game.victim)
    if $game.game_over?
      redirect '/game-over'
    else
      redirect '/attack'
    end
  end

  get '/game-over' do
    @game = $game
    erb :game_over
  end

  post '/switch_turn' do
    $game.switch_turn
    $game.victims_switching
    redirect to('/play')
  end


  run! if app_file == $0


end
