require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/create' do
    erb :create_puppy
  end

  post '/display' do
    erb :display_puppy
  end

end
