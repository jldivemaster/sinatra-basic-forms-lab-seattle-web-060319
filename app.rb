require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/create' do
    erb :create_puppy
  end

  post '/display' do
    puppy = Puppy.new(params[:name], params[:breed], params[:age])
    @name = puppy.name
    @breed = puppy.breed
    @age = puppy.age
    erb :display_puppy
  end

end
