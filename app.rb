require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/game'

class Battle < Sinatra::Base

  get '/' do
  	erb(:index)
  end

  post '/names' do
  	player_1 = Player.new(params[:player_1])
    player_2 = Player.new(params[:player_2])
    $game = Game.new(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb(:play)
  end

  get '/attack' do
    @game = $game
    @current_turn = @game.current_turn
    @opposite_player = @game.opposite_player
    @game.attack(@opposite_player)
    if @game.game_over?
      redirect '/game_over'
    else
      erb(:attack)
    end
  end

  get '/game_over' do
    @losing_player = $game.losing_player.name
    @winning_player = $game.winning_player.name
    erb :game_over
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
