require 'sinatra/base'

class Battle < Sinatra::Base

  # app code goes here...
  get '/' do
    'Hello Battle!'
  end

  # start the server if ruby file is executed directly
  # $0 is the executed file
  # __FILE__ / app_file is the current file
  run! if app_file == $0

end
