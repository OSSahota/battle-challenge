require 'sinatra/base'

class Battle < Sinatra::Base

  # app code goes here...

  # Only required during first few setup challenges to test the app was running correctly.
  get '/' do
    # 'Hello Battle!'
    # 'Testing infrastructure working!'

    # US#1-Entering players ch
    erb(:index)
  end

  post '/names' do
    p params
    @player_1_name = params[:player_1_name]
    @player_2_name = params[:player_2_name]
    # "#{@player_1_name} vs. #{@player_2_name}"
    erb(:play)
  end

  # start the server if ruby file is executed directly
  # $0 is the executed file
  # __FILE__ / app_file is the current file
  run! if app_file == $0

end
