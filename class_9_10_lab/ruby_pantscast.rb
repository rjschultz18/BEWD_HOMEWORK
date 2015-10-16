require 'sinatra'
require 'httparty'

get '/' do
  erb :home
end

post '/pantscast' do
zip = params["zipcode"]
ziphip = HTTParty.get ("http://api.zippopotam.us/us/#{zip}")
  lat = ziphip['places'][0]['latitude']
  lng = ziphip['places'][0]['longitude']

forecast = HTTParty.get ("https://api.forecast.io/forecast/b6ec16c6daf2eaa642175d3a5d80d219/#{lat},#{lng}")
  @current = forecast['currently']['temperature']

  erb :pantscast
end
