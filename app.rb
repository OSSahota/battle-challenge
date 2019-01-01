require 'sinatra/base'

class Battle < Sinatra::Base
  enable :sessions

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
    session[:player_1_name] = params[:player_1_name]
    session[:player_2_name] = params[:player_2_name]
    # Redirecting rendering of view to get '/play' route.
    # erb(:play)
    redirect '/play'
  end

  # Route created as part of refactoring US#1 via PrG design pattern.
  get '/play' do
    # Extracting values from session to instance variables.
    @player_1_name = session[:player_1_name]
    @player_2_name = session[:player_2_name]
    erb(:play)
  end

  get '/attack' do
    @player_1_name = session[:player_1_name]
    @player_2_name = session[:player_2_name]
    erb(:attack)
  end

  # start the server if ruby file is executed directly
  # $0 is the executed file
  # __FILE__ / app_file is the current file
  run! if app_file == $0

end
