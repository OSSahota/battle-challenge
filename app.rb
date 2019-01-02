require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  # enable :sessions

  get '/' do
    # US#1-Entering players ch
    erb(:index)
  end

  post '/names' do
    p params
    # Entering players ch.
    # @player_1_name = params[:player_1_name]
    # @player_2_name = params[:player_2_name]
    # Experimenting - this is one way of returning expected content output
    # but not good practice, should render a view e.g. erb(:play).
    # "#{@player_1_name} vs. #{@player_2_name}"

    # Refactoring US#1 via PrG design pattern.
    # Storing name values held in params hash to the session.
    # session[:player_1_name] = params[:player_1_name]
    # session[:player_2_name] = params[:player_2_name]

    # Extracting Logic to Model layer - storing params values to global vars
    # instead of storing to session.
    # $player_1 = Player.new(params[:player_1_name])
    # $player_2 = Player.new(params[:player_2_name])
    # p "player_1: #{$player_1}"
    # p "player_2: #{$player_2}"

    # Skinny controllers ch.
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    $game = Game.new(player_1, player_2)
    p player_1
    p player_2
    p $game
    # Redirecting rendering of view to get '/play' route.
    # erb(:play)
    redirect '/play'
  end

  # Route created as part of refactoring US#1 via PrG design pattern.
  get '/play' do
    # Extracting values from session to instance variables.
    # @player_1_name = session[:player_1_name]
    # @player_2_name = session[:player_2_name]

    # Extracting values from global vars to instance vars.
    # @player_1_name = $player_1.name
    # @player_2_name = $player_2.name
    # p "player_1_name: #{@player_1_name}"
    # p "player_2_name: #{@player_2_name}"

    # Implementing hit points ch.
    # Replaced during Skinny Controllers ch.
    # @player_1 = $player_1
    # @player_2 = $player_2

    # Skinny controllers ch.
    @game = $game

    erb(:play)
  end

  get '/attack' do
    # @player_1_name = session[:player_1_name]
    # @player_2_name = session[:player_2_name]
    # @player_1_name = $player_1.name
    # @player_2_name = $player_2.name

    # # Implementing hit points ch.
    # Replaced during Skinny Controllers ch.
    # @player_1 = $player_1
    # @player_2 = $player_2
    # # @player_1.attack(@player_2)
    # Game.new.attack(@player_2)

    # Skinny controllers ch.
    @game = $game
    @game.attack(@game.player_2)
    # Extracting to post '/switch-turns' as part of US#7.
    # @game.switch_turns
    erb(:attack)
  end

  post '/switch-turns' do
    @game = $game
    @game.switch_turns
    redirect '/play'
  end

  # start the server if ruby file is executed directly
  # $0 is the executed file
  # __FILE__ / app_file is the current file
  run! if app_file == $0

end
