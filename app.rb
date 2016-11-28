require 'sinatra/base'

class DatabaseServer < Sinatra::Base
  set :port, 4000
  enable :sessions
  set :session_secret, 'super secret'


  get '/' do
    'Hello DatabaseServer!'
  end

  get '/set' do
    params.each { |key, value| session[key] = value }
    "Set"
  end

  get '/get' do
    query = params[:key]
    p session[params[:key]]
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
