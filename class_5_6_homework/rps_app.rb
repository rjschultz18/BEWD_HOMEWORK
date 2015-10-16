require 'sinatra'

# Renders the html file views/index.erb when you go to http://localhost:4567/
get '/' do
  @name = params[:name]
  erb :index
end

get '/mychoice' do
  @weapons = ["rock", "paper", "scissors"]
  @choice = @weapons [rand(3)]

  erb :rps
end
