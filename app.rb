require 'sinatra/base'

class DatabaseServer < Sinatra::Base
  set :port, 4000
  enable :sessions

  get '/' do
    'Hello DatabaseServer!'
  end

  get '/set' do
    session[:somekey] = params[:somekey]
    "Set you vaule by visiting: 'http://localhost:4000/set?key=[inset_somevalue_here]'"
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
